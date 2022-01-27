#!/usr/bin/env bash
cat /proc/cpuinfo | grep "model name\|cores" -m2
