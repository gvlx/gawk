function printarray(n, x,   i) {
	for (i in x) {
		if (isarray(x[i]))
			printarray((n "[" i "]"), x[i])
		else
			printf "%s[%s] = %s\n", n, i, x[i]
	}
}

BEGIN {
	print readall(ifile)
	print x, y, z
	#print zebra[0], zebra[3]["foo"], zebra[3]["bar"]
	printarray("zebra", zebra)
}
