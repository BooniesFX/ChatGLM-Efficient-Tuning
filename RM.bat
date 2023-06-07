@echo off
set CUDA_VISIBLE_DEVICES=0
python src/train_rm.py --do_train --dataset self_cognition,constella_labs_en --finetuning_type lora  --output_dir rm_cognition  --per_device_train_batch_size 4 --gradient_accumulation_steps 2 --lr_scheduler_type cosine --logging_steps 10 --save_steps 1000 --learning_rate 1e-5 --num_train_epochs 1 --fp16 