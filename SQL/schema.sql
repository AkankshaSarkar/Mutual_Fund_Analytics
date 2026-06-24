CREATE TABLE IF NOT EXISTS dim_fund(
    amfi_code INTEGER PRIMARY KEY,
    scheme_name TEXT,
    fund_house TEXT,
    category TEXT,
    sub_category TEXT,
    risk_category TEXT
);

CREATE TABLE IF NOT EXISTS dim_date(
    date_id INTEGER PRIMARY KEY,
    full_date DATE
);

CREATE TABLE IF NOT EXISTS fact_nav(
    amfi_code INTEGER,
    date DATE,
    nav REAL
);

CREATE TABLE IF NOT EXISTS fact_transactions(
    investor_id TEXT,
    transaction_date DATE,
    amfi_code INTEGER,
    transaction_type TEXT,
    amount_inr REAL
);

CREATE TABLE IF NOT EXISTS fact_performance(
    amfi_code INTEGER,
    return_1yr_pct REAL,
    return_3yr_pct REAL,
    return_5yr_pct REAL,
    alpha REAL,
    sharpe_ratio REAL
);