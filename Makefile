bash-git-aliases : aliases make.sh
	./make.sh bash

git-aliases : aliases make.sh
	./make.sh git	

clean : 
	rm -f bash-git-aliases git-aliases

all : bash-git-aliases git-aliases
