#!/bin/bash	
	pushd ~/Desktop;
	cd gits/txts	


	local VAR=$@;
if [[ -z $VAR ]]; then
        VAR=$(xclip -o);
	echo ${yel};     xclip -o;    		        printf "\n"; echo ${end};
			 ls -a | grep ".txt"; 		printf "\n";

	read -p "which .txt file?${end} ${cyn}(or just) type a name: ${end}:" -r nome;
	xclip -o >> $nome.txt;
	
else 
	
	echo ${yel};     echo $VAR  		  printf "\n";  echo ${end};
		         ls -a | grep ".txt";     printf "\n";
			 
	read -p "which .txt file?${end} ${cyn}(or just) type a name: ${end}:" -r nome;
	echo $VAR >> $nome.txt;
fi
	popd;


