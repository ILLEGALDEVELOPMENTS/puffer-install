#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
NC='\033[0m' # No Color

clear

# Step 1: Update and install necessary packages
echo -e "${BLUE}➤ ${GREEN}Updating package lists...${NC}"
sudo apt update

echo -e "${BLUE}➤ ${GREEN}Installing sudo...${NC}"
apt install sudo

echo -e "${BLUE}➤ ${GREEN}Installing systemctl...${NC}"
apt install systemctl -y

# Banner Design
echo -e "${MAGENTA}╔═══════════════════════════════════════════╗"
echo -e "${MAGENTA}║${CYAN}           PufferPanel Installer            ${MAGENTA}║"
echo -e "${MAGENTA}║${YELLOW}              Made by ILLEGALDEVELOPMENTS              ${MAGENTA}║"
echo -e "${MAGENTA}╚═══════════════════════════════════════════╝${NC}"

# Add Subscribe Message
echo -e "${CYAN}✨ ${RED}Don't forget to  VVisit Our Github Page ${BLUE}https://github.com/ILLEGALDEVELOPMENTS${CYAN} ✨${NC}"

# Step 2: Add PufferPanel Repository
echo -e "${BLUE}➤ ${GREEN}Adding PufferPanel Repository...${NC}"
curl -s https://packagecloud.io/install/repositories/pufferpanel/pufferpanel/script.deb.sh?any=true | sudo bash

# Step 3: Update Package Lists
echo -e "${BLUE}➤ ${GREEN}Updating package lists...${NC}"
sudo apt update

# Step 4: Install PufferPanel
echo -e "${BLUE}➤ ${GREEN}Installing PufferPanel...${NC}"
sudo apt-get install -y pufferpanel

# Step 5: Add PufferPanel User
echo -e "${BLUE}➤ ${GREEN}Creating PufferPanel user...${NC}"
sudo pufferpanel user add --email illegaldevs@gmail.com --name illegaldevs --password illegaldevsop --admin

# Step 6: Enable and Start PufferPanel
echo -e "${BLUE}➤ ${GREEN}Enabling and starting PufferPanel service...${NC}"
systemctl start pufferpanel

# Completion Message
echo -e "${MAGENTA}╔═══════════════════════════════════════════╗"
echo -e "${MAGENTA}║${CYAN}       PufferPanel VV3 Installation Complete!    ${MAGENTA}║"
echo -e "${MAGENTA}║${YELLOW}          Enjoy your server management!      ${MAGENTA}║"
echo -e "${MAGENTA}╚═══════════════════════════════════════════╝${NC}"
echo -e "${CYAN}✨ ${GREEN}Thank you for using this script by ILLEGALDEVELOPMENTS!${NC}"