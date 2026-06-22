import pandas as pd
import os

folder = "Data/raw"

for file in os.listdir(folder):
    if file.endswith(".csv"):
        path = os.path.join(folder, file)

        df = pd.read_csv(path)

        print("\n" + "="*50)
        print("FILE:", file)
        print("ROWS, COLUMNS:", df.shape)

        print("\nCOLUMNS:")
        print(df.columns.tolist())

        print("\nDATA TYPES:")
        print(df.dtypes)

        print("\nMISSING VALUES:")
        print(df.isnull().sum())