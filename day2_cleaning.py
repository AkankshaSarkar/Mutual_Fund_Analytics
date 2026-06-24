import pandas as pd

df = pd.read_csv("Data/raw/08_investor_transactions.csv")

# Remove duplicates
df = df.drop_duplicates()

# Convert date column
df["transaction_date"] = pd.to_datetime(df["transaction_date"])

# Save cleaned file
df.to_csv("Data/processed/investor_transactions_clean.csv", index=False)

print("Investor Transactions cleaned successfully")
print(df.shape)