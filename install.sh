#!/bin/bash

DLF_3DHOP_VERSION="4.3"
DLF_ATON_VERSION="3.0.10"
DLF_KOMPAKKT_STANDALONE_VERSION="main"
DLF_MODEL_VIEWER_VERSION="4.0.0"
#DLF_THEDWORAK_DFG_3DVIEWER_VERSION="npm-refactor"
DLF_THREEJS_VERSION="r170"

SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"

install_zip_module() {
  local MODULES_DIR_PATH="$SCRIPT_DIR/$2/modules"
  rm -rf "$MODULES_DIR_PATH"
  local MODULE_FILE_PATH="$MODULES_DIR_PATH/module.zip"
  mkdir -p "$MODULES_DIR_PATH"
  wget -v "$1" -O "$MODULE_FILE_PATH"
  unzip -d "$MODULES_DIR_PATH" "$MODULE_FILE_PATH"
  rm "$MODULE_FILE_PATH"
}

install_lib_module() {
  local MODULES_DIR_PATH="$SCRIPT_DIR/$2/modules/"
  rm -rf "$MODULES_DIR_PATH"
  local MODULE_PATH="$MODULES_DIR_PATH/$3/"
  mkdir -p "$MODULE_PATH"
  wget -v "$1" -P "$MODULE_PATH"
}

#install_zip_module "https://www.3dhop.net/download/3DHOP_$DLF_3DHOP_VERSION.zip" "dlf-3dhop"
#install_zip_module "https://github.com/mrdoob/three.js/archive/refs/tags/$DLF_THREEJS_VERSION.zip" "dlf-jena-3dviewer-holopyramid"
#install_zip_module "https://github.com/mrdoob/three.js/archive/refs/tags/$DLF_THREEJS_VERSION.zip" "dlf-jena-3dviewer-ply-pointcloud"
#install_zip_module "https://github.com/mrdoob/three.js/archive/refs/tags/$DLF_THREEJS_VERSION.zip" "dlf-jena-3dviewer-vrglasses"
#install_zip_module "https://github.com/mrdoob/three.js/archive/refs/tags/$DLF_THREEJS_VERSION.zip" "dlf-threejs"
#install_zip_module "https://github.com/phoenixbf/aton/archive/refs/tags/$DLF_ATON_VERSION.zip" "dlf-aton"
#install_zip_module "https://github.com/thedworak/dfg_3dviewer/archive/refs/heads/$DLF_THEDWORAK_DFG_3DVIEWER_VERSION.zip" "dlf-aim-3d"
#install legacy state
install_zip_module "https://github.com/thedworak/dfg_3dviewer/raw/3de45c9878392cb0ef108c19dd35b731086fc081/dfg_3dviewer-dist.zip" "dlf-aim-3d"
#install_lib_module "https://ajax.googleapis.com/ajax/libs/model-viewer/$DLF_MODEL_VIEWER_VERSION/model-viewer.min.js" "dlf-model-viewer" "model-viewer/$DLF_MODEL_VIEWER_VERSION"
#install_lib_module "https://raw.githubusercontent.com/Kompakkt/StandaloneViewer/$DLF_KOMPAKKT_STANDALONE_VERSION/kompakkt-standalone.min.js" "dlf-kompakkt" "kompakkt-standalone/$DLF_KOMPAKKT_STANDALONE_VERSION"
