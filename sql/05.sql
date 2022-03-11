-- PART 1:
-- Rewrite the SQL table below to use a maximally efficient column order.
-- You may directly modify this table.

CREATE TABLE project (
    id SERIAL PRIMARY KEY,
    author_id BIGINT NOT NULL,
    target_type VARCHAR(2),
    target_id INTEGER,
    developer_addr INET,
    developer_id UUID,
    title CHAR(256),
    data TEXT,
    project_id INTEGER NOT NULL UNIQUE,
    action SMALLINT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE,
    updated_at TIMESTAMPTZ
);

 CREATE TABLE project (
     id SERIAL PRIMARY KEY,
     author_id BIGINT NOT NULL,
     target_type VARCHAR(2),
     target_id INTEGER,
     developer_addr INET,
     developer_id UUID,
     title CHAR(256),
     data TEXT,
     project_id INTEGER NOT NULL UNIQUE,
     action SMALLINT NOT NULL,
     created_at TIMESTAMP WITH TIME ZONE,
     updated_at TIMESTAMPTZ
 );
-- PART 2:
-- Complete the table below describing the number of bytes used by the row created by the following insert statement.
-- Use the original column order defined above,
-- and not your modified order from part 1.

INSERT INTO project VALUES (
    0, -- 4 serial +4 padding
    55, -- 8 bigint
    NULL, -- 0 varchar
    NULL,-- 0 integer
    NULL,-- 0 inet
    'A0EEBC99-9C0B-4EF8-BB6D-6BB9BD380A11',-- 16 uuid
    NULL,-- 0  CHAR(256),
    NULL,-- text
    88,-- interger
    12,-- 2 smallint + 2 padding 
    'now',-- 8  timestamp
    '2022-03-09T18:34:27+00:00' -- 8  TIMESTAMPTZ
);

-- Header: 32 bytes
-- Data: 4+8+16+4+2+8+8 = 50bytes
-- Padding: 4+2 = 6 bytes
-- Total: 88 
