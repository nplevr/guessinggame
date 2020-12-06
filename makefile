all: README.md guessinggame.sh 

README.md: guessinggame.sh 
	touch README.md
	echo "This is my repo for the bash, make, git and github assignement (The Unix Workbench)  " > README.md
	echo "Files: *makefile, guessinggame.sh, README.md*(autocreated from makefile)  " >> README.md
	echo "The file **guessinggame.sh** has **`cat guessinggame.sh | wc -l`** lines.  " >> README.md	
	echo "README.md created: `date`  " >> README.md

clean: 
	rm -f README.md
