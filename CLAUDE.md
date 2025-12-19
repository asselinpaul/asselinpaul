# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal website/blog for Paul-Arthur Asselin, built with Hugo static site generator and deployed to GitHub Pages at asselinpaul.com.

## Commands

```bash
# Development server
hugo server

# Production build
hugo --gc --minify

# Initialize theme submodule (if build appears empty)
git submodule update --init --recursive
```

## Architecture

- **Hugo** static site generator with `hugo-bearblog` theme (loaded as git submodule in `themes/`)
- **Content** in `content/` as Markdown files:
  - `blog/` - Blog posts with numbered filenames (000.md, 001.md, etc.)
  - `_index.md` - Homepage content
  - `bookshelf.md`, `links.md` - Standalone pages
- **Layout overrides** in `layouts/` customize the base theme:
  - `partials/header.html` - Site header
  - `partials/custom_head.html` - Custom head additions
  - `_default/single.html` - Single page template
  - `index.html` - Homepage template
- **Static assets** in `static/` (CSS in `css/`, images in `img/` and `images/`)
- **Configuration** in `hugo.toml` - site metadata, permalinks, params

## Deployment

GitHub Actions workflow (`.github/workflows/hugo.yaml`) builds and deploys to GitHub Pages on push to master.
