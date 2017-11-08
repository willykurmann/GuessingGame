all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo "## guessinggame.sh" >> README.md
	echo "README.md created at: $$(date)" >> README.md
	echo "" >> README.md
	echo "Lines of code: $$(wc -l guessinggame.sh|egrep -o '[0-9]+')" >> README.md
	
clean:
	rm README.md