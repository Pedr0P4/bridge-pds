#!/bin/bash

OUTPUT_DIR="out"
SOURCE_DIR="src"

clear_terminal() {
    clear
}

case "$1" in
    build)
        echo "Copiando e compilando arquivos de $SOURCE_DIR..."

        mkdir -p $OUTPUT_DIR

        javac -d $OUTPUT_DIR \
              $SOURCE_DIR/Main.java \
              $SOURCE_DIR/Controllers/*.java \
              $SOURCE_DIR/Devices/*.java

        if [ $? -eq 0 ]; then
            echo "✅ Build concluído com sucesso em /$OUTPUT_DIR"
        else
            echo "❌ Erro na compilação!"
            exit 1
        fi
        ;;

    run)
        if [ -d "$OUTPUT_DIR" ]; then
            echo "🚀 Iniciando aplicação..."
            echo "------------------------------"
            java -cp $OUTPUT_DIR Main
            echo "------------------------------"
        else
            echo "⚠️ Erro: Pasta '$OUTPUT_DIR' não encontrada. Rode: ./manage.sh build"
        fi
        ;;

    clean)
        echo "🧹 Limpando artefatos de build..."
        rm -rf $OUTPUT_DIR
        echo "Pronto!"
        ;;

    *)
        echo "Uso: ./manage.sh {build|run|clean}"
        echo "Exemplo: ./manage.sh build && ./manage.sh run"
        ;;
esac
