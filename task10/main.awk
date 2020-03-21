	{ for(i = 1; i <= NF ; i++){
		if($i == 0) continue;
		if( i != NF) printf("%dx^%d + ",$i, NF - i);
		else printf("%d\n", $i);
	  }
	}
