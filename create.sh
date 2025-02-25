#!/bin/bash

year=2025

root_dir="/home/k-shimura/read-paper"

MONTHS=("January" "February" "March" "April" "May" "June" \
        "July" "August" "September" "October" "November" "December")

monthDays=(31 28 31 30 31 30 31 31 30 31 30 31)

md_template="# 

著者 : 

## アブストの翻訳
- 

## 研究背景・問題意識
- 

## 手法
- 

## 議論
- 

## 感想・メモ
- 
"

for i in "${!MONTHS[@]}"; do
  month_num=$(printf "%02d" $((i + 1)))
  month_name="${MONTHS[$i]}"
  
  base_dir="$root_dir/$year/$month_name"

  mkdir -p "$base_dir"

  days_in_month="${monthDays[$i]}"

  for day in $(seq -w 1 "$days_in_month"); do
    md_file="$base_dir/${year}${month_num}${day}.md"

    echo "$md_template" > "$md_file"

    echo "Created $md_file"
  done
done
