require 'sqlite3'
require_relative ''

def create_scheme(db)
  #TODO: create your db scheme
  # %q allows for multiline string in ruby
  sql = %q{
  CREATE TABLE IF NOT EXISTS posts
    (
      id INTEGER PRIMARY KEY AUTOINCREMENT,
      name VARCHAR(100),
      source_url VARCHAR(200),
      date DATE,
      rating INTEGER
    )
  }
  db.execute(sql)
end

def create_post(db, post)
  #TODO: add a new post to your db
  db.execute("INSERT INTO posts (name, source_url, date, rating)
  VALUES ('#{post[:name]}', '#{post[:source_url]}', '#{post[:date]}', #{post[:rating].to_i})"
  )
end

def get_posts(db)
   #TODO: list all posts
  all_posts = db.execute("SELECT * FROM posts")
  all_posts.each do |post|
    p post
  end
end

def get_post(db, id)
  #TODO: get a specific post
  get_it = db.execute("SELECT * FROM posts WHERE id = #{id}")
  p get_it
end

def update_post(db, id, name)
	#TODO: update a post's name in your db
  update_it = db.execute("UPDATE posts SET name = '#{name}'
  WHERE id = #{id}")
end

def delete_posts(db)
  #TODO: delete a post in your db
  delete_all = db.execute("DELETE FROM posts")
end

def delete_post(db, id)
  #TODO: delete a specific post in your db
  delete_post = db.execute("DELETE FROM posts WHERE id = #{id}")
end
