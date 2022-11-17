@echo off

:: Alterar a pasta NFe de acordo com o cliente. E.g. NFE-1612
set caminho=%syslink%\NFe2

SET _letraUnidade=%syslink:~0,2%
echo Sistema esta instalado no drive %_letraUnidade%

mkdir %temp%\PDFEspelho

echo Copiando arquivos da pasta espelho...
copy /y %caminho%\Espelho\*.pdf %temp%\PDFEspelho

echo Apagando arquivos PDF da pasta NFe...
del /s /f %caminho%\*.pdf

move %temp%\PDFEspelho\*.pdf %caminho%\Espelho\

mkdir /S /Q %temp%\PDFEspelho

echo  Limpeza da pasta concluida 
   
timeout /t 5






















