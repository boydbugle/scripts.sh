#!/bin/bash

echo "install postgres"

sudo apt-get update
sudo apt-get install postgresql postgresql-contrib

echo "create role for SUPERUSER"

sudo -u postgres createuser --interactive

echo "more option on creating user do man createuser"