import pandas as pd
import numpy as np
import os
import datetime

project_path = "/home/ltam/new_dm/"

words = ["climate change", "global warming", "warming", "climate", "carbon dioxide", "co2", "pollution"
         "air quality", "climate crisis", "climatedenial", "climateemergency", "climate denial",
         "climateaction", "climate science", "drought", "water level"]


def preprocess(df):
    df['text'] = df['text'].str.lower()
    df['city'] = df['city'].str.lower()
    df['state'] = df['state'].str.upper()

    return df

def count_words_csv(csv_dir, locations, is_city):
    word_counts = {location: {word:0 for word in words} for location in locations}
    n_tweets = {location: 0 for location in locations}
    hours_read = 0
    for filename in os.listdir(csv_dir):
        csv_path = os.path.join(csv_dir, filename)
        try:
            df = pd.read_csv(csv_path, error_bad_lines=False, encoding='utf-8', engine='python')
        except Exception:
            print("Problem reading file {}".format(csv_path))
            os.remove(csv_path)
            continue

        hours_read += 1
        df = preprocess(df)
        for location in locations:

            if is_city:
                location_df = df[df['city'] == location.lower()]
            else:
                location_df = df[df['state'] == location.upper()]

            n_tweets[location] += len(location_df)
            for word in words:
                word_counts[location][word] += np.sum(location_df['text'].str.contains(word))

    return word_counts, n_tweets, hours_read


def main(locations, is_city=True, n_days=None):

    rows = {location: [] for location in locations}

    print("counting for {}".format(locations))

    total_days = len(os.listdir(project_path + "data/"))

    for i, filename in enumerate(os.listdir(project_path + "data/")):

        if n_days and i >= n_days:
            break

        dirpath = os.path.join(project_path + "data/", filename)

        if filename.startswith("geoTwitter") and os.path.isdir(dirpath):
            year = int(filename[10:12])
            if year < 100:
                year += 2000
            month = int(filename[13:15])
            day = int(filename[16:18])

            dt = datetime.datetime(year=year, month=month, day=day)
            location_counts, location_n_tweets, location_hours_read = count_words_csv(dirpath, locations, is_city)

            for location in locations:
                n_tweets = location_n_tweets[location]
                counts = location_counts[location]

                row = {"date": dt, "n_tweets": n_tweets, "hours_read": location_hours_read}
                row.update(counts)

                # normalizing for each word
                total_count = 0
                for word in words:
                    row["{}_norm_by_total_tweets".format(word)] = 0 if n_tweets == 0 else counts[word] / n_tweets
                    row["{}_norm_by_hour".format(word)] = 0 if location_hours_read == 0 else counts[word] / location_hours_read

                    total_count += counts[word]

                row["total_count"] = total_count
                row["total_norm_by_total_tweets"] = 0 if n_tweets == 0 else total_count / n_tweets
                row["total_norm_by_hour"] = 0 if location_hours_read == 0 else total_count / location_hours_read

                rows[location].append(row)

            if i % 10 == 0:
                print("{}/{}: finished {}/{}/{}".format(i, total_days, month, day, year))

    reordered_columns = ["n_tweets", "total_count", "hours_read", "total_norm_by_total_tweets", "total_norm_by_hour"]
    for word in words:
        reordered_columns.extend([word, "{}_norm_by_total_tweets".format(word), "{}_norm_by_hour".format(word)])

    for location in locations:
        df = pd.DataFrame(rows[location])
        df = df.set_index('date')
        df = df.sort_index()
        df = df[reordered_columns]

        if not os.path.exists(project_path + "/cleaned/"):
            os.makedirs(project_path + "/cleaned/")

        df.to_csv(project_path + "cleaned/{}_tweet_temp_data.csv".format(location))
        print("completed {}".format(location))


if __name__ == "__main__":
    cities = [
        #"Kodiak",
        #"Juneau",
        #"Fairbanks",
        #"Berkeley",
        "Sacramento"
        #"Sacremento",
        #"Los Angeles",
        #"Dallas",
        #"San Antonio",
        #"Houston",
        #"Boston",
        #"Brockton",
        #"Worcester"
    ]

    #main(cities)
    states = [
        #"CA",
        #"NC",
        #"TX",
        #"AK",
        #"ME",
        #"MA"
        "AL",
        "AZ",
        "AR",
        "CO",
        "CT",
        "DE",
        "FL",
        "GA",
        "HI",
        "ID",
        "IL",
        'IN',
        "IA",
        "KS",
        "KY",
        "LA",
        "MD",
        "MI",
        "MN",
        "MS",
        "MO",
        "MT",
        "NE",
        "NV",
        "NH",
        "NJ",
        "NM",
        "NY",
        "ND",
        "OH",
        "OK",
        "OR",
        "PA",
        "RI",
        "SC",
        "SD",
        "TN",
        "UT",
        "VT",
        "VA",
        "WA",
        "WV",
        "WI",
        "WY"
    ]

    main(states, False)
