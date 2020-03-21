#!/usr/bin/awk
$0 !~ /^;/	{sum += NF}
END		{print sum}
