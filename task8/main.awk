BEGIN			{ a = 0 }

			{ for(i = 1; i <= NF; i++){
		  		for(k in keys){
					if(index($i, keys[k]) > 0){
						gsub(keys[k], replacement[keys[k]], $i)
					}
				}
				printf("%s ", $i)
		  	  }
		  	  printf("\n")
	  		}		  

/^\ *(#replace)/	{ replacement[$2] = $3
       		  	  keys[a] = $2
		  	  a += 1	  }
