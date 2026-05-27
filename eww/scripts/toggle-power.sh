#!/bin/bash
if eww active-windows | grep -q "power-menu"; then
  eww close power-menu
else
  eww open power-menu
fi
