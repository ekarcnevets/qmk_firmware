#!/usr/bin/env bash
set -e
qmk compile -kb ibm/model_m/modelh -km ekarcnevets
dfu-suffix -D ibm_model_m_modelh_ekarcnevets.bin
echo "Put keyboard in DFU mode (ESC + plug in), then press Enter..."
read
dfu-util -d 6b62:0000 -a 0 -D ibm_model_m_modelh_ekarcnevets.bin -R
