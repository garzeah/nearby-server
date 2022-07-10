CREATE TABLE IF NOT EXISTS user_account (
    id SERIAL PRIMARY KEY,
    alt_id VARCHAR(32),
    created timestamp
);