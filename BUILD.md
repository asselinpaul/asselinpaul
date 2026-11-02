Hugo is pinned in `.hugo-version`. Use `./scripts/hugo` for both local work and
production builds, matching GitHub Pages. The first run downloads the official
extended release, verifies its SHA-256 checksum, and caches it in `.tools/`.
The wrapper supports macOS and Linux and leaves the system Hugo installation alone.

```bash
git submodule update --init --recursive
./scripts/hugo server                 # Preview published content
./scripts/hugo server --buildDrafts   # Include drafts, such as 006 - links
./scripts/hugo --gc --minify           # Production build, excluding drafts
```

To upgrade Hugo, change `.hugo-version`, then verify both the production and draft
builds. Check the homepage, posts, navigation, and generated URLs before pushing
to `master`, which triggers deployment.
