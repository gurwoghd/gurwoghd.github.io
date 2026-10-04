# Research Website

A Jekyll-based static site. GitHub Pages builds it automatically — just add markdown files.

## Structure

- `index.md` — home page (bio, profile photo, experience)
- `_includes/social-links.html` — icon-button links (email, CV, LinkedIn, GitHub), sourced from `social:` in `_config.yml`
- `_posts/` — notes (`YYYY-MM-DD-title.md`, listed at `/notes/`)
- `_research/` — research projects / papers (listed at `/research/`)
- `_activities/` — volunteering / activity posts (listed at `/activity/`)
- `_templates/` — writing templates (not published); `activity-template.md` is the outline for activity posts
- `_layouts/`, `_includes/` — page templates
- `assets/css/style.css` — styling
- `_cv/cv.md` — CV source (edit this); `_cv/cv.css` — PDF styling; `_cv/build.sh` — builds `assets/cv.pdf`
- `assets/cv.pdf` — generated CV, downloaded by the CV icon on the home page
- `assets/profile.webp` — profile photo on the home page
- `assets/images/research/` — images used by research cards

## Updating the CV

Edit `_cv/cv.md`, then rebuild the PDF (needs pandoc and Edge/Chrome) and commit both:

```bash
bash _cv/build.sh
```

## Adding a note

Create a file in `_posts/`, e.g. `2026-10-05-my-note.md`:

```markdown
---
title: "Note title"
tags: [tag1, tag2]
---

Body text (markdown works as usual; math with $...$ / $$...$$).
```

## Adding a research entry

Create a file in `_research/`:

```markdown
---
title: "Project title"
status: "In Progress"   # or "Published", "Completed"
image: "/assets/images/research/my-project.jpg"
abstract: "One or two sentences shown on the research card."
paper_url: "https://arxiv.org/abs/..."
venue: "arXiv"           # optional
tags: [topic]
---

Full write-up / abstract / details go here.
```

`image`, `abstract`, and `paper_url` are all optional — omit any of them and that part of the card is simply skipped.

## Local preview (optional)

If you have Ruby installed:

```bash
bundle install
bundle exec jekyll serve
```

Then open `http://localhost:4000`. If setting up Ruby locally is a hassle, just push to GitHub and let Pages build it.

## Deploying to GitHub Pages

Already configured for `gurwoghd/gurwoghd.github.io`, serving from the `main` branch root. On every push to `main`, GitHub rebuilds and redeploys automatically at `https://gurwoghd.github.io`.

## Adding an activity

Copy `_templates/activity-template.md` to `_activities/<name>.md` and fill it in (the template has writing prompts for each section). Minimal front matter:

```markdown
---
title: "Activity title"
period: "Jan 2024 – Feb 2024"
location: "Where"        # optional
date: 2024-01-01          # used for sorting (newest first)
summary: "One-line summary shown in the list."
tags: [volunteer]
---

Post body.
```
