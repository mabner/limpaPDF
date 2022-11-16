@echo off

:: Alterar a pasta NFe de acordo com o cliente. E.g. NFE-1612
cd %syslink%\NFe2

SET _letraUnidade=%syslink:~0,2%

echo %_letraUnidade%
:: Pause para teste
pause




mkdir %temp%\PDFEspelho

timeout /t 3

echo "Copiando arquivos da pasta espelho..."
copy /y Espelho\*.pdf %temp%\PDFEspelho 

timeout /t 3

echo "Apagando arquivos PDF da pasta NFe..."
del /s /f *.pdf

timeout /t 3

move %temp%\PDFEspelho\*.pdf Espelho\

echo "Limpeza da pasta concluida"
timeout /t 5

timeout /t 3




















