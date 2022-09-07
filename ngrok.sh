#!/bin/sh
. .env
ngrok http --subdomain=${NGROK_SUBDOMAIN} 8080