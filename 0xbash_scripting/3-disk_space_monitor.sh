#!/bin/bash
df | awk '$5 > 20 {print $5}'

