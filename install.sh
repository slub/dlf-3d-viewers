#!/bin/bash

install_module() {
  local MODULE_DIR_PATH="./$2/modules"
  rm -rf $MODULE_DIR_PATH
  local MODULE_FILE_PATH="$MODULE_DIR_PATH/module.zip"
  mkdir -p $MODULE_DIR_PATH
  wget -v "$1" -O "$MODULE_FILE_PATH"
  unzip -d $MODULE_DIR_PATH $MODULE_FILE_PATH
  rm $MODULE_FILE_PATH
}

install_module "https://www.3dhop.net/download/3DHOP_4.3.zip" "dlf-3dhop"
install_module "https://github.com/mrdoob/three.js/archive/refs/tags/r165.zip" "dlf-three"
install_module "https://github.com/phoenixbf/aton/archive/refs/tags/3.0.10.zip" "dlf-aton"

mkdir -p "dlf-model-viewer/modules/model-viewer/3.5.0/"
wget "https://ajax.googleapis.com/ajax/libs/model-viewer/3.5.0/model-viewer.min.js" -O "dlf-model-viewer/modules/model-viewer/3.5.0/model-viewer.min.js"
