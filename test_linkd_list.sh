#!/bin/bash

adb push linked_list.ko /data
adb shell insmod /data/linked_list.ko
adb shell "echo 1 > /sys/kernel/debug/linked_list/add_head"
adb shell "echo 2 > /sys/kernel/debug/linked_list/add_head"
adb shell "echo 3 > /sys/kernel/debug/linked_list/add_head"
adb shell "cat /sys/kernel/debug/linked_list/show"
adb shell "echo 4 > /sys/kernel/debug/linked_list/add_tail"
adb shell "echo 5 > /sys/kernel/debug/linked_list/add_tail"
adb shell "cat /sys/kernel/debug/linked_list/show"
adb shell "echo 1 > /sys/kernel/debug/linked_list/del_head"
adb shell "echo 1 > /sys/kernel/debug/linked_list/del_head"
adb shell "cat /sys/kernel/debug/linked_list/show"
adb shell "echo 1 > /sys/kernel/debug/linked_list/del_tail"
adb shell "echo 1 > /sys/kernel/debug/linked_list/del_tail"
adb shell "cat /sys/kernel/debug/linked_list/show"
adb shell rmmod linked_list
