#!/bin/bash
############################################################
# Help                                                     #
############################################################
Help()
{
   # Display Help
   echo "Add description of the script functions here."
   echo
   echo "Syntax: scriptTemplate [-g|h|v|V]"
   echo "options:"
   echo "g     Print the GPL license notification."
   echo "h     Print this Help."
   echo "v     Verbose mode."
   echo "V     Print software version and exit."
   echo
}

############################################################
############################################################
# Main program                                             #
############################################################
############################################################
############################################################
# Process the input options. Add options as needed.        #
############################################################
while getopts ":hevf" option; do
    case $option in
    h) 
        Help
        exit ;;
    e)
        echo "you selected e"
        ;;
    f)
        echo "you selected f"
        ;;
    \?) # Invalid option
        echo "Error: Invalid option"
        exit ;;
    esac
done
echo "Hello world!"