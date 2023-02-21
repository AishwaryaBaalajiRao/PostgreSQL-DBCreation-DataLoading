ALTER TABLE authors 
ADD PRIMARY KEY (name);

ALTER TABLE subreddits
ADD PRIMARY KEY (name);

ALTER TABLE subreddits
ADD CONSTRAINT uk_subreddits_dispname UNIQUE (display_name);

ALTER TABLE submissions
ADD CONSTRAINT fk_submissions_author FOREIGN KEY (author) REFERENCES authors (name);

ALTER TABLE submissions
ADD CONSTRAINT fk_submissions_subrid FOREIGN KEY (subreddit_id) REFERENCES subreddits (name);

ALTER TABLE comments 
ADD PRIMARY KEY (id);

ALTER TABLE comments 
ADD CONSTRAINT fk_comments_author FOREIGN KEY (author) REFERENCES authors (name);

ALTER TABLE comments
ADD CONSTRAINT fk_comments_subreddit FOREIGN KEY (subreddit) REFERENCES subreddits (display_name);

ALTER TABLE comments
ADD CONSTRAINT fk_comments_subrid FOREIGN KEY (subreddit_id) REFERENCES subreddits (name);