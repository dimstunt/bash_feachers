#!/bin/bash
str="$1"
history | grep -v grep | grep $str 