@echo off

:: Alterar a pasta NFe de acordo com o cliente. E.g. NFE-1612
set caminho=%syslink%\NFe2

set _letraUnidade=%syslink:~0,2%
set mes_atual=%date:~3,2%-%date:~6,4%

echo Sistema esta instalado no drive %_letraUnidade%

mkdir %temp%\PDFEspelho
mkdir %temp%\%mes_atual%

echo Copiando arquivos da pasta espelho...
copy /y %caminho%\Espelho\*.pdf %temp%\PDFEspelho

echo Copiando arquivos do mes atual...
copy /y %caminho%\%mes_atual%\*.pdf %temp%\%mes_atual%

echo Apagando arquivos PDF da pasta NFe...
del /s /f %caminho%\*.pdf

echo Restaurando arquivos de espelho e mes atual
move %temp%\PDFEspelho\*.pdf %caminho%\Espelho\
move %temp%\%mes_atual%\*.pdf %caminho%\%mes_atual%\

rmdir /S /Q %temp%\PDFEspelho
rmdir /S /Q %temp%\%mes_atual%

echo  Limpeza da pasta concluida 
echo.:
echo.:
echo " _______  ______   _______ 
echo "|       ||      | |       |
echo "|    _  ||  _    ||    ___|
echo "|   |_| || | |   ||   |___ 
echo "|    ___|| |_|   ||    ___|
echo "|   |    |       ||   |    
echo "|___|    |______| |___|    
echo "        REMOVER 1.1        
timeout /t 5
