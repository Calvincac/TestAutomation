# Avenue Code Assignment

In order to run the project, please follow the instructions below.
The project should be run on a Linux machine.

### Prerequisites

Linux and Chrome (versions higher than 66)

## Ruby and Cucumber Setup
In order to install everything that we need to run cucumber projects please, follow the instructions on the link [Ruby Setup](https://github.com/rvm/ubuntu_rvm)

Once you have done all the procedures from the link above you should download the repository
and run the following commands:

```
gem install bundler

```

```

cd AvenueCodeAssigment 

```

```
bundle install 

```

As this application is using user and password to log in the system. It is required that you create a file with user and password as it is displayed below.

```
touch user_and_passoword.txt 

```

You must add your credentials as you can see below:

```
user:calvincac@hotmail.com
password:arandompassword

```

Avoid adding spaces in the file.


## Cucumber Scenarios

In order to run the scenarios on the project you could use the commands below:

```
cucumber --tags @check_tasks

```
If you run the command above you will run the test automation scenarios about creating tasks and and checking them.


```
cucumber --tags @check_subtasks

```
If you run the command above you will run the test automation scenarios about creating subtasks and checking them