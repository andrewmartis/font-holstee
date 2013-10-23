#!/bin/bash
fontcustom compile ./svg --no-hash
cp ./dist/font-custom.css ./dist/font-custom.less
perl -pi -w -e 's/\(\"\.\/font-custom/\(\"\@\{FontCustomPath\}/g' ./dist/font-custom.less
mv ./dist/font-custom-preview.html ./index.html
perl -pi -w -e 's/\(\"\.\/font-custom/\(\"\.\/dist\/font-custom/g' ./index.html