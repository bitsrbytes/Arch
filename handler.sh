#!/bin/bash
# Default acpi script that takes an entry for all actions

case "$1" in
    button/power)
        case "$2" in
            PBTN|PWRF)
                logger 'PowerButton pressed'
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    button/sleep)
        case "$2" in
            SLPB|SBTN)
                logger 'SleepButton pressed'
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    ac_adapter)
        case "$2" in
            AC|ACAD|ADP0)
                case "$4" in
                    00000000)
                        logger 'AC unpluged'
                        ;;
                    00000001)
                        logger 'AC pluged'
                        ;;
                esac
                ;;
            *)
                logger "ACPI action undefined: $2"
                ;;
        esac
        ;;
    battery)
        case "$2" in
            BAT0)
                case "$4" in
                    00000000)
                        logger 'Battery online'
                        ;;
                    00000001)
                        logger 'Battery offline'
                        ;;
                esac
                ;;
            CPU0)
                ;;
            *)  logger "ACPI action undefined: $2" ;;
        esac
        ;;
    button/lid)
        case "$3" in
            close)
                logger 'LID closed'
                ;;
            open)
                logger 'LID opened'
                ;;
            *)
                logger "ACPI action undefined: $3"
                ;;
    esac
    ;;
    button/volumeup)
        case "$2" in
            VOLUP)
                amixer set Master 2%+
                ;;
            *)  
                logger "ACPI action undefined: $2" ;;
       esac
   ;;
   button/volumedown)
        case "$2" in
            VOLDN)
               amixer set Master 2%-
               ;;
            *)  
		    logger "ACPI action undefined: $2" ;;
    esac
    ;;
   button/mute)
        case "$2" in
	   MUTE)
	      amixer set Master 100%-
	       ;;
       *)
	    logger "ACPI actin undefined: $2" ;;
    esac   
    ;;
    video/brightnessup)
	    case "$2" in
                BRTUP)
		light -A 10
		;;
	*)
		logger "ACPI action undefined: $2" ;;
   esac
   ;;
   video/brightnessdown)
	   case "$2" in
	        BRTDN)
		light -U 10
		;;
	*)
	       logger "ACPI action undefiend: $2" ;;
   esac	       

esac


# vim:set ts=4 sw=4 ft=sh et:
