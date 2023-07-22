Role Name
=========
$ ansible-galaxy init mariaDB
This creates the role name mariaDB.

Requirements
------------
-Ansible

Role Variables
--------------
In this playbook i have used some vars that are required as basic for installing mariaDB. You can add variables as required.
mysql_root_password: "_give_your_root_password_here"
mysql_host: "_mention_host_"
db_names:
  - { name: "databse1"}
  - { name: "databse2"}
  - { name: "database3"}
  - { name: "databse4"}
  - { name: "database5"}

You can create multiple database using loop or even can create multiple user.

 mariadb_users:
   - name: user1
     password: pass1234
   - name: user2
     password: pass1234
   - name: user3
     password: pass1234
   - name: user4
     password: pass1234
   - name: user5
     password: pass1234

To run ans install MariaDB using this  Playbook
----------------
$ ansible-playbook mariaDB.yml 

or you can see in verbose mode as required

$ ansible-playbook mariaDB.yml -v  ( mention number of v as required. More give more details )
