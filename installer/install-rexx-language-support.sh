#!/bin/sh

set -e

version="0.0.18"
platform="linux-x64"
url="https://github.com/BroadcomMFD/rexx-language-support/releases/download/0.0.18/lsp-for-rexx-0.0.18.vsix"
filename="lsp-for-rexx-0.0.18.vsix"
curl -L "$url" -o "$filename"
unzip "$filename"
rm "$filename"

cat <<EOF >./rexx-language-support
#!/bin/sh

DIR=\$(cd \$(dirname \$0); pwd)
node \$DIR/extension/server/out/server.js \$*
EOF

chmod +x ./rexx-language-support
