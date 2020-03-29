all: README.md

README.md: guessinggame.sh
	touch README.md
	echo "#Peer-graded Assignment: guessinggame.sh" > README.md
	echo $$(date) >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
