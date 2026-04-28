# Variáveis
JAVAC = javac
JAVA = java
OUT = out
SOURCE_PATH = src
SRC = src/Main.java src/Controllers/*.java src/Devices/*.java

all: clean build run

build:
	@mkdir -p $(OUT)
	$(JAVAC) -sourcepath $(SOURCE_PATH) -d $(OUT) $(SRC)

run:
	@$(JAVA) -cp $(OUT) Main

clean:
	@rm -rf $(OUT)
