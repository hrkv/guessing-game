all:
	touch README.md
	echo "# GUESSING GAME" > README.md
	echo "" >> README.md
	echo "lines count:" >> README.md
	cat guessinggame.sh | wc -l >> README.md
	echo "code:" >> README.md
	echo "\`\`\`" >> README.md
	cat guessinggame.sh >> README.md
	echo "\`\`\`" >> README.md
	echo "created at:" >> README.md
	date -R >> README.md
