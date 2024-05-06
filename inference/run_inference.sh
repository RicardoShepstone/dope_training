# Inference
#python inference.py --weights ../output/weights/connector_grey_lab/net_epoch_240.pth --#data ../../Documents/Generated_data/connector_grey_lab_test --object #05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey_test

#python inference.py --weights ../output/weights/connector_grey_corrected_colour/net_epoch_97.pth --data ../../Documents/Generated_data/connector_grey_lab/recorded_data/#ilumination_experiment/ilumination_recorded_dataset/#connector_gray_ND_ilumination0-1_2023-11-28-13-36-54_data/ --object #05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey/#recorded_data1_corrected_colour/ilumination_recorded_dataset/#connector_gray_ND_ilumination0-1_2023-11-28-13-36-54_data/

# python inference.py --weights ../output/weights/connector_grey_corrected_colour_2/net_epoch_109.pth --data ../../Documents/Generated_data/connector_grey_lab/recorded_data/ilumination_experiment/ilumination_recorded_dataset/connector_gray_ND_ilumination1-1_2023-11-28-13-44-10_data/ --object 05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey/corrected_colour_2/ilumination_recorded_dataset/connector_gray_ND_ilumination1-1_2023-11-28-13-44-10_data/

# python inference_beliefmap.py --weights ../output/weights/connector_grey_corrected_colour_4_5_dif_ilu/net_epoch_86.pth --data ../../Documents/Generated_data/connector_grey_lab/recorded_data/iluexp_ND/ --object 05_02_03_04_02_10_connector_grey --outf ../output/inference_results/connector_grey/corrected_colour_4_5_dif_ilu/iluexp_ND_bm/


# data_dir= ls ../../Documents/Generated_data/connector_black/recorded_data/camparamexp_vimba/image_data

# for filename in $data_dir
#     do
#     for epoch in {40..41..1}
#         do
#         python inference_beliefmap.py --weights ../output/weights/connector_black/corrected_1_2_vimba_matcal/net_epoch_$epoch.pth --data ../../Documents/Generated_data/connector_black/recorded_data/camparamexp_vimba/image_data/$filename --object 05_02_03_04_02_10_connector_black --outf ../output/inference_results/connector_black/corrected_1_2_vimba/camparamexp_vimba_matcal/$filename --ext png
#     done
# done

for exp in {1..12..1}
    do
    for epoch in {40..120..1}
        do
        python inference_beliefmap.py --weights ../output/weights/connector_black/corrected_1_2_vimba_matcal/net_epoch_$epoch.pth --data ../../Documents/Generated_data/connector_black/recorded_data/vicon-FixedPosExp-vimba/selected_renamed_images/connector_black_vicon_exp_position$exp/ --object 05_02_03_04_02_10_connector_black --outf ../output/inference_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_matcal_renamed/connector_black_vicon_exp_position$exp/ --ext png
    done
done
