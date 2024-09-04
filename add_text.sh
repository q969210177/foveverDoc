#!/bin/bash

# 定义基础文件夹路径
base_folder="text"

# 定义新增章节数目
new_chapters=40

# 检查文件夹是否存在，如果不存在则创建
if [ ! -d "$base_folder" ]; then
    mkdir "$base_folder"
fi

# 检查是否存在已有的章节文件
if ls "${base_folder}/第"*.txt 1>/dev/null 2>&1; then
    # 获取最后一章的章节号
    last_chapter=$(ls "${base_folder}/第"*.txt | sort -V | tail -n 1 | grep -o '[0-9]\+' | tail -n 1)
    if [ -z "$last_chapter" ]; then
        last_chapter=0
    fi
else
    # 如果文件不存在，则从第一章开始
    last_chapter=0
fi

# 从最后一章的下一章开始生成新的章节
for ((i = 1; i <= new_chapters; i++)); do
    next_chapter=$((last_chapter + i))
    filename="${base_folder}/第${next_chapter}章.txt"
    echo "第$next_chapter章" >"$filename"
done

# 输出提示信息
echo "已生成 $new_chapters 个新章节文件在 $base_folder 文件夹下。"
exit 0
