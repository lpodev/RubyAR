# RubyAR

Ruby Active Record exercise for POO1 course.

## Commands

- See all rake commands

  ```bash
  rake -T
  ```

  

- Create a new migration

  ```bash
  rake db:new_migration name=[migrationName]
  ```

​	You should use the correct verb in the migration name. For example, if I want to create a table called '*clients*', the migration name should be '*CreateClients*'. Another example, if I want to add a foreign key to a already created table, in this case link order with a client, the migration name should be '*AddClientToOrders*'.



- Create database

  ```bash
  rake db:create
  ```

  

- Run migrations

  ```bash
  rake db:migrate
  ```



- Run seeds

  ```bash
  rake db:seed
  ```

  If you seeding again (after a reset or whatever) you can use:

  ```bash
  rake db:seed:replant
  ```

