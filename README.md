# CyanBlog Backend

基于 Ktor 框架开发的博客后端服务

## 技术栈

- Kotlin 1.9.21
- Ktor 2.3.6
- Gradle
- Docker

## 项目结构

```plaintext
CyanBlog_Backend/
├── src/                      # 源代码目录
│   └── main/
│       ├── kotlin/          # Kotlin 源码
│       │   └── com/cyan/
│       │       ├── Application.kt    # 应用程序入口
│       │       └── plugins/          # Ktor 插件配置
│       └── resources/       # 资源文件
│           └── logback.xml  # 日志配置
├── production/              # 生产环境配置
│   ├── config/             # 配置文件
│   ├── scripts/            # 部署脚本
│   ├── Dockerfile          # Docker 构建文件
│   └── docker-compose.yml  # Docker 编排配置
└── build.gradle.kts        # Gradle 构建配置
```

## 功能特性

- JSON 序列化支持
- CORS 支持
- JWT 认证支持
- Docker 容器化部署
- 生产环境配置分离

## 快速开始

### 本地开发

```bash
./gradlew run
```

### 构建部署包

```bash
./gradlew deployToProduction
```

这将在 `build/production` 目录下生成完整的部署包。

### Docker 部署

```bash
cd build/production
./scripts/deploy.sh
```

## 配置说明

### 应用配置

应用配置文件位于 `production/config/application.conf`：

```hocon
ktor {
    deployment {
        port = 8080
        port = ${?PORT}
    }
    application {
        modules = [ com.cyan.ApplicationKt.module ]
    }
}
```

### 日志配置

日志配置文件位于 `src/main/resources/logback.xml`，默认输出到控制台。

## Docker 支持

项目包含完整的 Docker 支持，使用多阶段构建优化镜像大小：

- 基础镜像：OpenJDK 17
- 暴露端口：8080
- 内存配置：128MB - 256MB

## 开发环境要求

- JDK 17+
- Docker (可选，用于容器化部署)
- Gradle 7.x+ (可使用项目自带的 Gradle Wrapper)




[<img src="https://www.go176.net/content/uploadfile/202309/b5111695853313.png"/>](https://awacode.top/lyxy)
