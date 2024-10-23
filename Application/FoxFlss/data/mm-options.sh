#!/bin/bash

mm_options=('--test-low-power-suspend-resume' '--test-quick-suspend-resume')

service_file=$(systemctl show ModemManager -p FragmentPath --value)
if [[ -z "$service_file" ]]; then
	echo "Service file not found for ModemManager."
	exit 1
fi

exec_start=$(grep -m 1 '^ExecStart=' "$service_file")
if [[ -z "$exec_start" ]]; then
    echo "ExecStart not found in $service_file."
    exit 1
fi

exec_command=${exec_start#ExecStart=}

help=$(ModemManager -h)
available_options=()

for opt in "${mm_options[@]}"; do
	if [[ $help == *"$opt"* ]]; then
		available_options+=("$opt")
	else
		echo "$opt not available!"
	fi
done

if [ ${#available_options[@]} -eq 0 ]; then
	echo "No available options found."
	exit 1
fi

if [[ " ${available_options[@]} " =~ " --test-low-power-suspend-resume " ]]; then
	selected_option="--test-low-power-suspend-resume"
else
	selected_option="${available_options[0]}"
fi

exec_command="$exec_command $selected_option"

$exec_command
