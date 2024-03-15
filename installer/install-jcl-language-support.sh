#!/bin/sh

set -e

version="1.0.1"
platform="linux-x64"
url="https://github.com/BroadcomMFD/jcl-language-support/releases/download/v1.0.1/jcl-language-support-v1.0.1.vsix"
filename="jcl-language-support-$version.vsix"
curl -L "$url" -o "$filename"
unzip "$filename"
rm "$filename"

cat <<EOF >./jcl-language-support
#!/bin/sh

DIR=\$(cd \$(dirname \$0); pwd)
node \$DIR/extension/server/out/server.js --stdio \$*
EOF

chmod +x ./jcl-language-support
