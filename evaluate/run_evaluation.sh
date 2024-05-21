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
for exp in {1..12..1}
    do
    python evaluate.py --data_prediction ../output/inference_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_renamed/connector_black_vicon_exp_position$exp/net_epoch_54 \
    --data /home/ricardo/Documents/Generated_data/connector_black/recorded_data/vicon-FixedPosExp-vimba/vicon_gt_renamed/connector_black_vicon_exp_position$exp \
    --outf ../output/evaluation_results/connector_black/corrected_1_2_vimba/vicon-FixedPosExp-vimba_renamed/connector_black_vicon_exp_position$exp/net_epoch_54
    done
