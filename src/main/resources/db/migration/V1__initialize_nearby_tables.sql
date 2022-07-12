-- CREATE TABLE IF NOT EXISTS user_account (
--     id SERIAL PRIMARY KEY,
--     alt_id VARCHAR(32),
--     created timestamp
-- );


CREATE TABLE users (

id SERIAL [pk,increment],
first_name VARCHAR(50),
last_name VARCHAR(50),
email VARCHAR(100),
password VARCHAR(50),
avatar VARCHAR(200),
created_at  TIMESTAMP	
);

CREATE TABLE followers ( 
id  SERIAL [pk, increment] ,
product_id INTEGER [ref: > products.id],
user_id INTEGER [ref: > users.id]
created_at TIMESTAMP
);

CREATE TABLE products (
Id SERIAL [pk , increment] 
title VARCHAR(100),
price VARCHAR(50),
product_image VARCHAR(200),
description  VARCHAR(10000),
is_sold BOOLEAN,
seller_id INTEGER [ ref: > users.id] ,
buyer_id INTEGER [ ref: > users.id],
updated_at TIMESTAMP,
created_at TIMESTAMP
);


CREATE TABLE conversations ( 
 Id SERIAL [ pk, increment],
 host_id INTEGER [ref: > users.id],
 participant_id INTEGER [ref: > users.id] ,
created_at TIMESTAMP
);

CREATE TABLE messages (
id_ SERIAL [pk, increment],
conversation_id INTEGER [ref: > conversations.id],
author_id INTEGER [ref: > users.id],
content VARCHAR,
created_at TIMESTAMP
);


CREATE TABLE garages(
Id SERIAL [pk,increment]
title VARCHAR(100),
product_image VARCHAR(200),
description VARCHAR(10000),
updated_at TIMESTAMP,
created_at TIMESTAMP,
seller_id INTEGER [ref: > users.id]

);
