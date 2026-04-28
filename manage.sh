#!/bin/bash

OUTPUT_DIR="out"

case "$1" in
    build)
        echo "Compilando..."
        mkdir -p $OUTPUT_DIR
        javac -d $OUTPUT_DIR Main.java src/Controllers/*.java src/Devices/*.java
        ;;
    run)
        if [ -d "$OUTPUT_DIR" ]; then
            java -cp $OUTPUT_DIR Main
        else
            echo "Execute o build primeiro!"
        fi
        ;;
    clean)
        echo "Limpando..."
        rm -rf $OUTPUT_DIR
        ;;
    *)
        echo "Uso: ./manage.sh {build|run|clean}"
        ;;
esac
