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
  - Use command ```bulk_value your_portfolio.txt``` to find bulk GD values for your portfolio names (.txt file containing names, each name in a new line)
  


