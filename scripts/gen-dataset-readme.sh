file=datasets/README.md
python datasets/scripts/gen_dataset_table.py

tidy-markdown < $file | sponge $file
