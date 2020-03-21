BEGIN		{	
		  begin = 0
		}

/^(\$\$\$)/	{
		  begin = 1
		}

/^(\!\!\!)/	{ 	
		  begin = 0
		}

		{
		  if(begin == 1){
			gsub(/\ /, "_", $0)
			print $0
		  }
	  	}	  
