	{ for(i = 1; i <= NF; i++){
		if(match($i, /[A-Z]\.[A-Z][a-z]+/) > 0){
			printf("%s.%s ",
			 	substr($i, match($i, /\.[A-Z]/) + 1),
				 substr($i, match($i, /[A-Z]/), 1))
		       }
		else printf("%s ", $i)
	       }
	       print "\n"
        }
