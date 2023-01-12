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

# Tests
cat 0-uniq_users.sql | mysql -uroot -p holberton
```


### :heavy_check_mark: Solution
> [:point_right: 0-uniq_users.sql](0-uniq_users.sql)


## [1. In and not out](1-country_users.sql)
### :page_with_curl: Task requirements.
Write a SQL script that creates a table users following these requirements:

*    With these attributes:
    *    id, integer, never null, auto increment and primary key
    *    email, string (255 characters), never null and unique
    *    name, string (255 characters)
    *    country, enumeration of countries: US, CO and TN, never null (= default will be the first element of the enumeration, here US)
*    If the table already exists, your script should not fail
*    Your script can be executed on any database
```
bob@dylan:~$ echo "SELECT * FROM users;" | mysql -uroot -p holberton
Enter password: 
ERROR 1146 (42S02) at line 1: Table 'holberton.users' doesn't exist
bob@dylan:~$ 
bob@dylan:~$ cat 1-country_users.sql | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ echo 'INSERT INTO users (email, name, country) VALUES ("bob@dylan.com", "Bob", "US");' | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ echo 'INSERT INTO users (email, name, country) VALUES ("sylvie@dylan.com", "Sylvie", "CO");' | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ echo 'INSERT INTO users (email, name, country) VALUES ("jean@dylan.com", "Jean", "FR");' | mysql -uroot -p holberton
Enter password: 
ERROR 1265 (01000) at line 1: Data truncated for column 'country' at row 1
bob@dylan:~$ 
bob@dylan:~$ echo 'INSERT INTO users (email, name) VALUES ("john@dylan.com", "John");' | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ echo "SELECT * FROM users;" | mysql -uroot -p holberton
Enter password: 
id  email   name    country
1   bob@dylan.com   Bob US
2   sylvie@dylan.com    Sylvie  CO
3   john@dylan.com  John    US
bob@dylan:~$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 1-country_users.sql
chmod +x 1-country_users.sql

# Tests
cat 1-country_users.sql | mysql -uroot -p holberton
```

### :heavy_check_mark: Solution
> [:point_right: 1-country_users.sql](1-country_users.sql)


## [2. Best band ever!](2-fans.sql)
### :page_with_curl: Task requirements.
Write a SQL script that ranks country origins of bands, ordered by the number of (non-unique) fans

Requirements:

*    Import this table dump: metal_bands.sql.zip
*    Column names must be: origin and nb_fans
*    Your script can be executed on any database

Context: Calculate/compute something is always power intensive… better to distribute the load!

```
bob@dylan:~$ cat metal_bands.sql | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 2-fans.sql | mysql -uroot -p holberton > tmp_res ; head tmp_res
Enter password: 
origin  nb_fans
USA 99349
Sweden  47169
Finland 32878
United Kingdom  32518
Germany 29486
Norway  22405
Canada  8874
The Netherlands 8819
Italy   7178
bob@dylan:~$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 2-fans.sql
chmod +x 2-fans.sql

# Tests
cat 2-fans.sql | mysql -uroot -p holberton > tmp_res ; head tmp_res
```

### :heavy_check_mark: Solution
> [:point_right: 2-fans.sql](2-fans.sql)


## [3. Old school band](3-glam_rock.sql)
### :page_with_curl: Task requirements.
Write a SQL script that lists all bands with Glam rock as their main style, ranked by their longevity

Requirements:
*    Import this table dump: metal_bands.sql.zip
*    Column names must be: band_name and lifespan (in years)
*    You should use attributes formed and split for computing the lifespan
*    Your script can be executed on any database

```
bob@dylan:~$ cat metal_bands.sql | mysql -uroot -p holberton
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 3-glam_rock.sql | mysql -uroot -p holberton 
Enter password: 
band_name   lifespan
Alice Cooper    56
Mötley Crüe   34
Marilyn Manson  31
The 69 Eyes 30
Hardcore Superstar  23
Nasty Idols 0
Hanoi Rocks 0
bob@dylan:~$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 3-glam_rock.sql
chmod +x 3-glam_rock.sql
cat 3-glam_rock.sql | mysql -uroot -p holberton
```

### :heavy_check_mark: Solution
> [:point_right: 3-glam_rock.sql](3-glam_rock.sql)

## [4. Buy buy buy](4-store.sql)
### :page_with_curl: Task requirements.
Define and annotate the following variables with the specified values:

  * a, an integer with a value of 1
  * pi, a float with a value of 3.14
  * i_understand_annotations, a boolean with a value of True
  * school, a string with a value of “Holberton”
```
bob@dylan:~$ cat 4-store.sql
#!/usr/bin/env python3

a = __import__('4-define_variables').a
pi = __import__('4-define_variables').pi
i_understand_annotations = __import__('4-define_variables').i_understand_annotations
school = __import__('4-define_variables').school

print("a is a {} with a value of {}".format(type(a), a))
print("pi is a {} with a value of {}".format(type(pi), pi))
print("i_understand_annotations is a {} with a value of {}".format(type(i_understand_annotations), i_understand_annotations))
print("school is a {} with a value of {}".format(type(school), school))

bob@dylan:~$ ./4-store.sql
a is a <class 'int'> with a value of 1
pi is a <class 'float'> with a value of 3.14
i_understand_annotations is a <class 'bool'> with a value of True
school is a <class 'str'> with a value of Holberton
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 4-store.sql
chmod +x 4-store.sql
cat 4-main.sql | mysql -uroot -p holberton 

# Tests
touch 4-init.sql
chmod +x 4-init.sql
cat 4-init.sql | mysql -uroot -p holberton 
```

### :heavy_check_mark: Solution
> [:point_right: 4-store.sql](4-store.sql)

## [5. Email validation to sent](5-valid_email.sql)
### :page_with_curl: Task requirements.
Write a SQL script that creates a trigger that resets the attribute valid_email only when the email has been changed.

Context: Nothing related to MySQL, but perfect for user email validation - distribute the logic to the database itself!
```
bob@dylan:~$ cat 5-init.sql
-- Initial
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS users (
    id int not null AUTO_INCREMENT,
    email varchar(255) not null,
    name varchar(255),
    valid_email boolean not null default 0,
    PRIMARY KEY (id)
);

INSERT INTO users (email, name) VALUES ("bob@dylan.com", "Bob");
INSERT INTO users (email, name, valid_email) VALUES ("sylvie@dylan.com", "Sylvie", 1);
INSERT INTO users (email, name, valid_email) VALUES ("jeanne@dylan.com", "Jeanne", 1);

bob@dylan:~$ 
bob@dylan:~$ cat 5-init.sql | mysql -uroot -p holberton 
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 5-valid_email.sql | mysql -uroot -p holberton 
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 5-main.sql
Enter password: 
-- Show users and update (or not) email
SELECT * FROM users;

UPDATE users SET valid_email = 1 WHERE email = "bob@dylan.com";
UPDATE users SET email = "sylvie+new@dylan.com" WHERE email = "sylvie@dylan.com";
UPDATE users SET name = "Jannis" WHERE email = "jeanne@dylan.com";

SELECT "--";
SELECT * FROM users;

UPDATE users SET email = "bob@dylan.com" WHERE email = "bob@dylan.com";

SELECT "--";
SELECT * FROM users;

bob@dylan:~$ 
bob@dylan:~$ cat 5-main.sql | mysql -uroot -p holberton 
Enter password: 
id  email   name    valid_email
1   bob@dylan.com   Bob 0
2   sylvie@dylan.com    Sylvie  1
3   jeanne@dylan.com    Jeanne  1
--
--
id  email   name    valid_email
1   bob@dylan.com   Bob 1
2   sylvie+new@dylan.com    Sylvie  0
3   jeanne@dylan.com    Jannis  1
--
--
id  email   name    valid_email
1   bob@dylan.com   Bob 1
2   sylvie+new@dylan.com    Sylvie  0
3   jeanne@dylan.com    Jannis  1
bob@dylan:~$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 5-valid_email.sql
chmod +x 5-valid_email.sql
cat 5-init.sql | mysql -uroot -p holberton 

# Tests
touch 5-init.sql
chmod +x 5-init.sql
cat 5-valid_email.sql | mysql -uroot -p holberton 

```

### :heavy_check_mark: Solution
> [:point_right: 5-valid_email.sql](5-valid_email.sql)


