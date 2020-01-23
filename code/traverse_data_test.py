import os
import zipfile
import datetime
import json
import pandas as pd

DM_TRAVERSE = True

datadir = '/data/Twitter dataset/'

badzip = ["geoTwitter18-02-16/geoTwitter18-02-16_16:05", "geoTwitter18-06-26/geoTwitter18-06-26_16:05",
          "geoTwitter18-05-25/geoTwitter18-05-25_19:05", "geoTwitter18-06-14/geoTwitter18-06-14_13:05",
          "geoTwitter17-12-18/geoTwitter17-12-18_15:05", "geoTwitter18-01-22/geoTwitter18-01-22_12:05",
          "geoTwitter18-05-26/geoTwitter18-05-26_20:05"]
badfile = [".gd"]


def traverse(project_path, hours):

    hours = ["{}:".format(h) for h in hours]

    for filename in os.listdir(datadir):
        if filename not in badfile:
            try:
                with zipfile.ZipFile(datadir+filename, 'r') as archive:

                    day_dir = project_path + "/data/" + filename.strip(".zip")
                    if not os.path.exists(day_dir):
                        os.makedirs(day_dir)
                    elif len(os.listdir(day_dir)) == len(hours):
                        print('skipping {}'.format(filename.strip(".zip")))
                        continue

                    for subfilename in archive.namelist():

                        csv_path = project_path + "data/{}.csv".format(subfilename)
                        if os.path.exists(csv_path):
                            continue

                        with archive.open(subfilename) as f:
                            if subfilename[-1] != "/" and (subfilename[-5:-2] in hours) and (subfilename not in badzip):
                                print("starting {}".format(subfilename))

                                tweets = []

                                for line in f:
                                    try:
                                        main_dict = json.loads(line)
                                    except json.decoder.JSONDecodeError:
                                        continue

                                    if main_dict \
                                            and isinstance(main_dict, dict) \
                                            and 'place' in main_dict \
                                            and isinstance(main_dict['place'], dict) \
                                            and main_dict['place']['country_code'] == 'US' \
                                            and main_dict['place']['place_type']=='city':

                                        # print(main_dict)
                                        tweet_dict = {
                                            "text": main_dict['text'],
                                            "date": main_dict["created_at"],
                                            # "verified": main_dict['user']['verified'],
                                            "city": main_dict['place']['name'],
                                            # "country": main_dict['place']['country_code'],
                                            "state": main_dict['place']["full_name"][-2:]
                                        }

                                        tweets.append(tweet_dict)

                                subfile_df = pd.DataFrame(tweets)
                                subfile_df.to_csv(csv_path)
                                print("done with {}".format(csv_path))

            except zipfile.BadZipFile:
                print('skipping')

        print("successfully completed")


if __name__ == "__main__":
    # For DM
    dm_project_path = "/home/ltam/new_dm/"
    dm_hours = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]

    traverse(dm_project_path, dm_hours)



