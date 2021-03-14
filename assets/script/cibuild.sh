#!/usr/bin/env bash
set -e # halt script on error

bundle exec jekyll build
bundle exec htmlproofer --disable_external --allow_hash_href --assume-extension  _site/