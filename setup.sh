#!/bin/sh

setup () {
  echo -e "Make sure you generate your GoDaddy production API keys from developer.godaddy.com/keys\n\n"
  if [[ -z ${GDkey} ]] 
  then
     read -p "Enter GoDaddy API Key: " GDkey 
  fi
  
  if [[ -z ${GDsecret} ]]
  then
    read -p "Enter GoDaddy API Secret: " GDsecret 
  fi
  
  if [[ -z ${LLkey} ]]
  then
    read -p "Enter LogoLava.com API Key: " LLkey
  fi
  
  echo "export GDkey=${GDkey}" >> ~/.bashrc
  echo "export GDsecret=${GDsecret}" >> ~/.bashrc
  echo "export LLkey=${LLkey}" >> ~/.bashrc
  source ~/.bashrc
  
  }
  
  setup
  
  # Signup with LogoLava.com, its free to get API access, & API key
  # Generate production API keys from developer.godaddy.com/keys to get API key & secret
  
  
