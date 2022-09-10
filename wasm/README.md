# English
## Download Dependency library

Directory Structure:

```bash
└── wasm
    ├── README.md
    ├── deps
    │   ├── boost
    │   ├── eigen
    │   └── flann
    └── scripts
        ├── build-boost.sh
        ├── build-flann.sh
        ├── build-pcl.sh
        ├── common.sh
        ├── download-deps.sh
        └── emscripten.jam
````

### Boost
> Version: 1.80.0

Download address: https://boostorg.jfrog.io/artifactory/main/release/1.80.0/source

### Flann
> Version: 1.9.1

Download address: https://github.com/luoxuhai/flann/archive/refs/heads/wasm.zip

### Eigen
> Version: 3.4.0
> Eigen is a template library. No need to compile

Download address: https://gitlab.com/libeigen/eigen/-/releases/3.4.0

## Build

### Build all
```bash
sh build-wasm.sh
````

### Build PCL only
```bash
sh wasm/scripts/build-pcl.sh
````

<hr>

# 简体中文

## 下载依赖库

目录结构：

```bash
└── wasm
    ├── README.md
    ├── deps
    │   ├── boost
    │   ├── eigen
    │   └── flann
    └── scripts
        ├── build-boost.sh
        ├── build-flann.sh
        ├── build-pcl.sh
        ├── common.sh
        ├── download-deps.sh
        └── emscripten.jam
```

### Boost
> 版本: 1.80.0

下载地址：https://boostorg.jfrog.io/artifactory/main/release/1.80.0/source

### Flann
> 版本: 1.9.1

下载地址：https://github.com/luoxuhai/flann/archive/refs/heads/wasm.zip

### Eigen
> 版本: 3.4.0  
> Eigen 是一个模板库。不需要编译

下载地址：https://gitlab.com/libeigen/eigen/-/releases/3.4.0

## 构建

### 构建全部
```bash
sh build-wasm.sh
```

### 仅构建 PCL
```bash
sh wasm/scripts/build-pcl.sh
```