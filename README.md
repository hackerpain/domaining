# Domaining Automation

![Powered by SaveBreach.com](https://media-exp1.licdn.com/dms/image/C561BAQGBgwds1YjXHg/company-background_10000/0?e=1591254000&v=beta&t=d7XqQom9CEbjIrNt4erKeoV_y-OpwOcKR7FnZhfTDGA)

A repo with simple useful scripts for domainers.
Currently has very basic GoDaddy value checker bash script just for demo of API usage and to make things more convenient when dealing with large number of domains. 
Will slowly add more scripts.

**Powered by [SaveBreach](https://twitter.com/savebreach)**

## Features
  - I might offer more powerful scripts should you need them, [reach out to me to discuss](https://www.namepros.com/members/save-breach.1033958/)
  - This repo utilises the Free GoDaddy API, and is simple to use, doesn't even need authentication which makes it convenient 
  - The GoDaddy API isn't heavily rate-limited which makes it easier to make free tools using it.
  - Currently, you can find bulk GoValue from a list of domains, by entering the domains and find similar & past sales by entering the domain through command line. This needs ```jq``` to be installed to process the JSON response. You should be able to run shell scripts on your system to use these.

# Instructions

You can create bash aliases out of the functions ```value```, ```bulk_value``` and ```pastsales``` functions in ```govalue.sh``` and ```gdpastsales.sh``` by adding them to your ```~./bashrc```

## Usage
  - ```git clone https://github.com/hackerpain/domaining```
  - ```cd domaining```
  - ```source govalue.sh```
  - ```source gdpastsales.sh```
  - Use command ```value``` to find individual domain values by entering names
  - Use command ```bulk_value domains.txt time_interval``` to find bulk GD values for your bulk list (.txt file containing names, each name in a new line): you need to pass the domains.txt & a time interval like 1s, ```bulk_value expiredlist.txt 1``` if you don't want to delay betwen API requests, enter 0 instead of 1 (not recommended)
  - Use command ```pastsales``` then enter the domain you would like to find past sales & similar sales of.
  
## Credits

Thanks to [SaveBreach](https://www.namepros.com/members/save-breach.1033958/) for conceiving the idea for a collection of free scripts for domaining automation.

Follow [SaveBreach](http://savebreach.com) on [Twitter](http://twitter.com/savebreach) and [LinkedIn](http://linkedin.com/company/savebreach)

Want your name here? Make a pull request with a script you may want to share with other domainers
  
 
  


