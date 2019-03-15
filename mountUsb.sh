#!/usr/bin/env bash

devices="$(lsblk -rpo "label,size,name,type,mountpoint" | awk '$4=="part"&&$5==""{printf "%s (%s) - %s\n",$1,$2,$3}')";
echo $devices | rofi -dmenu 
