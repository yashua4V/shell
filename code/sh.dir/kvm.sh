#!/bin/bash
#本脚本针对RHELI7.2或Centos7.2
#本脚本需提前准备一个qcow2格式的虚拟机模板，名称为/var/lib/libvirt/images /.rh7_template 的虚拟机模板
#该脚本使用qemu-img命令快速创建快照虚拟机
#脚本使用sed修改模板虚拟机的配置文件，将虚拟机名称，uuid,磁盘文件名，mac地址
#exit code:
#65 -> user input nothing
#66 -> user input is not a number
#67 -> user input out of range
#68 -> vm disk imge exists
IMG_DIR=/var/lib/libvirt/image
BASEVM=rh7_template
read -p "Enter VM number:"  VMNUM

