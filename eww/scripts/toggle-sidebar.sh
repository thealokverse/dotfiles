#!/bin/bash
if eww active-windows | grep -q "sidebar"; then
  eww close sidebar
else
  eww open sidebar
fi
