# Inference
#python inference.py --weights ../output/weights/connector_grey_lab/net_epoch_240.pth --#data ../../Documents/Generated_data/connector_grey_lab_test --object #05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey_test

#python inference.py --weights ../output/weights/connector_grey_corrected_colour/net_epoch_97.pth --data ../../Documents/Generated_data/connector_grey_lab/recorded_data/#ilumination_experiment/ilumination_recorded_dataset/#connector_gray_ND_ilumination0-1_2023-11-28-13-36-54_data/ --object #05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey/#recorded_data1_corrected_colour/ilumination_recorded_dataset/#connector_gray_ND_ilumination0-1_2023-11-28-13-36-54_data/

# python inference.py --weights ../output/weights/connector_grey_corrected_colour_2/net_epoch_109.pth --data ../../Documents/Generated_data/connector_grey_lab/recorded_data/ilumination_experiment/ilumination_recorded_dataset/connector_gray_ND_ilumination1-1_2023-11-28-13-44-10_data/ --object 05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey/corrected_colour_2/ilumination_recorded_dataset/connector_gray_ND_ilumination1-1_2023-11-28-13-44-10_data/

# python inference_beliefmap.py --weights ../output/weights/connector_grey_corrected_colour_4_5_dif_ilu/net_epoch_86.pth --data ../../Documents/Generated_data/connector_grey_lab/recorded_data/iluexp_ND/ --object 05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey/corrected_colour_4_5_dif_ilu/iluexp_ND_bm/
for epoch in {40..49..1}
do
    python inference_beliefmap.py --weights ../output/weights/connector_black/corrected_1_2_vimba/net_epoch_$epoch.pth --data ../../Documents/Generated_data/connector_black/recorded_data/iluexp/ --object 05_02_03_04_02_10_connector_black --outf ../output/inference_results/connector_black/corrected_1_2/iluexp_vimba_matcal/ --ext png
done