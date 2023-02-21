CREATE TABLE authors (
	id TEXT NOT NULL,
	retrieved_on INTEGER,
	name TEXT,
	created_utc INTEGER,
	link_karma INTEGER,
	comment_karma INTEGER,
	profile_img TEXT,
	profile_color TEXT,
	profile_over_18 BOOLEAN
);

CREATE TABLE subreddits (
	banner_background_image TEXT,
	created_utc INTEGER,
	description TEXT,
	display_name TEXT,
	header_img TEXT,
	hide_ads BOOLEAN,
	id TEXT NOT NULL,
	over_18 BOOLEAN,
	public_description TEXT,
	retrieved_utc INTEGER,
	name TEXT,
	subreddit_type TEXT,
	subscribers INTEGER,
	title TEXT,
	whitelist_status TEXT
);

CREATE TABLE submissions (
	downs INTEGER, 
	url TEXT, 
	id TEXT NOT NULL, 
	edited BOOLEAN, 
	num_reports TEXT, 
	created_utc TEXT, 
	name TEXT, 
	title TEXT, 
	author TEXT, 
	permalink TEXT, 
	num_comments INTEGER, 
	likes BOOLEAN, 
	subreddit_id TEXT, 
	ups INTEGER
);

CREATE TABLE comments (
	distinguished TEXT,
    downs INTEGER,
    created_utc INTEGER,
    controversiality INTEGER,
    edited BOOLEAN,
    gilded INTEGER,
    author_flair_css_class TEXT,
    id TEXT,
    author TEXT,
    retrieved_on INTEGER,
    score_hidden BOOLEAN,
    subreddit_id TEXT,
    score INTEGER,
    name TEXT,
    author_flair_text TEXT,
    link_id TEXT,
    archived BOOLEAN,
    ups INTEGER,
    parent_id TEXT,
    subreddit TEXT,
    body TEXT
);
