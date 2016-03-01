#!/bin/bash                                                                    
message=$1
echo $message | awk '{print $4}'