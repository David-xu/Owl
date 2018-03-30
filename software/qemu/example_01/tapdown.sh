#!/bin/bash

ip link set $1 down
brctl delif br0 $1
