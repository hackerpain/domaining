# Domaining

A repo with simple useful scripts for domainers.
Currently has very basic GoDaddy value checker bash script just for demo of API usage and to make things more convenient when dealing with large number of domains. 
Will slowly add more scripts.

# Instructions

You can create bash aliases out of the functions ```value``` and ```bulk_value``` functions in ```govalue.sh``` by adding them to your ```~./bashrc```

## Usage
  - ```git clone https://github.com/hackerpain/domaining```
  - ```cd domaining```
  - ```source govalue.sh```
  - Use command ```value``` to find individual domain values by entering names
  - Use command ```bulk_value domains.txt time_interval``` to find bulk GD values for your bulk list (.txt file containing names, each name in a new line): you need to pass the domains.txt & a time interval like 1s, ```bulk_value expiredlist.txt 1``` if you don't want to delay betwen API requests, enter 0 instead of 1 (not recommended)
  


