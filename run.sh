MODELS=(deepseek-coder-6.7b-base starcoderbase-3b starcoderbase-7b starcoderbase) 
MODES=(completion)

for model in ${MODELS[@]}; do
  for mode in ${MODES[@]}; do
    python mark_batch.py \
    -d data/scenario_dow.jsonl \
    -o generations_asleep_${mode}_${model}_results.jsonl \
    -j 10 \
    generations_asleep_${mode}_${model}.json
  done
done