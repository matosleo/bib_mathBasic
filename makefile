# Comandos do sistema operacional
# Linux: rm -rf 
# Windows: cmd //C del 
RM = rm -rf 

# Compilador
CC = g++

# Variaveis para os subdiretorios
SRC = ./src
INC = ./include
BIN = ./bin
OBJ = ./build
DOC = ./doc
LIB = ./lib

# Garante que os alvos desta lista nao sejam confundidos com arquivos de mesmo nome
.PHONY: all clean debug doxy doc direc

# Opcoes de compilacao
CPPFLAGS = -Wall -pedantic -std=c++11 -ansi -I$(INC)

ARCHIVE = ar

linux: mathbasic.a mathbasic.so prog_estatico prog_dinamico

windows: mathbasic.lib mathbasic.dll prog_estatico.exe prog_dinamico.exe

# linux

mathbasic.a: $(SRC)/funcoes1.cpp $(INC)/mathbasic.h
	$(CC) $(CPPFLAGS) -c $(SRC)/funcoes1.cpp -o $(OBJ)/funcoes1.o
	$(AR) rcs $(LIB)/$@ $(OBJ)/funcoes1.o
	@echo "+++ [Biblioteca estática criada em $(LIB)/$@] +++"

mathbasic.so: $(SRC)/funcoes1.cpp $(INC)/mathbasic.h
	$(CC) $(CPPFLAGS) -fpic -c $(SRC)/funcoes1.cpp -o $(OBJ)/funcoes1.o
	$(CC) -shared -fpic -o $(LIB)/$@ $(OBJ)/funcoes1.o
	@echo "+++ [Biblioteca dinâmica criada em $(LIB)/$@] +++"

prog_estatico:
	$(CC) $(CPPFLAGS) $(SRC)/main.cpp $(LIB)/mathbasic.a -o $(BIN)/$@

prog_dinamico:
	$(CC) $(CPPFLAGS) $(SRC)/main.cpp $(LIB)/mathbasic.so -o $(BIN)/$@

# Windows

mathbasic.lib: $(SRC)/funcoes1.cpp $(INC)/mathbasic.h
	$(CC) $(CPPFLAGS) -c $(SRC)/funcoes1.cpp -o $(OBJ)/funcoes1.o
	$(AR) rcs $(LIB)/$@ $(OBJ)/funcoes1.o
	@echo "+++ [Biblioteca estática criada em $(LIB)/$@] +++"

mathbasic.dll: $(SRC)/funcoes1.cpp $(INC)/mathbasic.h
	$(CC) $(CPPFLAGS) -c $(SRC)/funcoes1.cpp -o $(OBJ)/funcoes1.o
	$(CC) -shared -o $(LIB)/$@ $(OBJ)/funcoes1.o
	@echo "+++ [Biblioteca dinâmica criada em $(LIB)/$@] +++"


prog_estatico.exe:
	$(CC) $(CPPFLAGS) $(SRC)/main.cpp $(LIB)/mathbasic.lib -o $(OBJ)/$@

prog_dinamico.exe:
	$(CC) $(CPPFLAGS) $(SRC)/main.cpp $(LIB)/mathbasic.dll -o $(OBJ)/$@

# Alvo para a criação dos diretórios padrão de projetos.
direc:
	mkdir bin build doc include lib src test

# Alvo para a criação do arquivo Doxyfile.
doxy:
	doxygen -g

# Alvo (target) para a geração automatica de documentacao usando o Doxygen.
# Sempre remove a documentacao anterior (caso exista) e gera uma nova.
doc:
	$(RM) $(DOC)/*
	doxygen ./Doxyfile

# Alvo (target) usado para limpar os arquivos temporarios (objeto)
# gerados durante a compilacao, assim como os arquivos binarios/executaveis.
clean:
	$(RM) $(LIB)/* $(OBJ)/* $(BIN)/*