psql -d postgres -f ./tables.sql 
psql -d postgres -f ./constraints.sql

pg_bulkload -d postgres ./controlfile_comments.ctl
pg_bulkload -d postgres ./controlfile_authors.ctl
pg_bulkload -d postgres ./controlfile_submissions.ctl
pg_bulkload -d postgres ./controlfile_subreddits.ctl


