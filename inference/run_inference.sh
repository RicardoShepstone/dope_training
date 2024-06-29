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

# for exp in {1..12..1}
#     do
#     for epoch in {40..140..1}
#         do
#         python inference.py --weights ../output/weights/connector_black/corrected_1_2/net_epoch_$epoch.pth \
#         --data ../../Documents/Generated_data/connector_black/recorded_data/vicon-FixedPosExp-vimba/selected_renamed_images/connector_black_vicon_exp_position$exp/ \
#         --object 05_02_03_04_02_10_connector_black \
#         --outf ../output/inference_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_renamed_CorrectedCal/connector_black_vicon_exp_position$exp/ --ext png
#     done
# done


# fixed position experiment

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset/test/*
#     do
#     for epoch in {40..140..1}
#         do
#         python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/corrected_1_2_phone/net_epoch_$epoch.pth \
#         --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset/test/${dirname##*/}/ \
#         --object 05_02_03_04_02_10_connector_black \
#         --outf ../output/inference_results/connector_black_fixedpose/corrected_1_2_phone/test/${dirname##*/}/ --ext jpg
#     done
# done

# fine-tunned vimba

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset/test/*
#     do
#     python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test/net_epoch_85.pth \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset/test/${dirname##*/}/ \
#     --object 05_02_03_04_02_10_connector_black \
#     --outf ../output/inference_results/connector_black_fixedpose/fine_tuning_vimba_test/test/${dirname##*/}/ --ext png
# done

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset/test/*
#     do
#     python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test2/net_epoch_117.pth \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset/test/${dirname##*/}/ \
#     --object 05_02_03_04_02_10_connector_black \
#     --outf ../output/inference_results/connector_black_fixedpose/fine_tuning_vimba_test2/test/${dirname##*/}/ --ext png
# done

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset/test/*
#     do
#     python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test3/net_epoch_91.pth \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset/test/${dirname##*/}/ \
#     --object 05_02_03_04_02_10_connector_black \
#     --outf ../output/inference_results/connector_black_fixedpose/fine_tuning_vimba_test3/test/${dirname##*/}/ --ext png
# done



# fine-tunned phone

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/*
#     do
#     python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_phone_test/net_epoch_71.pth \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset/test/${dirname##*/}/ \
#     --object 05_02_03_04_02_10_connector_black \
#     --outf ../output/inference_results/connector_black_fixedpose/fine_tuning_phone_test/test/${dirname##*/}/ --ext jpg
# done

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/*
#     do
#     python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_phone_test2/net_epoch_87.pth \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset/test/${dirname##*/}/ \
#     --object 05_02_03_04_02_10_connector_black \
#     --outf ../output/inference_results/connector_black_fixedpose/fine_tuning_phone_test2/test/${dirname##*/}/ --ext jpg
# done

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/*
#     do
#     python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_phone_test3/net_epoch_95.pth \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset/test/${dirname##*/}/ \
#     --object 05_02_03_04_02_10_connector_black \
#     --outf ../output/inference_results/connector_black_fixedpose/fine_tuning_phone_test3/test/${dirname##*/}/ --ext jpg
# done

# sobre iluexp

# python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test/net_epoch_85.pth \
# --data ../../Documents/Generated_data/iluexp_vimba \
# --object 05_02_03_04_02_10_connector_black \
# --outf ../output/inference_results/iluexp_vimba/fine_tuning_vimba_test/ --ext png


# rad exp
# python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/corrected_1_2_vimba/net_epoch_58.pth \
# --data ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/test/ \
# --object 05_02_03_04_02_10_connector_black \
# --outf ../output/inference_results/connector_black_fixedpose/rad_exp/no_rad/ --ext png


# rad exp
for dirname in ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy0/*
    do
    python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test3/net_epoch_91.pth \
    --data ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy0/${dirname##*/}/ \
    --object 05_02_03_04_02_10_connector_black \
    --outf ../output/inference_results/rad_exp/fine_tuning_vimba_test3/Gy0/${dirname##*/}/ --ext png
done



for dirname in ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy1/*
    do
    python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test3/net_epoch_91.pth \
    --data ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy1/${dirname##*/}/ \
    --object 05_02_03_04_02_10_connector_black \
    --outf ../output/inference_results/rad_exp/fine_tuning_vimba_test3/Gy1/${dirname##*/}/ --ext png
done

for dirname in ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy2/*
    do
    python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test3/net_epoch_91.pth \
    --data ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy2/${dirname##*/}/ \
    --object 05_02_03_04_02_10_connector_black \
    --outf ../output/inference_results/rad_exp/fine_tuning_vimba_test3/Gy2/${dirname##*/}/ --ext png
done

for dirname in ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy3/*
    do
    python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test3/net_epoch_91.pth \
    --data ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy3/${dirname##*/}/ \
    --object 05_02_03_04_02_10_connector_black \
    --outf ../output/inference_results/rad_exp/fine_tuning_vimba_test3/Gy3/${dirname##*/}/ --ext png
done

for dirname in ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy4/*
    do
    python inference_beliefmap.py --weights ../output/weights/connector_black_fixedpose/fine_tuning_vimba_test3/net_epoch_91.pth \
    --data ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy4/${dirname##*/}/ \
    --object 05_02_03_04_02_10_connector_black \
    --outf ../output/inference_results/rad_exp/fine_tuning_vimba_test3/Gy4/${dirname##*/}/ --ext png
done

