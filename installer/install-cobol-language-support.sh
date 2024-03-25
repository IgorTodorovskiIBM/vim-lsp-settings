#!/bin/sh

set -e

version="1.2.1"
platform="linux-x64"
url="https://github.com/eclipse/che-che4z-lsp-for-cobol/releases/download/$version/cobol-language-support-$platform-$version.vsix"
filename="cobol-language-support-$version.vsix"
curl -L "$url" -o "$filename"
unzip "$filename"
rm "$filename"

cat <<EOF >./cobol-language-support
#!/bin/sh
DIR=\$(cd \$(dirname \$0); pwd)
java  -Dfile.encoding=UTF-8 "-DserverType=NATIVE" "-Dline.separator=\r\n" -jar "\$DIR/extension/server/jar/server.jar" pipeEnabled
EOF

chmod +x ./cobol-language-support
