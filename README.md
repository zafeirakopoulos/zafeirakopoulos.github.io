# zafeirakopoulos.github.io

Personal academic website of [Zafeirakis Zafeirakopoulos](https://zafeirakopoulos.github.io), Associate Professor in the Mathematics department of the National and Kapodistrian University of Athens.

Live at: https://zafeirakopoulos.github.io

## About

The site covers research, publications, teaching, software, and a blog. It's built with [Jekyll](https://jekyllrb.com/) using the [al-folio](https://github.com/alshedivat/al-folio) theme and hosted on GitHub Pages.

## Local development

```bash
bundle install
bundle exec jekyll serve
```

Or with Docker:

```bash
docker compose up
```

## Structure

- `_pages/` — top-level pages (about, research, teaching, software, projects, blog, ...)
- `_posts/` — blog posts
- `_news/` — short announcements shown on the home page
- `_topics/` — student project / topic pages
- `_bibliography/` — publication list (BibTeX)
- `_talks/`, `_seminars/` — talks and seminar listings

## License

Content is © Zafeirakis Zafeirakopoulos. The underlying theme is [al-folio](https://github.com/alshedivat/al-folio), available under the [MIT License](LICENSE).
