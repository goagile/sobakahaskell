
TEMP = tmp

run: build
	./$(TEMP)/$(NAME)

build: clear temp
	ghc $(NAME).hs -o $(TEMP)/$(NAME) -hidir $(TEMP) -odir $(TEMP)

temp:
	mkdir $(TEMP)

clear:
	rm -rf $(TEMP)
