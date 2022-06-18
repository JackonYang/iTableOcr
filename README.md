# iTableOcr

基于深度学习的 Table 信息提取框架

## 目标 & 进度

### 目标

整体目标：6 个月（2023.01.01 前）完成。

OKR 目标拆解：

- [ ] 0.3: 训练一个 deep learning model，能识别某一类常用 table。
- [ ] 0.7: 开发一套 solution（含代码），新手按步骤操作，能自己训练一个模型，解决特定需求的表格识别。
- [ ] 1.0: 在 1 个付费项目里用起来，有收入。

另外，这个项目的原动力是自我学习：

1. 用 deep learning 解决一个有些复杂度的实际项目。
2. 下一次做类似项目的时候，如何能 3 个月就完成。

### TODO

进展: [docs/working-logs.md](docs/working-logs.md)

- [ ] 预研。重点是算法。框架也要简单了解一下。
- [ ] 数据。收集、清洗。可以持续迭代数据的标准协议。
- [ ] 标注策略。GT 怎么来，关键点有几个、怎么标。
- [ ] 模型训练
- [ ] 模型部署
- [ ] pre & post pipeline

## 搭建开发环境

```bash
pip install -r requirements-dev.txt
```

注意，push/pull dataset 需要配置 阿里云 OSS 的 token。暂不公开。（可以自行从公开数据源下载）
