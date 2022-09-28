README.md:
	echo "## Guessing Game – Unix Assignment" > README.md
	echo "" >> README.md
	echo "Last run: " >> README.md
	date +"%H:%M on %b %d %Y" >> README.md
	echo "" >> README.md
	echo "Number of lines in shell script: " >> README.md
	cat makefile | wc -l >> README.md
