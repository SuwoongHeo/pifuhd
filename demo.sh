# Copyright (c) Facebook, Inc. and its affiliates. All rights reserved.
echo $PWD
# resolution 512 is default
python -m apps.simple_test --input_path ./test_images --out_path ./results/pifuhd_test --resolution 512
python apps/clean_mesh.py -f ./results/pifuhd_test/pifuhd_final/recon
# python -m apps.render_turntable -f ./results/pifuhd_final/recon -ww 512 -hh 512