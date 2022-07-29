cls
echo off
cls
REM -
REM - Predial
REM -
REM -
REM - VARIAVEIS
set ORIGEM=C:\\pasta01
set DESTINO="C:\\pasta02"
set LOG=C:\backup\LOG

REM - ESTRUTURA
echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
echo #         COPIA DE ARQUIVOS E/OU DIRETORIOS         #
echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
xcopy %ORIGEM% %DESTINO% /E /Y /C /H
REM /E - Copia diretórios e subdiretórios, inclusive os vazios.
REM /Y - Suprime o prompt para você confirmar se deseja substituir um arquivo de destino existente.
REM /C - Continua copiando, mesmo que ocorram erros.
REM /H - Copia arquivos ocultos e do sistema também.
echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
echo # GERANDO LOG DE ARQUIVOS E/OU DIRETORIOS COPIADOS  #
echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
dir /s %DESTINO% > %LOG%\Arquivos.txt
echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
echo #           BACKUP E LOGS FORAM FEITOS              #
echo # - - - - - - - - - - - - - - - - - - - - - - - - - #
