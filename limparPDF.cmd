@echo off

:: Alterar a pasta NFe de acordo com o cliente. E.g. NFE-1612
set caminho=%syslink%\NFe2

SET _letraUnidade=%syslink:~0,2%
echo Sistema esta instalado no drive %_letraUnidade%

mkdir %temp%\PDFEspelho
timeout /t 3

echo Copiando arquivos da pasta espelho...
copy /y %caminho%\Espelho\*.pdf %temp%\PDFEspelho
timeout /t 3

echo Apagando arquivos PDF da pasta NFe...
del /s /f %caminho%\*.pdf
timeout /t 3

move %temp%\PDFEspelho\*.pdf %caminho%\Espelho\
timeout /t 3

mkdir /S /Q %temp%\PDFEspelho

echo Limpeza da pasta concluida
timeout /t 5






















