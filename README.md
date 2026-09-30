# 연구 전용 웹페이지

Jekyll 기반 정적 사이트입니다. GitHub Pages가 자동으로 빌드하므로, 글은 마크다운 파일만 추가하면 됩니다.

## 구조

- `index.md` — 홈(자기소개)
- `_posts/` — 연구노트 글 (`YYYY-MM-DD-제목.md` 형식, `/notes/` 에서 목록 확인)
- `_projects/` — 연구 프로젝트 (`/projects/` 에서 목록 확인)
- `_layouts/`, `_includes/` — 페이지 틀
- `assets/css/style.css` — 디자인

## 글 추가하는 법

`_posts/` 폴더에 `2026-10-05-내글제목.md` 같은 파일을 만들고 아래처럼 시작하면 됩니다.

```markdown
---
title: "글 제목"
tags: [태그1, 태그2]
---

본문 내용 (마크다운 문법 그대로 사용, 수식은 $...$ / $$...$$ 로 작성)
```

## 프로젝트 추가하는 법

`_projects/` 폴더에 파일을 만들고 아래처럼 시작합니다.

```markdown
---
title: "프로젝트 이름"
status: "진행중"   # 또는 "완료"
summary: "한 줄 요약"
tags: [분야]
---

프로젝트 상세 설명
```

## 로컬에서 미리보기 (선택)

Ruby가 설치되어 있다면:

```bash
bundle install
bundle exec jekyll serve
```

`http://localhost:4000` 에서 확인할 수 있습니다. 로컬 환경이 번거롭다면 그냥 GitHub에 push하고 Pages가 빌드하는 결과를 보는 것도 괜찮습니다.

## GitHub Pages에 배포하기

1. 이 폴더 내용을 새 GitHub 저장소에 push합니다.
2. 저장소 Settings → Pages 에서 Source를 `Deploy from a branch`, 브랜치는 `main`(또는 사용 중인 브랜치) / `/ (root)` 로 설정합니다.
3. 저장소 이름이 `사용자명.github.io` 가 아니라면, `_config.yml`의 `baseurl` 값을 `/저장소이름` 으로 바꿔주세요.
4. 몇 분 후 `https://사용자명.github.io` 또는 `https://사용자명.github.io/저장소이름` 에서 확인 가능합니다.

## 커스터마이징

- `_config.yml` — 사이트 제목/설명 수정
- `index.md` — 자기소개 내용 수정
- `assets/css/style.css` — 색상은 파일 상단 `:root` 변수(`--bg`, `--accent` 등)만 바꿔도 전체 톤이 바뀝니다.
