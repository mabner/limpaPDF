@echo off

:: Alterar a pasta NFe de acordo com o cliente. E.g. NFE-1612
set caminho=%syslink%\NFe

set _letraUnidade=%syslink:~0,2%
set mes_atual=%date:~3,2%-%date:~6,4%

echo Sistema esta instalado no drive %_letraUnidade%

echo Apagando arquivos PDF da pasta NFe...
del /s /f %caminho%\*.pdf

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
