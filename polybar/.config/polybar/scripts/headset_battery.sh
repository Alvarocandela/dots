headsetcontrol -bc;
read percentage;
if [ $percentage == "Failed to set/request battery status. HeadsetControl Error. Error: -100: Success" ]; then
    echo ""
fi
echo ${percentage};
