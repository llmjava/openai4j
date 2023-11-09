#!/bin/bash

# Script to check for updates in the API specification.
# Based on https://stackoverflow.com/a/68407424

exit $(curl -s https://api.github.com/repos/openai/openai-openapi/commits/master | jq -r "((now - (.commit.author.date | fromdateiso8601) )  / (60*60*24)  | trunc)")