#!/bin/bash

echo $(date | awk '{print $4}' | cut -d ':' -f1)
