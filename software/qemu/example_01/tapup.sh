#!/bin/bash

ip link set $1 up
brctl addif br0 $1
