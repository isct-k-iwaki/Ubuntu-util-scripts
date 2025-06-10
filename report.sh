
#!/bin/bash

lualatex $1
evince $(echo $1 | sed -e "s/.tex/.pdf/g")

