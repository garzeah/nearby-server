CREATE table if not EXISTS users (
id SERIAL PRIMARY KEY,
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
password VARCHAR(50),
avatar VARCHAR(200),
created_at  TIMESTAMP
);



CREATE TABLE IF NOT EXISTS products (
id SERIAL PRIMARY key,
title VARCHAR(100),
price VARCHAR(50),
product_image VARCHAR(200),
description  VARCHAR(10000),
is_sold BOOLEAN,
seller_id INTEGER,
FOREIGN KEY (seller_id) REFERENCES users(id),
buyer_id INTEGER,
FOREIGN KEY (buyer_id) REFERENCES users(id),

updated_at TIMESTAMP,
created_at TIMESTAMP
);


CREATE TABLE IF NOT EXISTS followers (
id  SERIAL PRIMARY KEY ,
product_id INTEGER,
user_id INTEGER,
created_at TIMESTAMP,
FOREIGN KEY (product_id) REFERENCES products(id),
FOREIGN KEY (user_id) REFERENCES users(id)

-- user_id INTEGER [ref: > users.id]
);


CREATE TABLE IF NOT EXISTS conversations (
 id SERIAL PRIMARY KEY,
 host_id INTEGER,
 FOREIGN KEY (host_id) REFERENCES users(id),
participant_id INTEGER,
FOREIGN KEY (participant_id) REFERENCES users(id),

created_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS garages(
id SERIAL PRIMARY key,
title VARCHAR(100),
product_image VARCHAR(200),
description VARCHAR(10000),
updated_at TIMESTAMP,
created_at TIMESTAMP,
seller_id INTEGER,
--  [ref: > users.id]
FOREIGN KEY (seller_id) REFERENCES users(id)
);


CREATE TABLE IF NOT EXISTS messages (
id SERIAL PRIMARY KEY,
conversation_id INTEGER,
--  [ref: > conversations.id],
FOREIGN KEY (conversation_id) REFERENCES conversations(id),
author_id INTEGER,
-- [ref: > users.id],
FOREIGN KEY (author_id) REFERENCES users(id),
content VARCHAR,
created_at TIMESTAMP
);

