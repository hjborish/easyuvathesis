NAME="thesisdraft"
TNAME="titlepageonly"

all: thesisdraft

thesisdraft:
	latex $(NAME)
	latex $(NAME)
	bibtex $(NAME)
	bibtex $(NAME)
	latex $(NAME)
	latex $(NAME)

nagcheck:
	latex $(NAME)

titlepage:
	latex $(TNAME)
	latex $(TNAME)

pdf:
	dvips -t letter $(NAME) -o $(NAME).ps
	ps2pdf $(NAME).ps
	dvips -t letter $(TNAME) -o $(TNAME).ps
	ps2pdf $(TNAME).ps
