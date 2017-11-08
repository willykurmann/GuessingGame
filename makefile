all: README.md

README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo "## guessinggame.sh" >> README.md
	echo "Make date:" >> README.md
	date >> README.md
	echo "" >> README.md
	echo "Number of lines of codes:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	
clean:
	rm README.md