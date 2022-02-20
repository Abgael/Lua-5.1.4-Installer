#!/bin/bash
#Instalando Lua 5.1.4
sudo apt install build-essential libreadline-dev unzip
curl -R -O http://www.lua.org/ftp/lua-5.1.4.tar.gz
tar -zxf lua-5.1.4.tar.gz
cd lua-5.1.4
make linux test
sudo make install
#Instalando LuaRocks 3.8.0
wget https://luarocks.org/releases/luarocks-3.8.0.tar.gz
tar zxpf luarocks-3.8.0.tar.gz
cd luarocks-3.8.0
./configure --with-lua-include=/usr/local/include
make -j$(nproc)
sudo make install
#Instalando alguns modulos básicos
sudo luarocks install luacheck  #Lua linter
sudo luarocks install busted    #Unit testing framework
sudo luarocks install ldoc      #Gerador de documentação
