DROP TABLE IF EXISTS tasks CASCADE;
CREATE TABLE tasks (
 id SERIAL PRIMARY KEY NOT NULL,
 user_id INTEGER REFERENCES users(id) ON DELETE CASCADE,
 title VARCHAR(255),
 category VARCHAR(255) DEFAULT 'uncategorized',
 note VARCHAR(255) DEFAULT NULL,
 is_completed BOOLEAN DEFAULT FALSE,
 is_deleted BOOLEAN DEFAULT FALSE,
 priority INTEGER DEFAULT 1,
 date TIMESTAMP DEFAULT NOW()
);
