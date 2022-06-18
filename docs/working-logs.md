# Workling logs

## 下一步计划

1. 在 ICDAR 2013 数据集上，把复现实验跑起来。
2. 整理 text detection 的 paper list

## Backlog

- [ ] 调研更多数据集
- [ ] 补充文档，如何新增一个数据集

### day 2021.06.18

主要是数据集的管理方法 & 公开数据集调研。现状：

1. 下载了一个可用的经典 dataset：ICDAR 2013。复现 text detection 类模型，够用了。
2. 数据管理的工作流 & 相关脚本，写好了。后面添加数据集，预计很快。
3. 后续，重点先把复现实验跑起来，提高 paper 调研的效率。

具体完成：

1. [x] 搭建数据管理的工作流，完成。使用 dvc，上传至 aliyun OSS
2. [x] 设计 & 实现数据集 Metadata 的管理方法，完成。用 yaml 维护，自动生成 dataset readme & preview links。搭好了框架，以后在 project 之间 share dataset 会很方便。
3. [x] 公开数据集调研。下载 ICARL 2003 和 2013，其中 2013 不错。
