import pandas as pd
import numpy as np
import os
import datetime
from textblob import TextBlob

data_dir = "/home/ltam/new_dm/"
project_path = "/home/ltam/new_cs/"

BA18 = ["bachelor", ]


def generate_words(data):
    # data(str): csv on show info
    # eg: Bachelor_S22_2018.csv
    words = []
    df = pd.read_csv(os.path.join(project_path, "show_info", data))

    #words = ["thebachelor", "thebachelorette", "bachelorabc"]

    for i in range(len(df["name"])):
        words.append(df["name"][i])
        words.append(df["twitter_handle"][i])

    return words


def test_season(words, csv_dir):
    # key_words(list): information related to season
    # csv_dir(str): location data is stored

    data = pd.DataFrame(columns=['text', 'date', 'city', 'state'])

    for filename in os.listdir(csv_dir):
        if not filename.endswith(".csv"):
            continue

        csv_path = os.path.join(csv_dir, filename)
        try:
            df = pd.read_csv(csv_path, error_bad_lines=False, encoding='utf-8', engine='python')
        except Exception:
            print(csv_path)
            os.remove(csv_path)
            continue

        df = df[['text', 'date', 'city', 'state']]
        df = df.dropna()
        df_subset = df[df['text'].str.contains('|'.join(words))]
        data = pd.concat([data, df_subset], axis=0)

    data = data.reset_index(drop=True)
    data['polarity'] = data['text'].apply(lambda tweet: TextBlob(tweet).sentiment.polarity)

    return data

def main(csv_name, start_date, end_date, words, n_days=None):

    print("searching between {} to {}".format(start_date, end_date))
    save_dir = os.path.join(project_path, "cleaned")

    total_days = (end_date - start_date).days + 1
    data = pd.DataFrame(columns=['text', 'date', 'city', 'state'])

    for i, date in enumerate(start_date + datetime.timedelta(n) for n in range(total_days)):
        year = date.year
        month = date.month
        day = date.day

        if n_days and i >= n_days:
            break

        tweet_day_path = os.path.join(data_dir, "data", "geoTwitter{}-{:0>2d}-{:0>2d}".format(year % 100, month, day))
        if not os.path.exists(tweet_day_path):
            print("Unable to find {}".format(tweet_day_path))
            continue

        day_csv = test_season(words, tweet_day_path)
        data = pd.concat([data, day_csv], axis=0, sort=True)

        if i % 10 == 0:
            print("{}/{}: finished {}/{}/{}".format(i, total_days, month, day, year))

    if not os.path.exists(save_dir):
        os.makedirs(save_dir)

    data.to_csv(os.path.join(save_dir, csv_name))
    print("completed {}".format(csv_name))


if __name__ == "__main__":
    start_2018 = datetime.date(2017, 12, 9) # bachelorettes announced
    end_2018 = datetime.date(2018, 3, 13) # roughly one week after season end

    start_2019 = datetime.date(2018, 12, 6)  # bachelores announced
    end_2019 = datetime.date(2019, 3, 18)  # roughly one week after season end

    start_2019_ette = datetime.date(2019, 5, 7)  # bachelors announced
    end_2019_ette = datetime.date(2019, 8, 7)  # roughly one week after season end

    start_2018_ette = datetime.date(2018, 5, 17)  # bachelors announced
    end_2018_ette = datetime.date(2018, 8, 13)  # roughly one week after season end

    words_2018 = generate_words("Bachelor_2018.csv")
    words_2019 = generate_words("Bachelor_2019.csv")
    words_2019_ette = generate_words("Bachelorette_2019.csv")
    words_2018_ette = generate_words("Bachelorette_2018.csv")

    main("Bachelor_2018_ct.csv", start_2018, end_2018, words_2018)
    main("Bachelor_2019_ct.csv", start_2019, end_2019, words_2019)
    main("Bachelorette_2019_ct.csv", start_2019_ette, end_2019_ette, words_2019_ette)
    main("Bachelorette_2018__ct.csv", start_2018_ette, end_2018_ette, words_2018_ette)


