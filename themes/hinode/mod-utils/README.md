# Hinode Module - Utilities

<!-- Tagline -->
<p align="center">
    <b>A Hugo module with common utilities for your Hinode site</b>
    <br />
</p>

<!-- Badges -->
<p align="center">
    <a href="https://gohugo.io" alt="Hugo website">
        <img src="https://img.shields.io/badge/generator-hugo-brightgreen">
    </a>
    <a href="https://gethinode.com" alt="Hinode theme">
        <img src="https://img.shields.io/badge/theme-hinode-blue">
    </a>
    <a href="https://github.com/gethinode/mod-utils/commits/main" alt="Last commit">
        <img src="https://img.shields.io/github/last-commit/gethinode/mod-utils.svg">
    </a>
    <a href="https://github.com/gethinode/hinode/issues" alt="Issues">
        <img src="https://img.shields.io/github/issues/gethinode/hinode.svg">
    </a>
    <a href="https://github.com/gethinode/mod-utils/pulls" alt="Pulls">
        <img src="https://img.shields.io/github/issues-pr-raw/gethinode/mod-utils.svg">
    </a>
    <a href="https://github.com/gethinode/mod-utils/blob/main/LICENSE" alt="License">
        <img src="https://img.shields.io/github/license/gethinode/mod-utils">
    </a>
</p>

## About

![Logo](https://raw.githubusercontent.com/gethinode/hinode/main/static/img/logo.png)

Hinode is a clean blog theme for [Hugo][hugo], an open-source static site generator. Hinode is available as a [template][repository_template], and a [main theme][repository]. This repository maintains a Hugo module that define common utilities compatible with your Hinode site. Visit the Hinode documentation site for [installation instructions][hinode_docs].

## Configuration

This module supports the following parameters (see the section `params.modules` in `config.toml`):

| Setting                 | Default | Description |
|-------------------------|---------|-------------|
| utils.filter      | `[^0-9A-Za-zŽžÀ-ÿ ;.,\/'’"]` | Defines the regular expression for characters to remove from page descriptions. These page descriptions are used to define card content and metadata for search indexes. Adjust the filter to define which characters to support. You may need to adjust these settings to support specific diacritical letters. |
| utils.raw         | false | Flag to indicate page descriptions should be returned as-is. In this setting, the filter is ignored. |

<!-- MARKDOWN LINKS -->
[hugo]: https://gohugo.io
[hinode_docs]: https://gethinode.com
<!-- [module]: https://example.com -->
[repository]: https://github.com/gethinode/hinode.git
[repository_template]: https://github.com/gethinode/template.git
