#!/bin/bash

echo "Installing Checkov..."

pip3 install checkov

echo "Running Terraform Security Scan..."

checkov -d ../../terraform

echo "Scan Completed"
