#!/bin/bash
echo
echo " XENSERVER - Configuração de auto start "
echo "  "
echo "Lista de VMs"
xe vm-list
echo -n "Digite o id da vm que deseja configurar auto start ?  "
echo
read VM_UUID
echo " "
echo "xe vm-param-set other-config:auto_poweron=true uuid=$VM_UUID"
xe vm-param-set other-config:auto_poweron=true uuid=$VM_UUID
echo "xe vm-param-get param-name=other-config  param-key=auto_poweron uuid=$VM_UUID"
xe vm-param-get param-name=other-config  param-key=auto_poweron uuid=$VM_UUID
