require 'pg' # gives you access to PG
require 'pry'

db = PG.connect(host: 'localhost', port: 5432, dbname: 'scramble', user: 'postgres', password: 'Custom13')

# '.exec' method allows you to write queries to the database
#store the list of users from the database and convert to an array with '.to_a'
users = db.exec("SELECT * FROM users;").to_a

#for more complicated queries use the here doc.
users_named_remina = db.exec(<<-SQL).to_a
SELECT
  *
FROM
  users
WHERE
  name = 'Remina';
SQL

Pry.start(binding)


# db.exec(SELECT * FROM {table name})
#  => <PG::Result:{set of numbers} status=PGRES_TUPLES_OK ntuples=# nfields=# cmd_tuples=#>

# ntuples == number of rows
# nfields == number of columns
