# Variáveis
JAVAC = javac
JAVA = java
OUT = out
SRC = Main.java src/Controllers/*.java src/Devices/*.java

all: clean build run

build:
	@mkdir -p $(OUT)
	$(JAVAC) -d $(OUT) $(SRC)

run:
	@$(JAVA) -cp $(OUT) Main

clean:
	@rm -rf $(OUT)
