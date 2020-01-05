#!/usr/bin/env bash
#

set -e

hugo

pushd public > /dev/null

rsync -i -av --delete --exclude=".htaccess" --exclude="privacy.html" --exclude="review" . line72@line72.net:gotransitapp/gotransitapp.com/htdocs/

popd > /dev/null
