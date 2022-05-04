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

This site requieres the **extended** version of hugo since it relies on its built-in SASS processor. As of Jan 11, 2021, `hugo-extended` is installed by default when running `brew install hugo` on MacOS. However, for Windows or Linux users, you must [ensure](https://gohugo.io/getting-started/installing/) you've installed the **extended version**.

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

You can add, edit or discard posts under `content`'s subfolder `blog`.

In order to understand this, focus on `test.md` as a new post. All new posts will require at least one thumbnail. For organizational purposes, please name the thumbnail image file as `${new-post-name}-thumbnail.*`. Please name the other image files in order as `${new-post-name}-${number}.*`. In this example, `test-thumbnail.png`, `test-1.png`, `test-2.jpg`, and `test-3.jpeg`.

## About

### New People

## To Do

- [ ] Monitor `Proyectos` page after multiple posts.
- [ ] Switch `Contacto` forms sheet from [Formspree](https://formspree.io) to local.
