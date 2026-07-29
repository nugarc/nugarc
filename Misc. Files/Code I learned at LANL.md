# Computer, programing, and terminal things I learned at LANL
 **By Cragun Scott**

 _Contributions by:_ **Ray Heil, Ivan Gonzalez, and stack overflow.**

My mentors: Alex and Kendra Long: Along@lanl.gov, Keadyk@lanl.gov

This is just a few things I learned from Ray and other on the job stuff. some of it is shell script other of it is code lingo, tips, and sequences that may be useful.


## Terminal Commands
---
 <!----------- Terminal Commands  -------------->
- This is a list of useful terminal commands and operations that I learned and used
### Commands
| Command | Name | Syntax | Description |
| ------- | ---- | ------ | ----------- |
| rm -rf  | forced recursive remove | rm -rf \<dir_name> | A recursive remove that deletes all files and directories contained in this directory |
| clear | Clear | clear | Clears the print out, similar to ^l (ctrl+l) except it removes entirely what was printed |
| chmod | Change Modifier | chmod +x \<filename.sh> | Allows you to modify if a file is readable, writable, executable, and so on. Use a " + "(plus) to make it readable etc, and a " - "(minus) to make it not readable etc.<br> Note: when making executable script files you need to make the executable by using this command |
| source | source | source \<filename> | I used this every time I wanted to load changes I made to my .bashrc file |
| pwd | Presant Working Directory | pwd | this prints out the ablolute path to your current location |
| ctrl+z  | Background | ctrl+z | Places the current task, such as vim, in the background. You can can multiple items in the background |
| fg  | Foreground | fg <br>fg \<num> | Brings a task from the background. If multiple tasks are in the background the number entered in num will pop that numbered background task to the foreground. |
| tail -f | Following tail | tail -f \<filename> | Allows you to follow a file that is being appended to in the background. When a file is updated it will print the new line. |
| echo -e | echo excaped chars | echo -e "\n" | The -e allows echo to print the excaped characters such as "\n" |
| tar | Tar | to pack up: <br> `tar czvf <dir_name>.tar.gz <dir_name>` <br> To unpack: <br> `tar xzvf <dir_name>.tar.gz <dir_name>` | Allows you to compress files, like zip files. To compress use `czvf` (create g-zipped verbose file), to decompress use `xzvf` (extract g-zipped verbose file). Name the compressed directory with an `.tar.gz` extention. The tar arcive remembers the exact names of all the files and dir's reguardless of the `.tar` files name. |
| ctrl+r | Search History | `(reverse-i-search)'<to_search>': <search_result>` | Allows you to search your shell history. The prompt will switch to `(reverse-i-search)'':`. As you type the search prompt will update like so: `(reverse-i-search)'grep': grep -E "here\|there" <filename>`. To toggle trough the different search results use `ctrl+r`. once a command is found, press enter to load it into the cmd and enter again to exicute it.
|  |  |  |  |


<!-- This is the same information as in the table above, Its just easier to read if the markdown in not compiled

#### Commands
- rm -rf \<dir_name>  
	- (a recursive remove that deletes all files and directories contained in this directory)
- clear  
	- (clears the print out, similar to ^l (ctrl+l) except it removes entirely what was printed)
- chmod	 	Change Modifier
	- (allows you to modify if a file is readable, writable, executable, and so on. Use a " + "(plus) to make it readable etc, and a " - "(minus) to make it not readable etc.)
	- when making executable script files you need to make the executable by using this command
	- syntax: chmod +x <filename.sh>
- source
	- I used this every time I wanted to load changes I made to my .bashrc file
	- Syntax: source \<filename>
- pwd		Present working directory
	- this prints out the ablolute path to your current location 

##### foreground and background
- ctrl+z 
	- (places the current task, such as vim, in the background)
	- (you can can multiple items in the background)
- fg <num>
	- (brings a task from the background. If multiple tasks are in the background the number entered in num will pop that numbered background task to the foreground.)
-->


### Operators

| Operator | Name | Syntax | Description |
| -------- | ---- | ------ | ----------- |
| &  | All at once |\<command> & \<command> & ... <br> or \<command> & | exicutes multiple commands at the same time.<br> If used after one command (\<command> &) it allows you to enter commands while first command is running |
| &&   | And | \<command> && \<command> && ...| exicute next command if previous command didnt fail |
| ;    | All sequencialy |  \<command>; \<command>; ... | exicute next command after previous command even if previous command fails. this effectively simulates an enter. |
| \|\| | Or |\<command> \|\| \<command> \|\| ... | exicute next command if previous command fails |
| >    | Write too file| \<command> > \<filename> | Writes output to a file. Will override data in file if data exists in file |
| >>   | Append to file |\<command> >> \<filename> | Appends output to the bottom of the file. Will not override existing data in the file |
| \|   | Pipe | \<command> \| \<pipe command> | Pipes or modifies the command output as specified by the pipe command. <br>Pipe commands can be: grep, tee, head, tail, sed, .. |
| \| tee | Tee | \<command> \| tee \<filename> | Prints output to the terminal and also saves it to the file indicated |
| \| grep| Grep | \<command> \| grep \<grep args> | Runs the command and prints only the outputs that satisfy the grep |
|  |  |  |  |  
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |


<!-- This is the same information as in the table above, Its just easier to read if the markdown in not compiled
- &  
	- (you can execute several commands by using this.) 
	- Syntax: \<command> & \<command> & ...
- ;  
	- (similar to & (I think) states that a command is done.) 
	- Syntax: \<command>; \<command>; ...
- >
	- Overwrite to a file
- >>

	- (
- | 	pipe
	- (used to modify the printed output of the file)
	- Syntax: \<cmd> | \<cmd>
	The following are commands used after the pipe symbol
	- tee \<filename>
		- )prints output to the terminal and also saves it to the file indicated)
	- grep \<args>
		- runs the command and prints only the outputs that satisfy the grep
	- 
-->


## The .bashrc
---
<!-----------   The .bashrc   -------------->
- comments are made with the # for all bash files

### Common things in my .bashrc

#### Alias
- alias's need to be saved in the .bash
- here are common alias's I used
``` sh
alias clr="clear"

# ls aliases
alias ls="ls --color=auto"
alias ll="ls -lh"
alias la="ls -a"
alias lt="ls -lht"
```

#### Custom prompt
- this is what I used to change and customize my prompt on each machine I was running
	- place in .bashrc
``` sh
# for a colored prompt
function color_my_prompt {
  local __cur_time="\[\033[35m\]\D{%H:%M:%S}"
  local __user_and_host="\[\033[01;32m\]\u@\h"
  local __cur_location="\[\033[01;33m\]\w"
  local __git_branch_color="\[\033[36m\]"
  local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
  local __prompt_tail="\[\033[37m\]\n$"
  local __last_color="\[\033[00m\]"
  export PS1="$__cur_time $__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt
```


### More information refferences
- https://www.atlassian.com/git/tutorials/dotfiles


## Vim
---
<!-----------     Vim     -------------->
- I used vim a bit, and although it isn't my preferred editor, It was nice to use on occasions	

### Help
- you can look up anything from the help page. 
	``` sh
	:help		# this will split the screan with the help window
	# navigate with the hjkl or arrow keys
	# if you huver over a blue word (a hyper link) you can go to that page by doing the following:
	ctrl+] 		# to go to that page
	ctrl+t 		# or ctrl+o to go back to the previous page
	```

### keyboard shortcuts from Normal mode
| Command | Name | Syntax | Description |
| ------- | ---- | ------ | ----------- |
| U | Undo | `U` | undoes the last operation |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
|  |  |  |  |
| ctrl+t | Tags |  | This allows you to go the the definition of something in the code. In order to do this you need to create a ctags file in the src directory. To do this, enter the following command on the command line: `ctags -R * `|
| ctrl+b |  |  |  |
|  |  |  |  |

| shift + r | Replace mode |  | enters replace or write over mode |
| ctrl+w+s | split screen |  | splits the screan horisontaly |
| ctrl+w+v |  |  | splits the screan vertical |
| ctrl+w w |  |  | switches the selected split screen when screan is split |
|  |  |  |  |
|  |  |  |  |
| Shift+Z+Z |  |  | exit with saving. Similar to :x and :wq |
| Shift+Z+Q |  |  | exit without saving. Similar to :q! |


<!--
- shift + r
	- enters replace or write over mode
- ctrl+w+s 
	- splits the screan horisontaly
ctrl+w+v
	- splits the screan vertical
ctrl+w w
	- switches the selected split screen when screan is split
Shift+Z+Z
	- exit with saving. Similar to :x and :wq
Shift+Z+Q
	- exit without saving. Similar to :q!
-->
### Commands (: ) and Functions

| Command | Name | Syntax | Description |
| ------- | ---- | ------ | ----------- |
| :e | Open File | `e <filename>` | opens a file in current pain (known as a buffer) |
| :sp | Horisontal Split | `:sp <filename>` | opens a file in a horizontal split pain |
| :vs | Vertical Split | `:vs <filename>` | opens a file in a vertical split pain |
| :bp <br> :bn | Switch Buffer | | allows you to navigate to the next or previous file (or "buffer") |
| / | Search | `/s <keyword>` | Searches for the Keyword in the file. Press n to move to the next found item and shift+n to go to the previous item |
| :s/srch/rep/g | Search and Replace | `:<loc>s/<search>/<to_replace>/<cons>` | Searches and replaces the items found. <br> The `loc` is the location in the document from `n` to `m`. Use % if you want the entire document. <br> The `cons` is replace constraints. If you want to replace every match in the document use `g`. |

<!--
- :e \<filename>
	- (opens a file in curent pain)
- :sp \<filename>
	- (opens a file in a horizontal split pain)
- :vs \<filename>
	- (opens a file in a vertical split pain)
- :bp or :bn
	- (allows you to navigate to the next or previous file (or "buffer")) 
- 

#### Copy and replace
- :s \<keyword>
	- (searches for the Keyword in the file)
-->

### Vim presets
- The .vimrc file is where you can save your custom vim settings


## Bash Scripting
---
<!----------- Bash Scripting -------------->
- you can use bash scripts to auto run a function, simulation, or program call multiple times and with different arguments

### Defining script files
To start a bash script place `#!/bin/sh` (in general) (or `#!/bin/bash` if you are running a bash terminal) on the first line of the script.

To designate a bash script file name it `<bashscript_name>.sh`

### To running \<bashscript.sh> files 
- To run \<bashscript.sh> files run the following command 
- `./<bashscript.s> <args>`
- If your `~/.local/bin` is in your `PATH` you can place your `<bashscript.sh>` file in `~/.local/bin` and you will be able to exicute your script file no matter where you are on the machine.
- You can also add a folder of your scripts to the path by running the following: `export $PATH:<path/to/add>`
- If you want this to be perminate, you need to add `export $PATH:<path/to/add>` into your .bashrc. ( if you do this, it would be good to have an if statement that checks if the current `$PATH` is equal to your `$DESIRED_PATH` before you update your `$PATH`)
- (You can also do this for `~/.local/bin` if it is not included in your path)


### Bash Scripting 

| Command | Name | Syntax | Description |
| ------- | ---- | ------ | ----------- |
| Variables | ________ | ________ | ________|
| $ | Variable indicator | `$<var_name>` | is used to identify a variable |
| $@ | all args | `$@` | all aguments given when the script is ran |
| $\<num> | n'th arg | `$<num>` | the n'th agument that is provided when the script is ran |
| ${var} | Preferd syntax | `${var}` | The prefered way to call a variable is to soround ues a `$` followed by the variable name sorounded by curly braces. This ensured that the exact name of the variable is used. |

<!--
### Variables
- $ 
	- is used to identify a variable
- $@
	- all aguments given when the script is ran
- $\<num>
	- the n'th agument that is provided when the script is ran
- $
-->
### Functions
- Here is the syntax for declaring and calling a function without args in you bash script
	``` sh
	function <Name> {	# Declares the function name
		<content>
	}	

	<Name>				# calls the function
	```

- Here is the syntax for declaring and calling a function without args in you bash script
	``` sh
	function <Name>() {	# Declares the function name
		<content>
		$1		# arg1
		$2 		# arg2

	}	

	<Name> <arg1> <arg2>				# calls the function
	```
(refrence: https://tecadmin.net/create-bash-functions-with-arguments/)


#### If Statements
- Basic syntax
	``` sh
	if [ arg ]		# Alwasy include a space after 'arg' and ']'
	then
		<command>
	elif
		<command>
	else
		<command>
	fi
	```

- This if block checks for a directory of <name> and makes it if it doesnt exsist
	- The following are modifiers that check different thing. The if block below uses -d
	``` sh
	if [ ! -d $Location/<Name> ]
	then
		echo "<Name> doesnt exist -e\n making <Name> dir"
		mkdir $Location/<Name>
	else
		echo <Name> exist 
	fi
	``` 

#### If Statement Operators
Logic Operator
| Operator| Name | 
| -------- | ---- |
| -a  | And |
| -o  | Or  |
| !   | Not |
| -gt | Greater than |
| -lt | Less than |
| -ne | Not Equal |


File Checking Operators
| Operator | Syntax | Description |
| -------- | ------ | ----------- |
| -L |-L \<FILE> | FILE exists and is a symbolic link (same as -h)|
| -h |-h \<FILE> | FILE exists and is a symbolic link (same as -L)|
| -d |-d \<FILE> | FILE exists and is a directory|			
| -w |-w \<FILE> | FILE exists and write permission is granted|
| -x |-x \<FILE> | FILE exists and execute (or search) permission is granted|
| -r |-r \<FILE> | FILE exists and read permission is granted|
| -s |-s \<FILE> | FILE exists and has a size greater than zero|
|   |   |   |
|   |   |   |
|   |   |   |
- refferences
	- https://www.freecodecamp.org/news/bash-scripting-tutorial-linux-shell-script-and-command-line-for-beginners/
	- https://www.cyberciti.biz/faq/howto-check-if-a-directory-exists-in-a-bash-shellscript/
		
#### For loops
- basic syntax, iterats from 1 to 5
	``` sh
	for i in in {1..5}
		do
			<itterate over numbers>
		done
	```

- you can itterate over a numbered list by doing the following
	``` sh
	#!/bin/bash
	itter=( 2 4 8 9 16 20)		#include only spaces between numbers, no Commas
	for i in "${itter[@]}"
		do
			echo "$i"
		done
	```

- you can itterate over a sequence of numbers from 1 to \<num>
	``` sh
	#!/bin/bash
	VAR=<num>
	for i in $(seq $VAR)
		do
			<itterate over 'i'>
		done
	```

- you can iterate over every file in a directory
	- this example only iterates over .txt files
	- the "find" function looks for the files in the specified dir.
	- the "-name" option for "find" grabs everything that ends with ".txt"
	- the basename function strips the location and .txt and just leaves the files name.
	``` sh
	for file in $(find "../<LOCATION>/<LOACTION>" -name "*.txt")
				do
					filename=$(basename "$file" .xml) 
					echo "$filename"					# outputs the file name with an .xml 	extention instead of .txt
				done
	```
### Templates
- you can generate similar script files by using a template file
	- to do this you need a template file, Usually named `template` with no extention
- This replaces only one thing in the input file that is named `replace_me` with `to_this`, or what we are itterating over
	``` sh
	     sed 's/<replace_me>/<to_this>/g' template > <to_this>_file.sh	# creates a new file based on the template
	```
- to change multiple items
	``` sh
	cp templet <new_file_name> 	# create a copy of the template
	sed -i "s/<replace_me>/<to_this>/g" <new_file_name>		# modifys the copied file
	sed -i "s/<replace_me>/<and_this>/g" <new_file_name>
	sed -i "s/<replace_me>/<and_finaly_this>/g" <new_file_name>
	```
- if you use a loop it will look like this
	- you can also use other for loop styles (`i` can be text, or even a file name).
	``` sh
	# For loop over the specified nodes
	for i in {1..5}
	    do
	        sed "s/<replace_me>/$i/g" template > "$i"_file.sh	# creates a new file based on the 	template
			chmod +x "$i"_file.sh
	        <command> "$i"_file.sh  	# or to exicute: ./"$i"_file.sh
	    done
	```
### Example scripts
- here is an example of a test bash script that checks for a file or directory in a given folder
	``` sh
	#!/bin/bash
	echo checking for $1 dir 
	DirName="teal"
	if [ ! -d $DirName/$1 ]
	then
		echo "$1 doesnt exist -e\n making $1 dir"
		mkdir $DirName/$1
	else
		echo $1 exist 
	fi
	ls "$DirName"
	catfiles.sh "$DirName'/'$1'R'*" > "$DirName'/'$1'/outR.txt'"
	```

- this is one prints all the files with the given input name
	``` sh
	#!/bin/sh
	echo "======================="
	for f in $@; do
		echo -e "$f"
		cat "$f"
		echo 

	done
	```


## Markdown
---
<!-----------   Markdown    -------------->
Among other things, you can do the following in mark down.
- ` * [x] <text> ` or  `* [ ] <text> `  checkboxes
	- creates interactive checkboxes 
- `[//]: # (<comment>)`
	- this creates a coment that is not visible in display mode
	- comments need a blank line above them
- `<!-- "inline comment" -->`
	- you can also use HTML comments. <!-- inline comment --> These can be used inline
- `<br>` 
	- line break. is in html format

[//]: # (This is what a comment looks like in the code)
	

## GIT
---
<!-----------     GIT      -------------->

### SSH setup
- for our ssh keys we generated them using the following bash commands
	``` bash
	$cd ~						# - go to home directory
	$ ssh-keygen -t ed25519		# - generates secure key
	(prints out the key)		# - ed25519 is a more secure ssh key
	$ cat .ssh/id_ed25519.pub 	# - prints out ssh key that you can  
	(key prints out here)		# paste into your git profile
	```
### Commits
- you can remove a commit before it has been pushed by doing the following: `git reset --soft HEAD~<num>`
	- the num is the number of how may commits you want to reset to.

### Branches
- To move to another branch use `git checkout <HASH or Branch_name>`
- to create and go to a new branch you can use `git checkout -b <Branch_name>`

### file management
- you can see the differance of the staged files by doing the following: `git diff --staged`
- you can restore a file from a previous commit by doing the fillowing: `git checkout <HASH> <File_name>`

## Python
---
 <!-----------   Python    -------------->
### Matplotlib
To display the data we obtained we used Matplotlib.
- The following is a basic tutorial from https://www.geeksforgeeks.org/graph-plotting-in-python-set-1/ on how to graph using Matplotlib. 
	``` python
	import matplotlib.pyplot as plot

	x1 = [1,2,3]
	y1 = [2,4,1]
	# plotting the line 1 points 
	plot.plot(x1, y1, label = "line 1")
	
	# line 2 points
	x2 = [1,2,3]
	y2 = [4,1,3]
	# plotting the line 2 points 
	plot.plot(x2, y2, label = "line 2")
	
	# naming the x axis
	plot.xlabel('x - axis')
	# naming the y axis
	plot.ylabel('y - axis')
	# giving a title to my graph
	plot.title('Two lines on same graph!')
	
	# show a legend on the plot
	plot.legend()
	
	# function to show the plot
	plot.show()
	```
- The following is an example of how we produced a logrithmic graph for our data using Matplotlib.
	``` python
	# Get the data
	data_1 = [100, 50, 25, 12.5, 6.25]  # divide by 2
	data_2 = [100, 60, 36, 21.6, 12.96] # divide by 2 + 10 %
	data_3 = [100, 75, 50, 25, 0]       # linear

	# Create the plot
	fig, ax = plt.subplots() 

	# Load the Data
	ax.plot(nodes, data_1, label = "Halfed")
	ax.plot(nodes, data_2, label = "Half add ten percent")
	ax.plot(nodes, data_3, label = "Linear")

	# Set up the plot's style
	ax.set_xscale('log', base=2)
	plt.xticks([1, 2, 4, 8, 16], ["1", "2", "4", "8", "16"])   
	plt.xlabel('Log_2 Incroments')
	plt.ylabel('Values')
	plt.title('Basic plot of logrithmic sub 2 scailing')
	plt.legend()

	# Display the data
	plt.show()  
	```

#### Seaborn
- Seaborn is a frontend styleizer for matplotlib
	- https://seaborn.pydata.org/

### Pandas
We used pandas to import data files and then extract data from them. This could have been done with numpy, but numpy had a hard time importing strings.

- This is an example of how to import a csv file
- ``` python
	import pandas as pd

	filename = "Example_data.txt"
	data = pd.read_csv(filename)

	print(data)
	print(data["mode"])
	```
	############### expected output ###############
	``` 
	row     colum   mode        lines  
	0       1       write       100  
	1       1       write       1000  
	2       1       write       10000  
	3       1       read        100  
	4       1       read        1000  
	5       1       read        10000  
	6       1       exitute     100  
	7       1       exitute     1000  
	8       1       exitute     10000  

	write  
	write  
	write  
	read   
	read   
	read   
	exitute
	exitute
	exitute
	```
	This is what the csv file would look like
	```
	row,colum,mode,lines
	0,1,write,100
	1,1,write,1000
	2,1,write,10000
	3,1,read,100
	4,1,read,1000
	5,1,read,10000
	6,1,exitute,100
	7,1,exitute,1000
	8,1,exitute,10000
	```
	- the datatype for "data" is called a panda dataframe. These act and look like a dictionary
- to iterate over and plot data in a panda data frame, we do the following:
	```python
	import pandas as pd
	import matplotlib.pyplot as plt

	filename = "Ext.csv"
	data = pd.read_csv(filename)

	graph = data[data["mode"] == "read"] 

	fig, ax = plt.subplots()  
	plt.xlabel('lines')
	plt.ylabel('Time (S)')
	plt.title('Balenced Problem: Total Time of 1000 Message size')
	ax.plot(graph["lines"], graph["row"], label = "DD")
	plt.legend()
	plt.show()
	```
	- you can create sub dataframes by doing the following
		``` python
		sub_data = main_data[main_data["value"] == number] 
		sub_sub_data = sub_data[sub_data["scale"] == scailer]
		sub_sub_data["this_thing"]
		```
		- in this example, `sub_sub_data` will only have the results that come from the `value` and `scale` filters
- If you want to iterate over something and only want the graph to show when there is enough valid data, you can do the following
	``` python
	x_values = [1, 2, 3, 4, 5]

	filename = "example2.csv"
	data = pd.read_csv(filename)
	for iterate in [10, 20, 30, 40, 50]:
	    graph = data[data["size"] == iterate]
	    Line1 = graph[graph["mode"] == "Line1"]
	    if not Line1.empty:
	        fig, ax = plt.subplots() 
	        if Line1["result"].size == 5:
	            ax.plot(node_values, Line1	["result"].astype(float), label = 	"Line1")
	    if not Line1.empty:
	        plt.xticks(x_values, ["1", "2", "3", "4", "5"])   
	        plt.xlabel('X asis')
	        plt.ylabel('Y axis')
	        plt.title("Important title")
	        plt.legend()
	        plt.show()
	```

## LATEX
---
<!-----------    LATEX     --------------> 

### Basic Commands
#### Images
- you can include an image using `\includegraphics[opt]{file_name}`
	- this can take several options. if you are using more than one just separate them with a comma.
		- Rotate: `angle=90,origin=c`
		- Crop: `trim={left bottom right top},clip`
		- Set width (to be inline with the column): `width=1\linewidth`



### Beamer




## Software and Other Resorces
---
<!----------- Software and Other Resorces  -------------->
### Visual Studio Code

### Jupyter Notebook
- I used a jupyter notebook extention for VScode and it was realy nice. One thing to remember is that the hole thing is a long code file. You can access code from previous blocks.

### ink scape
- you can save output as .svg files that auto generate their content. This makes them more compact while still having a sharper image

### Python Librarys
Cupy is a python library that allows you to offload to the GPU.
https://cupy.dev/

### Repos

https://github.com/lanl/branson

https://github.com/lanl/pyDNTNK