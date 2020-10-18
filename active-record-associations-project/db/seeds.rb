ActiveRecord::Base.connection.tables.each do |table|
  next if table == 'schema_migrations'

  # MySQL and PostgreSQL
#   ActiveRecord::Base.connection.execute("TRUNCATE #{table}")

  # SQLite
  ActiveRecord::Base.connection.execute("DELETE FROM #{table}")
end
hp = Author.create(name: "HP Lovecraft")
bs = Author.create(name: "Brandon Sanderson")
rg = Author.create(name: "Robert Galbraith")

cthulu = Book.create(title: "Call of Cthulu")
way_of_kings = Book.create(title: "The Way of Kings")
the_cuckoos_calling = Book.create(title: "The Cuckoos Calling")

horror = Category.create(name: "Horror")
fantasy = Category.create(name: "Fantasy")
mystery = Category.create(name: "Mystery")

cthulu.author = hp
way_of_kings.author = bs
the_cuckoos_calling.author = rg

cthulu.category = horror
way_of_kings.category = fantasy
the_cuckoos_calling.category = mystery

cthulu.save
way_of_kings.save
the_cuckoos_calling.save

jake = User.create(name: "Jake")
kyle = User.create(name: "Kyle")

jake.check_out_book(cthulu)