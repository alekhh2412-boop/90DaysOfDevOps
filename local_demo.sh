#!/bin/bash

global_var="I am GLOBAL"

use_local() {
  local msg="I am LOCAL"
  echo "Inside use_local(): msg = $msg"
}

use_normal() {
  normal_var="I am NORMAL"
  echo "Inside use_normal(): normal_var = $normal_var"
}

echo "Before calling functions"
echo "global_var = $global_var"
echo "msg = $msg"
echo "normal_var = $normal_var"

echo "-----------------------"

use_local
use_normal

echo "-----------------------"
echo "After calling functions"
echo "msg = $msg"
echo "normal_var = $normal_var"
