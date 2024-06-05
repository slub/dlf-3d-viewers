#!/bin/bash

DLF_3DHOP_VERSION="4.3"
DLF_ATON_VERSION="3.0.10"
DLF_MODEL_VIEWER_VERSION="3.5.0"
DLF_THREEJS_VERSION="r165"

install_zip_module() {
  local MODULE_DIR_PATH="./$2/modules"
  rm -rf $MODULE_DIR_PATH
  local MODULE_FILE_PATH="$MODULE_DIR_PATH/module.zip"
  mkdir -p $MODULE_DIR_PATH
  wget -v "$1" -O "$MODULE_FILE_PATH"
  unzip -d $MODULE_DIR_PATH $MODULE_FILE_PATH
  rm $MODULE_FILE_PATH
}

install_zip_module "https://www.3dhop.net/download/3DHOP_$DLF_3DHOP_VERSION.zip" "dlf-3dhop"
install_zip_module "https://github.com/mrdoob/three.js/archive/refs/tags/$DLF_THREEJS_VERSION.zip" "dlf-threejs"
install_zip_module "https://github.com/phoenixbf/aton/archive/refs/tags/$DLF_ATON_VERSION.zip" "dlf-aton"

DLF_MODEL_VIEWER_MODEL_PATH="./dlf-model-viewer/modules/model-viewer"
rm -rf $DLF_MODEL_VIEWER_MODEL_PATH
mkdir -p "./$DLF_MODEL_VIEWER_MODEL_PATH/$DLF_MODEL_VIEWER_VERSION"
wget "https://ajax.googleapis.com/ajax/libs/model-viewer/$DLF_MODEL_VIEWER_VERSION/model-viewer.min.js" -O "$DLF_MODEL_VIEWER_MODEL_PATH/$DLF_MODEL_VIEWER_VERSION/model-viewer.min.js"
