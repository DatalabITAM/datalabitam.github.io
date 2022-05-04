# Blog del Datalab

## Usage

This is a full website, not a hugo theme. To use it, just clone the repo, and start hugo.

```shell
git clone git@github.com:DatalabITAM/website.git
cd website
hugo server
```

For testing, you can use the `hugo server` command.

> Before pushing to deploy, remember to build the `public/` files with the `hugo` command.

This site requires the extended version of hugo since it relies on its built-in SASS processor. As of Jan 11, 2021, `hugo-extended` is installed by default when running `brew install hugo` on MacOS. However, for Windows or Linux users, you must [ensure](https://gohugo.io/getting-started/installing/) you've installed the **extended version**.

More details on automation will be added here soon.

## New Posts

All new files will be written in Markdown. For more details on how to use this markup language, see [The Markdown Guide](https://www.markdownguide.org/basic-syntax/).

Consider the following file structure:

```go
.
└── content
    └── blog
        ├── _index.md
        ├── assets
        │   ├── cara-a-cara-1.png
        │   ├── cara-a-cara-thumbnail.jpeg
        │   ├── tlamatini-thumbnail.jpg
        │   ├── test-1.png
        │   ├── test-2.jpg
        │   ├── test-3.jpeg
        │   └── test-thumbnail.png
        ├── cara-a-cara.md
        ├── test.md
        └── tlamatini.md
```

You can add, edit or discard posts under `content`'s subfolder `blog` — just create `${new-post-name}.md`.

In order to understand this structure, focus on `test.md` as a new post.

Getting into our `*.md` main file, it follows the structure below:

```markdown
---
title: "My Title"
subtitle: "My Subtitle"
excerpt: "A small description."
date: 2022-05-04
author: "Author 1, Author 2, Author 3 and Author 4"
draft: false
images:
  - /blog/assets/test-thumbnail.jpeg
tags:
  - tag-1
  - tag-2
  - tag-3
categories:
  - Category
layout: single-sidebar
---

## First Section

Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis lorem 
tempor, ultricies odio at, pellentesque lorem. Ut fermentum ex dui, eget 
vestibulum enim imperdiet vitae. Donec consequat dictum volutpat. Nunc 
purus orci, porta quis metus id, malesuada semper purus. Cras tristique 
fermentum urna sed ultricies. Vestibulum hendrerit urna quis mollis 
bibendum. Sed velit ipsum, iaculis eu turpis eget, tincidunt efficitur 
arcu. Duis auctor pretium nulla sed finibus. Mauris elementum metus sed 
nulla auctor, quis iaculis erat lobortis. Aliquam erat volutpat. Nunc 
convallis consequat mollis. Praesent bibendum tortor eget enim volutpat 
pretium.

Fusce luctus ligula id ultrices varius. Donec vel libero metus. Nunc 
rhoncus justo eget dui porttitor, ac cursus metus cursus. Quisque ac 
massa in sem elementum sagittis eu quis nisi. Phasellus ex eros, 
dignissim nec eros quis, tincidunt dignissim risus. Aliquam quam libero, 
laoreet at posuere vitae, gravida et eros. Aliquam tristique volutpat 
auctor. Aliquam eget pulvinar ante. Praesent odio lacus, varius sed null 
vitae, commodo egestas magna. Nam purus felis, pharetra sed tincidunt 
vel, consectetur eget turpis. Integer tincidunt vehicula metus eu 
viverra. Nulla sollicitudin dolor non interdum varius.

![](/blog/assets/cara-a-cara-1.png)
```

For design uniformity, please start new posts' sections as headings of level 2 or higher (i.e., `## First Section`, `### First Section`, . . . , or `###### First Section`, according to your communication purposes).

### YAML

#### Tags & Categories

List `tags` as lowercase string names with no spaces (e.g., `ai`, `deep-learning`, `bayesian-methods`). Remember these have to be simple descriptive identifiers.

Contrariwise, `categories` will receive only one string with no special rules — spaces and multiple accents are allowed. Just for formality, consider word capitalisation (e.g., `Security`, `Diversity & Nondiscrimination`, `Artificial Intelligence`).

Remaining variables are explained in the screenshots below.

![](static/img/screenshot-1.png)

![](static/img/screenshot-2.png)

Note that the date must always follow the format `%Y-%m-%d`. Also, in Spanish, list authors as follows: `Autor 1, Autor 2, Autor 3 y Autor 4` — please use “y” as last author’s delimiter (this typo remains on this last screenshot, but has now been fixed in the online version).

### Thumbnail & Other Images

All new posts will require at least one thumbnail. Name the thumbnail image file as `${new-post-name}-thumbnail.*` under `assets` subdirectory. For organisational purposes, please name the other image files in order as `${new-post-name}-${number}.*`. In this example, `test-thumbnail.png`, `test-1.png`, `test-2.jpg`, and `test-3.jpeg`.

In our working `*.md` file, call images as follows:

```markdown
![](/blog/assets/${IMAGE})
```

## About

### New People

## To Do

- [ ] Monitor `Proyectos` page after multiple posts.
- [ ] Switch `Contacto` forms sheet from [Formspree](https://formspree.io) to local.
