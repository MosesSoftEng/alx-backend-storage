# :book: 0x01. NoSQL - MongoDB.
## :page_with_curl: Topics Covered.
1. NoSQL database.
2. MongoDB.

# :computer: Tasks.

## [0. List all databases](0-list_databases)
### :page_with_curl: Task requirements.
Write a script that lists all databases in MongoDB.
```
guillaume@ubuntu:~/0x01$ cat 0-list_databases | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
admin        0.000GB
config       0.000GB
local        0.000GB
logs         0.005GB
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 0-list_databases
chmod +x 0-list_databases

# Test
cat 0-list_databases | mongo
```

### :heavy_check_mark: Solution
> [:point_right: 0-list_databases](0-list_databases)


## [1. Create a database](1-use_or_create_database)
### :page_with_curl: Task requirements.
Write a script that creates or uses the database my_db:
```
guillaume@ubuntu:~/0x01$ cat 0-list_databases | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
admin        0.000GB
config       0.000GB
local        0.000GB
logs         0.005GB
bye
guillaume@ubuntu:~/0x01$
guillaume@ubuntu:~/0x01$ cat 1-use_or_create_database | mongo
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017
MongoDB server version: 3.6.3
switched to db my_db
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 1-use_or_create_database
chmod +x 1-use_or_create_database

# Test
cat 1-use_or_create_database | mongo
```

### :heavy_check_mark: Solution
> [:point_right: 1-use_or_create_database](1-use_or_create_database)


## [2. Insert document](2-insert)
### :page_with_curl: Task requirements.
Write a script that inserts a document in the collection school:

*    The document must have one attribute name with value “Holberton school”
*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 2-insert | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
WriteResult({ "nInserted" : 1 })
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 2-insert
chmod +x 2-insert

# Tests
cat 2-insert | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 2-insert](2-insert)


## [3. All documents](3-all)
### :page_with_curl: Task requirements.
Write a script that lists all documents in the collection school:

*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 3-all | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school" }
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 3-all
chmod +x 3-all

#Test
cat 3-all | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 3-all](3-all)


## [4. All matches](4-match)
### :page_with_curl: Task requirements.
Write a script that lists all documents with name="Holberton school" in the collection school:

*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school" }
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 4-match
chmod +x 4-match
cat 4-main.sql | mysql -uroot -p holberton 

# Test
cat 4-match | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 4-match](4-match)


## [5. Count](5-count)
### :page_with_curl: Task requirements.
Write a script that displays the number of documents in the collection school:

*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 5-count | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
1
bye
guillaume@ubuntu:~/0x01$
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 5-count
chmod +x 5-count
cat 5-init.sql | mysql -uroot -p holberton 

# Tests
touch 5-init.sql
chmod +x 5-init.sql
cat 5-count | mysql -uroot -p holberton 

```

### :heavy_check_mark: Solution
> [:point_right: 5-count](5-count)


## [6. Update](6-update)
### :page_with_curl: Task requirements.
Write a script that adds a new attribute to a document in the collection school:

*    The script should update only document with name="Holberton school" (all of them)
*    The update should add the attribute address with the value “972 Mission street”
*    The database name will be passed as option of mongo command
```
guillaume@ubuntu:~/0x01$ cat 6-update | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
WriteResult({ "nMatched" : 1, "nUpserted" : 0, "nModified" : 1 })
bye
guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "_id" : ObjectId("5a8fad532b69437b63252406"), "name" : "Holberton school", "address" : "972 Mission street" }
bye
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 6-update
chmod +x 6-update
cat 6-init.sql | mysql -uroot -p holberton

# Tests
touch 6-init.sql
chmod +x 6-init.sql
cat 6-update | mysql -uroot -p holberton

# Lint
pycodestyle 6-update
mypy 6-update
```

### :heavy_check_mark: Solution
> [:point_right: 5-count](5-count)


## [7. Delete by match](7-delete)
### :page_with_curl: Task requirements.
Write a script that deletes all documents with name="Holberton school" in the collection school:

*    The database name will be passed as option of mongo command

```
guillaume@ubuntu:~/0x01$ cat 7-delete | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
{ "acknowledged" : true, "deletedCount" : 1 }
bye
guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ cat 4-match | mongo my_db
MongoDB shell version v3.6.3
connecting to: mongodb://127.0.0.1:27017/my_db
MongoDB server version: 3.6.3
bye
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 7-delete
chmod +x 7-delete

# Tests
cat 7-delete | mongo my_db
```

### :heavy_check_mark: Solution
> [:point_right: 7-init.sql](7-delete)


## [8. List all documents in Python](8-all.py)
### :page_with_curl: Task requirements.
Write a Python function that lists all documents in a collection:

*    Prototype: def list_all(mongo_collection):
*    Return an empty list if no document in the collection
*    mongo_collection will be the pymongo collection object
```
guillaume@ubuntu:~/0x01$ cat 8-main.py
#!/usr/bin/env python3
""" 8-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school
    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {}".format(school.get('_id'), school.get('name')))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./8-main.py
[5a8f60cfd4321e1403ba7ab9] Holberton school
[5a8f60cfd4321e1403ba7aba] UCSD
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 8-all.py
chmod +x 8-all.py

# Test
touch 8-main.py
chmod +x 8-main.py
./8-main.py

# Lint
pycodestyle 8-main.py
```

### :heavy_check_mark: Solution
> [:point_right: 8-all.py](8-all.py)


## [9. Insert a document in Python](9-insert_school.py)
### :page_with_curl: Task requirements.
Write a Python function that inserts a new document in a collection based on kwargs:

*    Prototype: def insert_school(mongo_collection, **kwargs):
*    mongo_collection will be the pymongo collection object
*    Returns the new _id

```
guillaume@ubuntu:~/0x01$ cat 9-main.py
#!/usr/bin/env python3
""" 9-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all
insert_school = __import__('9-insert_school').insert_school

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school
    new_school_id = insert_school(school_collection, name="UCSF", address="505 Parnassus Ave")
    print("New school created: {}".format(new_school_id))

    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('address', "")))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./9-main.py
New school created: 5a8f60cfd4321e1403ba7abb
[5a8f60cfd4321e1403ba7ab9] Holberton school
[5a8f60cfd4321e1403ba7aba] UCSD
[5a8f60cfd4321e1403ba7abb] UCSF 505 Parnassus Ave
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 9-insert_school.py
chmod +x 9-insert_school.py

# Test
touch 9-main.py
chmod +x 9-main.py
./9-main.py

# Lint
pycodestyle 9-main.py
```

### :heavy_check_mark: Solution
> [:point_right: 9-insert_school.py](9-insert_school.py)


## [10. Change school topics](10-update_topics.py)
### :page_with_curl: Task requirements.
Write a Python function that changes all topics of a school document based on the name:

*    Prototype: def update_topics(mongo_collection, name, topics):
*    mongo_collection will be the pymongo collection object
*    name (string) will be the school name to update
*    topics (list of strings) will be the list of topics approached in the school
```
guillaume@ubuntu:~/0x01$ cat 10-main.py
#!/usr/bin/env python3
""" 10-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all
update_topics = __import__('10-update_topics').update_topics

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school
    update_topics(school_collection, "Holberton school", ["Sys admin", "AI", "Algorithm"])

    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('topics', "")))

    update_topics(school_collection, "Holberton school", ["iOS"])

    schools = list_all(school_collection)
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('topics', "")))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./10-main.py
[5a8f60cfd4321e1403ba7abb] UCSF 
[5a8f60cfd4321e1403ba7aba] UCSD 
[5a8f60cfd4321e1403ba7ab9] Holberton school ['Sys admin', 'AI', 'Algorithm']
[5a8f60cfd4321e1403ba7abb] UCSF 
[5a8f60cfd4321e1403ba7aba] UCSD 
[5a8f60cfd4321e1403ba7ab9] Holberton school ['iOS']
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 10-update_topics.py
chmod +x 10-update_topics.py

# Test
touch 10-main.py
chmod +x 10-main.py
./10-main.py

# Lint
pycodestyle 10-update_topics.py
```

### :heavy_check_mark: Solution
> [:point_right: 10-update_topics.py](10-update_topics.py)


## [11. Where can I learn Python?](11-schools_by_topic.py)
### :page_with_curl: Task requirements.
Write a Python function that returns the list of school having a specific topic:

*    Prototype: def schools_by_topic(mongo_collection, topic):
*    mongo_collection will be the pymongo collection object
*    topic (string) will be topic searched
```
guillaume@ubuntu:~/0x01$ cat 11-main.py
#!/usr/bin/env python3
""" 11-main """
from pymongo import MongoClient
list_all = __import__('8-all').list_all
insert_school = __import__('9-insert_school').insert_school
schools_by_topic = __import__('11-schools_by_topic').schools_by_topic

if __name__ == "__main__":
    client = MongoClient('mongodb://127.0.0.1:27017')
    school_collection = client.my_db.school

    j_schools = [
        { 'name': "Holberton school", 'topics': ["Algo", "C", "Python", "React"]},
        { 'name': "UCSF", 'topics': ["Algo", "MongoDB"]},
        { 'name': "UCLA", 'topics': ["C", "Python"]},
        { 'name': "UCSD", 'topics': ["Cassandra"]},
        { 'name': "Stanford", 'topics': ["C", "React", "Javascript"]}
    ]
    for j_school in j_schools:
        insert_school(school_collection, **j_school)

    schools = schools_by_topic(school_collection, "Python")
    for school in schools:
        print("[{}] {} {}".format(school.get('_id'), school.get('name'), school.get('topics', "")))

guillaume@ubuntu:~/0x01$ 
guillaume@ubuntu:~/0x01$ ./11-main.py
[5a90731fd4321e1e5a3f53e3] Holberton school ['Algo', 'C', 'Python', 'React']
[5a90731fd4321e1e5a3f53e5] UCLA ['C', 'Python']
guillaume@ubuntu:~/0x01$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 11-schools_by_topic.py
chmod +x 11-schools_by_topic.py

# Tests
touch 11-main.py
chmod +x 11-main.py

# Lint
pycodestyle 11-schools_by_topic.py
```

### :heavy_check_mark: Solution
> [:point_right: 11-schools_by_topic.py](11-schools_by_topic.py)


## [12. Average weighted score](100-average_weighted_score.sql)
### :page_with_curl: Task requirements.
Write a SQL script that creates a stored procedure ComputeAverageWeightedScoreForUser that computes and store the average weighted score for a student.

Requirements:

*    Procedure ComputeAverageScoreForUser is taking 1 input:
    *    user_id, a users.id value (you can assume user_id is linked to an existing users)

Tips:

*    Calculate-Weighted-Average
```
bob@dylan:~$ cat 100-init.sql
-- Initial
DROP TABLE IF EXISTS corrections;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS projects;

CREATE TABLE IF NOT EXISTS users (
    id int not null AUTO_INCREMENT,
    name varchar(255) not null,
    average_score float default 0,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS projects (
    id int not null AUTO_INCREMENT,
    name varchar(255) not null,
    weight int default 1,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS corrections (
    user_id int not null,
    project_id int not null,
    score float default 0,
    KEY `user_id` (`user_id`),
    KEY `project_id` (`project_id`),
    CONSTRAINT fk_user_id FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    CONSTRAINT fk_project_id FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
);

INSERT INTO users (name) VALUES ("Bob");
SET @user_bob = LAST_INSERT_ID();

INSERT INTO users (name) VALUES ("Jeanne");
SET @user_jeanne = LAST_INSERT_ID();

INSERT INTO projects (name, weight) VALUES ("C is fun", 1);
SET @project_c = LAST_INSERT_ID();

INSERT INTO projects (name, weight) VALUES ("Python is cool", 2);
SET @project_py = LAST_INSERT_ID();


INSERT INTO corrections (user_id, project_id, score) VALUES (@user_bob, @project_c, 80);
INSERT INTO corrections (user_id, project_id, score) VALUES (@user_bob, @project_py, 96);

INSERT INTO corrections (user_id, project_id, score) VALUES (@user_jeanne, @project_c, 91);
INSERT INTO corrections (user_id, project_id, score) VALUES (@user_jeanne, @project_py, 73);

bob@dylan:~$ 
bob@dylan:~$ cat 100-init.sql | mysql -uroot -p holberton 
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 100-average_weighted_score.sql | mysql -uroot -p holberton 
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 100-main.sql
-- Show and compute average weighted score
SELECT * FROM users;
SELECT * FROM projects;
SELECT * FROM corrections;

CALL ComputeAverageWeightedScoreForUser((SELECT id FROM users WHERE name = "Jeanne"));

SELECT "--";
SELECT * FROM users;

bob@dylan:~$ 
bob@dylan:~$ cat 100-main.sql | mysql -uroot -p holberton 
Enter password: 
id  name    average_score
1   Bob 0
2   Jeanne  82
id  name    weight
1   C is fun    1
2   Python is cool  2
user_id project_id  score
1   1   80
1   2   96
2   1   91
2   2   73
--
--
id  name    average_score
1   Bob 0
2   Jeanne  79
bob@dylan:~$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 100-average_weighted_score.sql
chmod +x 100-average_weighted_score.sql
cat 100-main.sql | mysql -uroot -p holberton

# Tests
touch 100-init.sql
chmod +x 100-init.sql
```

### :heavy_check_mark: Solution
> [:point_right: 100-average_weighted_score.sql](101-average_weighted_score.sql)


## [13. Average weighted score for all!](101-average_weighted_score.sql)
### :page_with_curl: Task requirements.
Write a SQL script that creates a stored procedure ComputeAverageWeightedScoreForUsers that computes and store the average weighted score for all students.

Requirements:

*    Procedure ComputeAverageWeightedScoreForUsers is not taking any input.

Tips:

*    Calculate-Weighted-Average
```
bob@dylan:~$ cat 101-init.sql
-- Initial
DROP TABLE IF EXISTS corrections;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS projects;

CREATE TABLE IF NOT EXISTS users (
    id int not null AUTO_INCREMENT,
    name varchar(255) not null,
    average_score float default 0,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS projects (
    id int not null AUTO_INCREMENT,
    name varchar(255) not null,
    weight int default 1,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS corrections (
    user_id int not null,
    project_id int not null,
    score float default 0,
    KEY `user_id` (`user_id`),
    KEY `project_id` (`project_id`),
    CONSTRAINT fk_user_id FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
    CONSTRAINT fk_project_id FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE
);

INSERT INTO users (name) VALUES ("Bob");
SET @user_bob = LAST_INSERT_ID();

INSERT INTO users (name) VALUES ("Jeanne");
SET @user_jeanne = LAST_INSERT_ID();

INSERT INTO projects (name, weight) VALUES ("C is fun", 1);
SET @project_c = LAST_INSERT_ID();

INSERT INTO projects (name, weight) VALUES ("Python is cool", 2);
SET @project_py = LAST_INSERT_ID();


INSERT INTO corrections (user_id, project_id, score) VALUES (@user_bob, @project_c, 80);
INSERT INTO corrections (user_id, project_id, score) VALUES (@user_bob, @project_py, 96);

INSERT INTO corrections (user_id, project_id, score) VALUES (@user_jeanne, @project_c, 91);
INSERT INTO corrections (user_id, project_id, score) VALUES (@user_jeanne, @project_py, 73);

bob@dylan:~$ 
bob@dylan:~$ cat 101-init.sql | mysql -uroot -p holberton 
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 101-average_weighted_score.sql | mysql -uroot -p holberton 
Enter password: 
bob@dylan:~$ 
bob@dylan:~$ cat 101-main.sql
-- Show and compute average weighted score
SELECT * FROM users;
SELECT * FROM projects;
SELECT * FROM corrections;

CALL ComputeAverageWeightedScoreForUsers();

SELECT "--";
SELECT * FROM users;

bob@dylan:~$ 
bob@dylan:~$ cat 101-main.sql | mysql -uroot -p holberton 
Enter password: 
id  name    average_score
1   Bob 0
2   Jeanne  0
id  name    weight
1   C is fun    1
2   Python is cool  2
user_id project_id  score
1   1   80
1   2   96
2   1   91
2   2   73
--
--
id  name    average_score
1   Bob 90.6667
2   Jeanne  79
bob@dylan:~$ 
```

### :wrench: Task setup.
```bash
# Create task files and set execute permission.
touch 101-average_weighted_score.sql
chmod +x 101-average_weighted_score.sql

# Tests
touch 101-init.sql
chmod +x 101-init.sql
```

### :heavy_check_mark: Solution
> [:point_right: 101-average_weighted_score.sql](101-average_weighted_score.sql)


# :man: Author and Credits.
This project was done by [SE. Moses Mwangi](https://github.com/MosesSoftEng). Feel free to get intouch with me;

:iphone: WhatsApp [+254115227963](https://wa.me/254115227963)

:email: Email [moses.soft.eng@gmail.com](mailto:moses.soft.eng@gmail.com)

:thumbsup: A lot of thanks to [ALX-Africa Software Engineering](https://www.alxafrica.com/) program for the project requirements.
