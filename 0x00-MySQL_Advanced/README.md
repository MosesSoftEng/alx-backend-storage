## [0. We are all unique!](0-uniq_users.sql)


### :page_with_curl: Task requirements.
Write a SQL script that creates a table users following these requirements:

*   With these attributes:
    *    id, integer, never null, auto increment and primary key
    *    email, string (255 characters), never null and unique
    *    name, string (255 characters)
*    If the table already exists, your script should not fail
*    Your script can be executed on any database

Context: Make an attribute unique directly in the table schema will enforced your business rules and avoid bugs in your application
```
bob@dylan:~$ echo "SELECT * FROM users;" | mysql -uroot -p holberton
Enter password: 
ERROR 1146 (42S02) at line 1: Table 'holberton.users' doesn't exist
bob@dylan:~$ 
bob@dylan:~$ cat 0-uniq_users.sql | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ echo 'INSERT INTO users (email, name) VALUES ("bob@dylan.com", "Bob");' | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ echo 'INSERT INTO users (email, name) VALUES ("sylvie@dylan.com", "Sylvie");' | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ echo 'INSERT INTO users (email, name) VALUES ("bob@dylan.com", "Jean");' | mysql -uroot -p holberton
Enter password: 
ERROR 1062 (23000) at line 1: Duplicate entry 'bob@dylan.com' for key 'email'
bob@dylan:~$ 
bob@dylan:~$ echo "SELECT * FROM users;" | mysql -uroot -p holberton
Enter password: 
id  email   name
1   bob@dylan.com   Bob
2   sylvie@dylan.com    Sylvie
bob@dylan:~$ 
```


### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 0-uniq_users.sql
chmod +x 0-uniq_users.sql
cat 0-uniq_users.sql | mysql -uroot -p holberton
```


### :heavy_check_mark: Solution
> [:point_right: 0-uniq_users.sql](0-uniq_users.sql)


