---
title: Hexo-NexT主题博客搭建实例-01-开启个人博客之旅
date: 2018-05-26 01:02:42
tags:
---

演示均以centos7为例

### 一、安装 hexo
#### 1. 准备所需环境与工具
+ nodejs
```
yum -y install npm
```
+ git
```
yum -y install git
```
#### 2. 新建 hexo 项目
+ 使用 nodejs 全局安装指令安装 hexo-cli 插件
```
npm -g install hexo-cli
```
+ 在当前目录下创建名为 "myHexo" 的 hexo 项目目录并初始化
```
hexo init myHexo
```
+ 使用 nodejs 安装模块所需组件
```
cd myHexo
npm install
```
+ 启动 hexo 服务
```
hexo s
```
+ *此时调试模式的服务已经在4000端口启动,开放相应端口号后即可被外部访问*

#### 3. 将项目部署到 github page 上
+ 修改跟路径下的 _config.yml 文件,在结尾处编辑以下信息
```
deploy:
  type: git
  repo: https://github.com/moz-kamen/moz-kamen.github.io.git
  branch: master
```
+ 编译静态页面
```
hexo g
```
+ 将编译后的静态页面部署到 github page
```
hexo deploy
```

### 二、 安装 next 主题
#### 1. 下载 hexo-theme-next 主题代码
+ 拉取最新代码
```
git clone https://github.com/theme-next/hexo-theme-next themes/next
```
+ 移除 git 关联
```
rm -rf theme/next/.git
```
#### 2. 修改主题与风格
+ 修改 hexo 配置文件 _config.yml 以下部分
```
theme: next
```
+ 修改 next 配置文件 theme/next/_config.yml 以下部分
```
scheme: Gemini
```
+ 重启调试服务或重新编译部署到 github page 即可看到新主题生效


![receipt_code](https://raw.githubusercontent.com/moz-kamen/picture-repository/master/CommonPicture/ReceiptCode/receipt_code.png)
