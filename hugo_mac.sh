# hugo_mac.sh
# Buscamos la ultima version de Hugo desde GitHub
echo '🌚 Iniciando instalación / actualización 🌝'
echo '      Recuerda: Asegurate de tener instalado curl y grep'
echo ''

url=$(curl -s "https://api.github.com/repositories/11180687/releases/latest" | grep -o 'https://.*hugo_extended.*_macOS-64bit.tar.gz')
echo '1⃣/4⃣ Última versión encontrada'

curl -s $url -L -o hugo_latest.tar.gz
echo '2⃣/4⃣ Descargado: ' $url

tar -zxf hugo_latest.tar.gz -C /usr/local/bin
rm /usr/local/bin/README.md
rm /usr/local/bin/LICENSE
echo '3⃣/4⃣ Descomprimimos en: /usr/local/bin'

rm hugo_latest.tar.gz
echo '4⃣/4⃣ Eliminada la descarga'

echo ''
echo '👉 Versión actual de Hugo: ' $(hugo version)

echo ''
echo 'Todo terminado 😎'