# "Database code" for the DB Forum.

import psycopg2 #a driver for interacting with PostgreSQL from the python

def get_posts():
  """Return all posts from the 'database', most recent first."""
  #get connection
  db = psycopg2.connect(database = "forum")
  # return a cursor object, you can use the cursor to perform queries
  c = db.cursor()
  #execute queries
  c.execute("select content,time from posts order by time desc")
  #fetch everything returned from database
  posts = c.fetchall()
  db.close()
  return posts

def add_post(content):
  """Add a post to the 'database' with the current timestamp."""
  db = psycopg2.connect(database = "forum")
  c = db.cursor()
  c.execute("insert into posts values (%s)" ,(content,)) #add a query protecter
  #!avoid to use python string substitution
  #!never use python string concatenation(+) or string parameter interpolation(%)to pass
  #!variables to a SQL query string.
  #c.execute("insert into posts values ('%s')" %content)
  db.commit()
  db.close()
