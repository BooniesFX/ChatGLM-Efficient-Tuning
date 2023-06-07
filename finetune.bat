@echo off
set CUDA_VISIBLE_DEVICES=0
python src/train_sft.py --do_train --dataset self_cognition,constella_labs_en  --finetuning_type lora  --output_dir cognition  --overwrite_cache --per_device_train_batch_size 4 --gradient_accumulation_steps 2 --lr_scheduler_type cosine --logging_steps 10 --save_steps 1000 --warmup_steps 0 --learning_rate 1e-3 --num_train_epochs 5 --fp16 