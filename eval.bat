@echo off
set CUDA_VISIBLE_DEVICES=0
python src/train_sft.py --do_eval --dataset self_cognition --checkpoint_dir cognition --output_dir eval_result --per_device_eval_batch_size 8 --logging_steps 10 --max_samples 30 --predict_with_generate