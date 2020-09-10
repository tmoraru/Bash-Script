# Bash and Sh

## Shell & Bash
* The shell is the software that interprets and executes the various commands that we type in the terminal.
* Bash is a particular shell. It stands for Bourne Again Shell. Some other examples of shell are sh(bourne shell), csh(c shell), tcsh(turbo c shell) etc.

### Explaning commands 

* #! - set the env for implimenting the script
* #!/bin/bash - is the most common shell used as default shell for user login of the linux system.
* echo -  is a built-in command in the bash and C shells that writes its arguments to standard output.
15 ways to use echo  https://www.tecmint.com/echo-command-in-linux/
<img width="646" alt="Screenshot_1956" src="https://user-images.githubusercontent.com/13994900/92766289-b146c480-f35b-11ea-86fa-8736e0c5e56d.png">
## How to print a line of text ?

```
#!/bin/bash
echo "Hello World"

```
### How to automate 3 lines of code just in one line, using echo ?
```
#!/bin/bash 

echo -e "Hello World 1 \n \nHello World 2 \n \nHello World 3"
```
### How to install a package using variables and values ? 

```
#!/bin/bash 

# set variable package to httpd
package="httpd"

# call package with yum command 
yum install $package -y

# call package with systemctl command
systemctl start $package

```

### How to install multiple packages using var and values ?

```
#!/bin/bash 

# set variable package to httpd
package="httpd"
package2="vim"
package3="curl"

# call package with yum command 
yum install $package $package2 $package3 -y
echo $?
sleep 5
# call package with systemctl command
systemctl start $package
echo $?
```
### Automating commands of installing multiple packages, using variables and list of values

```
#!/bin/bash 

# set variable package to httpd
package=(httpd vim curl wget git)

#echo ${package[*]}

# call package with yum command 
yum install ${package[*]} -y
echo $?
sleep 5
## call package with systemctl command
systemctl start ${package[0]}
echo $?
```
