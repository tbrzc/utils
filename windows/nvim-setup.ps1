# siempre instalar!
winget install --id=Git.Git -e &&
#nvim
winget install --id=Neovim.Neovim -e && #2015 - 2022 versions of Visual Studio
## package manager
winget install --id=Chocolatey.Chocolatey -e &&
refreshenv &&

## c,c++ compiler
chocho install mingw -y &&
choco install ripgrep -y &&
choco install nodejs -y &&
choco install pnpm -y &&
## nvim providers
choco install strawberryperl -y &&
choco install python -y &&
choco install ruby -y &&

choco install unzip -y &&
choco install wget -y &&
choco install gzip -y &&
choco install pwsh -y &&
choco install 7zip -y &&

choco install golang -y &&
choco install liberica17jdk -y &&
choco install julia -y &&
choco install php -y &&
choco install composer -y &&
choco install lua -y &&
choco install rust -y &&
choco install zig -y &&



# Verificar si existe la carpeta de configuración y eliminarla si es necesario
if (Test-Path "$env:LOCALAPPDATA\nvim") {
    Remove-Item -Recurse -Force "$env:LOCALAPPDATA\nvim"
}

# Clonar configuración de Git para Neovim
git clone https://github.com/tbrzc/nvim $env:LOCALAPPDATA\nvim

