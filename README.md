# Domaining Automation

![Powered by SaveBreach.com](https://media-exp1.licdn.com/dms/image/C561BAQGBgwds1YjXHg/company-background_10000/0?e=1591254000&v=beta&t=d7XqQom9CEbjIrNt4erKeoV_y-OpwOcKR7FnZhfTDGA)

A repo with simple useful scripts for domainers, that work out of the box, without much config.

Domaining, in the recent years, involves a lot more work than can be managed manually. To be able to efficiently do this work, you need to achieve the right balance between *what you are doing by hand* and what can be automated. This is the core idea behind this of this project.

## To-do's

  - ~~Automation to bulk fetch GD value of your portfolio.~~ **WIP => create more powerful version** 
  - ~~Command-line tool to fetch GD value of domains manually.~~
  - ~~Command-line tool to fetch GD Past & Similar sales **alongwith Year of Sale** domains manually.~~
  -   WIP => Save output in CSV/TXT format, and work with CSV bulk input.
  -   WIP => SPA (Single Page Application) that can be ran in browser as an alternative to shell scripts.
  -   Basic portfolio management, and more features... (suspense)
  -   You suggest! [Make an Issue? PM me?]

Will slowly add more scripts, stay tuned!

**<Powered by [SaveBreach](https://twitter.com/savebreach)/>**

## Features

  - More featured, powerful scripts can be made available as per need, [reach out to me to discuss](https://www.namepros.com/members/save-breach.1033958/)
  - This repo utilises the Free GoDaddy API, and is simple to use, doesn't even need authentication which makes it convenient 
  - The GoDaddy API isn't heavily rate-limited which makes it easier to make free tools using it.
  - Currently, you can find bulk GoValue from a list of domains, by entering the domains and find similar & past sales by entering the domain through command line. This needs ```jq # sudo apt-get install jq or, using your favorite package manager``` to be installed to process the JSON response. You should be able to run shell scripts on your system to use these scripts.
  

# Instructions

You can create bash aliases out of the functions ```value```, ```bulk_value``` and ```pastsales``` functions in ```govalue.sh``` and ```gdpastsales.sh``` by adding them to your ```~./bashrc```

```sh
echo "source path/to/repo/domaining/gdvalue.sh" >> ~/.bashrc
echo "source path/to/repo/domaining/gdpastsales.sh" >> ~/.bashrc
source ~/.bashrc
```
For ```bulk_value```, make sure, your *input domain list* is in the same format as [this list, *.txt file*](https://github.com/hackerpain/domaining/blob/master/domains.txt).

You can test out ```bulk_value``` by using the following command,

```sh
bulk_value ./domains.txt 0.5 # You can extend or, reduce the sleep value (2nd argument) between 0.1 to 1 or, more depending on API throttling
```
With larger lists, ```bulk_value``` results may become *unreliable.*

And you are good to go.

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

## Screenshots
 ![Bulk GoValue](https://i.imgur.com/xLSvzNK.png)
 ![Individual GoValue](https://i.imgur.com/UjCNjhk.png)
 ![Past & Similar GoValue Sales Data with Year info](https://i.imgur.com/5U6NfF2.png)
