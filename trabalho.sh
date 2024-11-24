#!/bin/bash

sudo apt-get update && sudo apt-get install -y fortune

fortune > mensagem1.txt
fortune > mensagem2.txt
fortune > mensagem3.txt

cat mensagem1.txt mensagem2.txt mensagem3.txt > mensagens.txt

cp mensagens.txt mensagens_antiga.txt
fortune >> mensagens.txt

wc -l < mensagens.txt > linhas.txt

grep -o 'a' mensagens.txt | wc -l > letras.txt

ls -R /etc > saida.txt 2> erros.txt

ls -R /etc &> "saida_com_erros.txt"

cut -d ':' -f1 /etc/passwd > usuarios.txt

sort usuarios.txt > usuarios_ordenados.txt
