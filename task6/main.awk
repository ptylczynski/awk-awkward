#!/usr/bin/awk
/Imie/	{ sum = 0 }
	{ sum += $3 }
END	{ printf("lacznie %d", sum) }
