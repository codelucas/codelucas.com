# [codelucas.com](http://codelucas.com) Blog

This blog was heavily inspired by [Feross's Blog](http://feross.org). I will add more specifics later.

## How it's built

All my posts are written in Markdown. The blog is powered by [Jekyll](http://github.com/mojombo/jekyll), a static site generator that takes Markdown blog posts and converts them into HTML files.

Note the `other_static` folder, all non image, txt, and code files go in here. For example, `.jar` files or `.mp3` music would go in this folder.

Also note the `_posts` and `posts` directories. `_posts` is a directory for our markdown blog posts. In Jekyll, it is a special directory which is identified as a holder for all blog posts. 

`post` is a directory which generates our "all posts" page on the site. For example, clicking the "all blog posts" button would lead to `posts/index.html`.

The `server` directory holds all of our server configurations and the `_site` directory holds the actual Jekyll compiled website! Hence we link our server roots to that directory.

This site uses nginx for its http server.
