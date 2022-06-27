#!/bin/bash


get_latest_command=$(history | tail -n 1 | cut -b 8-)


cat << EOF > ./command.sh
#!/bin/bash

${get_latest_command}
EOF

chmod +x command.sh

./command.sh > result.txt
