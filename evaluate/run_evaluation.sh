# Evaluation


# Vimba Prevcal
# for exp in {1..12..1}
#     do
#     for epoch in {40..140..1}
#         do
#         python evaluate.py --data_prediction ../output/inference_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_renamed/connector_black_vicon_exp_position$exp/net_epoch_$epoch \
#         --data /home/ricardo/Documents/Generated_data/connector_black/recorded_data/vicon-FixedPosExp-vimba/vicon_gt_renamed/connector_black_vicon_exp_position$exp \
#         --outf ../output/evaluation_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_renamed/connector_black_vicon_exp_position$exp/net_epoch_$epoch 
#         done
# done


# Vimba Matcal
# for exp in {1..12..1}
#     do
#     for epoch in {40..120..1}
#         do
#         python evaluate.py --data_prediction ../output/inference_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_matcal_renamed/connector_black_vicon_exp_position$exp/net_epoch_$epoch \
#         --data /home/ricardo/Documents/Generated_data/connector_black/recorded_data/vicon-FixedPosExp-vimba/vicon_gt_renamed/connector_black_vicon_exp_position$exp \
#         --outf ../output/evaluation_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_matcal_renamed/connector_black_vicon_exp_position$exp/net_epoch_$epoch 
#         done
# done


# Para obtener los vértices de aqullas épocas que funcionaron bien
# for exp in {1..12..1}
#     do
#     python evaluate.py --data_prediction ../output/inference_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_renamed/connector_black_vicon_exp_position$exp/net_epoch_54 \
#     --data /home/ricardo/Documents/Generated_data/connector_black/recorded_data/vicon-FixedPosExp-vimba/vicon_gt_renamed/connector_black_vicon_exp_position$exp \
#     --outf ../output/evaluation_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_renamed/connector_black_vicon_exp_position$exp/net_epoch_54
#     done



# fixed position experiment

# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/*
#     do
#     for epoch in {40..140..1}
#         do
#         python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/corrected_1_2_vimba/test/${dirname##*/}/net_epoch_$epoch \
#         --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#         --outf ../output/evaluation_results/connector_black_fixedpose/corrected_1_2_vimba/test/${dirname##*/}/net_epoch_$epoch 
#     done
# done


# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/*
#     do
#     for epoch in {40..140..1}
#         do
#         python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/corrected_1_2_phone/test/${dirname##*/}/net_epoch_$epoch \
#         --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#         --outf ../output/evaluation_results/connector_black_fixedpose/corrected_1_2_phone/test/${dirname##*/}/net_epoch_$epoch 
#     done
# done

# fine-tuning vimba camera
# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/*
#     do
#     python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/fine_tuning_vimba_test/test/${dirname##*/}/net_epoch_85 \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#     --outf ../output/evaluation_results/connector_black_fixedpose/fine_tuning_vimba_test/test/${dirname##*/}/net_epoch_85 

# done
# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/*
#     do
#     python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/fine_tuning_vimba_test2/test/${dirname##*/}/net_epoch_117 \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#     --outf ../output/evaluation_results/connector_black_fixedpose/fine_tuning_vimba_test2/test/${dirname##*/}/net_epoch_117 

# done
# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/*
#     do
#     python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/fine_tuning_vimba_test3/test/${dirname##*/}/net_epoch_91 \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#     --outf ../output/evaluation_results/connector_black_fixedpose/fine_tuning_vimba_test3/test/${dirname##*/}/net_epoch_91 

# done


# fine-tuning phone camera
# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/*
#     do
#     python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/fine_tuning_phone_test/test/${dirname##*/}/net_epoch_71 \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#     --outf ../output/evaluation_results/connector_black_fixedpose/fine_tuning_phone_test/test/${dirname##*/}/net_epoch_71

# done
# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/*
#     do
#     python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/fine_tuning_phone_test2/test/${dirname##*/}/net_epoch_87 \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#     --outf ../output/evaluation_results/connector_black_fixedpose/fine_tuning_phone_test2/test/${dirname##*/}/net_epoch_87 

# done
# for dirname in ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/*
#     do
#     python evaluate.py --data_prediction ../output/inference_results/connector_black_fixedpose/fine_tuning_phone_test3/test/${dirname##*/}/net_epoch_95 \
#     --data ../../Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_test/vicon_gt_def/test/${dirname##*/}/ \
#     --outf ../output/evaluation_results/connector_black_fixedpose/fine_tuning_phone_test3/test/${dirname##*/}/net_epoch_95

# done


# rad exp
for dirname in ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/rad_exp_vimba/Gy0/*
    do
    python evaluate.py --data_prediction ../output/inference_results/rad_exp/fine_tuning_vimba_test3/Gy0/${dirname##*/}/net_epoch_91 \
    --data ../../Documents/Generated_data/connector_black_fixedpose/rad_exp/Vimba/vicon_gt/${dirname##*/}/ \
    --outf ../output/evaluation_results/rad_exp/fine_tuning_vimba_test3/Gy0/${dirname##*/}/ 

done
