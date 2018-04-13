#!/bin/bash

find $1 -type f -name "*.*" | xargs grep $2
