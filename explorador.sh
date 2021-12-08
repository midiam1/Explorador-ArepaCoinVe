#!/bin/bash
# -*- ENCODING: UTF-8 -*-

# Colores

# Regular Colors

 #.	Black='\033[0;30m'        # Black
 #.	Red='\033[0;31m'          # Red
 #.	Green='\033[0;32m'        # Green
 #.	Yellow='\033[0;33m'       # Yellow
 #.	Blue='\033[0;34m'         # Blue
 #.	Purple='\033[0;35m'       # Purple
 #.	Cyan='\033[0;36m'         # Cyan
 #.	White='\033[0;37m'        # White
	# Bold

 #.	BBlack='\033[1;30m'       # Black
 #.	BRed='\033[1;31m'         # Red
 #.	BGreen='\033[1;32m'       # Green
 #.	BYellow='\033[1;33m'      # Yellow
 #.	BBlue='\033[1;34m'        # Blue
 #.	BPurple='\033[1;35m'      # Purple
 #.	BCyan='\033[1;36m'        # Cyan
 #.	BWhite='\033[1;37m'       # White
# Underline

 #.	UBlack='\033[4;30m'       # Black
 #.	URed='\033[4;31m'         # Red
 #.	UGreen='\033[4;32m'       # Green
 #.	UYellow='\033[4;33m'      # Yellow
 #.	UBlue='\033[4;34m'        # Blue
 #.	UPurple='\033[4;35m'      # Purple
 #.	UCyan='\033[4;36m'        # Cyan
 #.	UWhite='\033[4;37m'       # White
	# Background

 #.	On_Black='\033[40m'       # Black
 #.	On_Red='\033[41m'         # Red
 #.	On_Green='\033[42m'       # Green
 #.	On_Yellow='\033[43m'      # Yellow
 #.	On_Blue='\033[44m'        # Blue
 #.	On_Purple='\033[45m'      # Purple
 #.	On_Cyan='\033[46m'        # Cyan
 #.	On_White='\033[47m'       # White
# High Intensity

 #.	IBlack='\033[0;90m'       # Black
 #.	IRed='\033[0;91m'         # Red
 #.	IGreen='\033[0;92m'       # Green
 #.	IYellow='\033[0;93m'      # Yellow
 #.	IBlue='\033[0;94m'        # Blue
 #.	IPurple='\033[0;95m'      # Purple
 #.	ICyan='\033[0;96m'        # Cyan
 #.	IWhite='\033[0;97m'       # White
	# Bold High Intensity

 #.	BIBlack='\033[1;90m'      # Black
 #.	BIRed='\033[1;91m'        # Red
 #.	BIGreen='\033[1;92m'      # Green
 #.	BIYellow='\033[1;93m'     # Yellow
 #.	BIBlue='\033[1;94m'       # Blue
 #.	BIPurple='\033[1;95m'     # Purple
 #.	BICyan='\033[1;96m'       # Cyan
 #.	BIWhite='\033[1;97m'      # White
# High Intensity backgrounds

 #.	On_IBlack='\033[0;100m'   # Black
 #.	On_IRed='\033[0;101m'     # Red
 #.	On_IGreen='\033[0;102m'   # Green
 #.	On_IYellow='\033[0;103m'  # Yellow
 #.	On_IBlue='\033[0;104m'    # Blue
 #.	On_IPurple='\033[0;105m'  # Purple
 #.	On_ICyan='\033[0;106m'    # Cyan
 #.	On_IWhite='\033[0;107m'   # White
	# Reset

 #.	Color_Off='\033[0m'       # Text Reset

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;034m'
BBLUE='\033[1;034m'
NC='\033[0m' # No Color
# printf "I ${RED}love${NC} Stack Overflow\n"

clear # Limpio la pantalla porque soy un ser limpio

printf "${BBLUE} Proyectos Himmeros ${NC}\n"
printf "${BBLUE} sistemas que funcionan ${NC}\n" && echo

printf "${GREEN} Hago un Upgrade + Update ${NC}\n" && echo

sudo apt upgrade -y 
sudo apt update -y

echo

# Instalación de MC
printf "${GREEN} Instalación de MC ${NC}\n" && echo
sudo apt install mc -y

echo

# Instalación de GIT
printf "${GREEN} Instalación de git ${NC}\n" && echo
sudo apt install git -y

echo

# Instalación de NodeJS
printf "${GREEN} Instalación de NodeJS ${NC}\n" && echo
sudo apt install nodejs -y

echo

# Instalación de NPM
printf "${GREEN} Instalación de NPM ${NC}\n" && echo
sudo apt install npm -y

echo

printf "${BLUE} Verifico que NodeJS esté operativo ${NC}\n" && echo
node -v && echo

# Instalación de Mongo
printf "${GREEN} Instalación de mongo ${NC}\n" && echo
sudo apt install mongodb -y

echo

printf "${BLUE} Verifico que mongo esté operativo ${NC}\n" && echo
mongo --eval 'db.runCommand({ connectionStatus: 1 })'

echo

printf "${RED} 10 segundos para continuar ${NC}\n" && echo
sleep 10
clear # Limpio la pantalla para continuar

printf "${BBLUE} Proyectos Himmeros ${NC}\n"
printf "${BBLUE} sistemas que funcionan ${NC}\n" && echo

printf "${GREEN} Continuamos creando la base de datos ${NC}\n" && echo

echo > datos.js

echo use explorerdb >> datos.js
echo 'db.createUser( { user: "iquidus", pwd: "3xp!0reR", roles: [ "readWrite" ] } )' >> datos.js
echo exit >> datos.js

mongo < datos.js

echo
echo " Listo !"
echo " A instalar el Explorador !"

sleep 10

clear

printf "${BBLUE} Proyectos Himmeros ${NC}\n"
printf "${BBLUE} sistemas que funcionan ${NC}\n" && echo

printf "${GREEN} Continuamos instalando el explorador ${NC}\n" && echo

git clone https://github.com/team-exor/eiquidus explorer

cd explorer && npm install --production
cp ./settings.json.template ./settings.json

echo && echo ' Ejecuta npm start para iniciar el explorador '
echo && echo ' Recuerda revisar los datos de acceso '
echo && echo ' del usuario a la base de datos '


exit