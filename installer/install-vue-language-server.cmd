@echo off

call "%~dp0\npm_install.cmd" vue-language-server @volar/vue-language-server@0.33.6
call npm install typescript@4.6