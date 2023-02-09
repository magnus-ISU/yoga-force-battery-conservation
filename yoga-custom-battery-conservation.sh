#!/bin/bash

# Enable charging at batteries below 80%, and disable it above 80%
# Apparently Lenovo cannot implement this at a driver level. However, it is trivial. So do it.

charge_until=80

let charge_below=$charge_until-1

while true; do
	battery=$(< /sys/class/power_supply/BAT1/capacity)
	conservation_status=$(< /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode)

	if [ $battery -ge $charge_until ] ; then
		[ $conservation_status = 1 ] || {
			echo enabling battery conservation
			echo 1 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
		}
	elif [ $battery -le $charge_below ] ; then
		[ $conservation_status = 0 ] || {
			echo disabling battery conservation
			echo 0 > /sys/bus/platform/drivers/ideapad_acpi/VPC2004:00/conservation_mode
		}
	fi

	sleep 5m
done
