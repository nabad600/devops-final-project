#!/bin/bash

aws secretsmanager create-secret \
  --name devops-db-password \
  --secret-string "SuperSecret123"
