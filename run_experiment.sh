# train_validate
# python -m torch.distributed.launch --nproc_per_node=1 train_validate.py --train_data=/home/ricardo/Documents/Generated_data/connector_black_fixedpose/corrected_1_2_vimba/train \
#     --test_data=/home/ricardo/Documents/Generated_data/connector_black_fixedpose/corrected_1_2_vimba/eval --object=05_02_03_04_02_10_connector_black --epochs=140 --batchsize=32 \
#     --outf=output/weights/connector_black_fixedpose/corrected_1_2_vimba

# train
#python -m torch.distributed.launch --nproc_per_node=1 train.py --data=/home/ricardo/Documents/#Generated_data/connector_grey_lab/train_def --object=05_02_03_04_02_10_connector_grey --#epochs=120 --batchsize=32 --outf=output/weights/connector_grey_lab_50000

#phone fine-tuning
# python -m torch.distributed.launch --nproc_per_node=1 train_validate.py --train_data=/home/ricardo/Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_train \
#     --test_data=/home/ricardo/Documents/Generated_data/connector_black_fixedpose/recorded_data/phone_images/dataset_eval --object=05_02_03_04_02_10_connector_black --epochs=140 --batchsize=1 \
#     --lr=0.000005 --pretrained --net_path=output/weights/connector_black_fixedpose/corrected_1_2_phone/net_epoch_137.pth \
#     --outf=output/weights/connector_black_fixedpose/fine_tuning_phone_test3

    #vimba fine-tuning
python -m torch.distributed.launch --nproc_per_node=1 train_validate.py --train_data=/home/ricardo/Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_train \
    --test_data=/home/ricardo/Documents/Generated_data/connector_black_fixedpose/recorded_data/vimba_images/dataset_eval --object=05_02_03_04_02_10_connector_black --epochs=140 --batchsize=1 \
    --lr=0.00001 --pretrained --net_path=output/weights/connector_black_fixedpose/corrected_1_2_vimba/net_epoch_58.pth \
    --outf=output/weights/connector_black_fixedpose/fine_tuning_vimba_test