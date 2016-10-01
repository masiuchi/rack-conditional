#!/bin/bash

version_file=lib/rack/conditional/version.rb
rubygems_username=masiuchi
github_username="Masahiro Iuchi"
github_email=masahiro.iuchi+circleci@gmail.com

if [ -z "$CIRCLECI" ]; then
  echo "This script runs only on CircleCI"
  exit
fi

changed_files=`git diff --name-only HEAD~`
has_version_file=`echo $changed_files | grep $version_file`
if [ -z "$has_version_file" ]; then
  echo "This commit does not change $version_file"
  exit
fi

curl -u $rubygems_username:$RUBYGEMS_PASSWORD https://rubygems.org/api/v1/api_key.yaml > ~/.gem/credentials; chmod 0600 ~/.gem/credentials
git config user.name $github_username
git config user.email $github_email
bundle exec rake build
bundle exec rake release
