read -p 'Enter new Resolution(ex. 1920 1080): ' RES
RES_METADATA=$(cvt $RES | grep -oP '(?<=Modeline ).*')
RES_NAME=$(cvt $RES | grep -oP '(?<=Modeline ).*'| grep -Eo .*\")
echo -e 'Add below two lines at start of .profile file\n'
echo 'xrandr --newmode' $RES_METADATA
echo "xrandr --addmode \$(xrandr | grep -Eo '^[a-zA-Z0-9\-]+'|grep -v -m1 'Screen')" $RES_NAME
echo -e '\n'
