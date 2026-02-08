#!/bin/bash

# Color codes for output
GREEN='\033[0;32m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}==> Checking for Homebrew...${NC}"
if ! command -v brew &> /dev/null; then
    echo -e "${RED}Homebrew is not installed. Please install it first from https://brew.sh/${NC}"
    exit 1
else
    echo -e "${GREEN}[OK] Homebrew is ready.${NC}"
fi

echo -e "${BLUE}==> Installing UTM (Virtual Machine Software)...${NC}"
brew install --cask utm

echo -e "${BLUE}==> Installing CrystalFetch (Windows ISO Downloader for Apple Silicon)...${NC}"
brew install --cask crystal-fetch

echo -e "${GREEN}================================================================${NC}"
echo -e "${GREEN}   TOOLS INSTALLATION COMPLETED!                                ${NC}"
echo -e "${GREEN}================================================================${NC}"
echo -e "Step 1: Open ${BLUE}CrystalFetch${NC} from your Applications."
echo -e "Step 2: Select Windows 11 and click ${BLUE}'Download'${NC} to create the ISO file."
echo -e "Step 3: Open ${BLUE}UTM${NC}, select ${BLUE}'Create a New Virtual Machine'${NC}."
echo -e "Step 4: Select ${BLUE}'Virtualize'${NC} -> ${BLUE}'Windows'${NC}."
echo -e "Step 5: Choose the ISO file you just downloaded and click Start."
echo -e "Step 6: When Windows asks for a Key, select ${BLUE}'I don't have a product key'${NC}."
echo -e "================================================================"
