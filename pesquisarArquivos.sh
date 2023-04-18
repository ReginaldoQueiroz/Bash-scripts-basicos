#!/bin/bash

echo  "1)-- Criar arquivos"
echo  "2)--- remover arquivos"
echo  "3)--- pesquisar"
echo  "0)--- Sair "

echo "DIGITE A RESPOSTA:"
read resp


case $resp in

    1)
    x=1
    echo -n "digite o numero de arquivos:"
    read qtd
    while [ $x -le $qtd ]
   	 do
    	  echo -n "Eu_sou_o_Arquivo$x"> arquivo$x.txt
   		 x=$(( $x + 1))
    			done    
    ;;

    2)
    echo "1)---- Apagar todos os arquivos "
    echo "2)----Apagar arquivo especifico"
    read resp2
   	case $resp2 in
	     1)	
             rm arquivo*
	     ;;
             2)
	     echo "Digite o nome do arquivo /:"
	     read nomearquivo
	     rm $nomearquivo.txt #ou a extensão que voce prefirir 
	     ;;
esac   

    ;;

    3)
     echo "digite o conteudo da pesquisa /:"
     read name
     
     find . -name "*.txt" -print0 | xargs -0  grep --color "$name" && echo "Foi encontrado!" || echo "Arquivo não encontrado" #Altere extensao do arquivo aqui 

     exit 0
   
    ;;

   0)
    echo "####fim do programa####"
    exit 0
    ;;

  *)
    echo -n "unknown"
    ;;
esac
