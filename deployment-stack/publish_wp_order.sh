#!/bin/bash

cd ./wp-core/wp
source ../.env


iexec workerpool deploy  --wallet-file=wallet-core.json --keystoredir=../ --password=setim
#iexec order init --workerpool --wallet-file=wallet-core.json --keystoredir=../ --password=setim
#iexec order sign --workerpool --wallet-file=wallet-core.json --keystoredir=../ --password=setim
iexec workerpool publish --category 4 --wallet-file=wallet-core.json --keystoredir=../ --password=setim --force
#iexec order publish --workerpool --wallet-file=wallet-core.json --keystoredir=../ --password=setim
