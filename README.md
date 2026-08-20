# dr-polle — WordPress Theme (Technical Test)

Integration of the provided mockup (desktop + mobile) using **Bedrock**, with a custom post type, a taxonomy, ACF fields declared in code, and 5 dynamically rendered Gutenberg blocks.

## Stack

- **WordPress 6.x** on [Bedrock](https://roots.io/bedrock/) — PHP 8.1+
- **ACF** — all fields declared in code via [`stoutlogic/acf-builder`](https://github.com/StoutLogic/acf-builder), no fields created in the admin UI
- **Native Gutenberg blocks** — `block.json` apiVersion 3, server-side rendering (`render.php`)

## What Was Built

**Content** — CPT `chirurgie` + taxonomy `type_chirurgie` (réparatrice / ciblée), both exposed via REST API.

**ACF Fields** (`app/Fields/`, acf-builder):

| Group | Fields | Location |
|---|---|---|
| `chirurgie_fields` | Card text, Content | `post_type == chirurgie` |
| `landing_page_fields` | Logo, Phone, Contact button | `page_type == front_page` |

**5 Blocks** (category "dr polle" in the editor). Each block carries its own configuration fields, isolated in the sidebar panel — no block reads another block's configuration:

| Block | Role | Config |
|---|---|---|
| Hero | Title, text, buttons, desktop/mobile images, search bar | 11 fields |
| Introduction | Text + image (team, premium care) | 10 fields, left/right image |
| Bandeau | Centered sentence with highlighted words | 1 field |
| Surgery Grid | Grid filtered by type + touch slider on mobile | 6 fields incl. card count |
| Targeted Surgeries | 2 surgeries in left/right columns | 5 fields |

Blocks query the CPT via `WP_Query` filtered on the taxonomy: adding a post in the admin automatically surfaces it on the front end without touching code.

**Front-end** — header + off-canvas mobile menu (accordion with sub-menus), touch slider under 992px, responsive integration across 4 breakpoints.

## Note on ACF Blocks

Task 4 requested **ACF Blocks**, which is an **ACF PRO**-exclusive feature. Since no PRO license was provided, the equivalent was implemented using native server-rendered blocks. The conversion is straightforward with a PRO license: `render.php` files stay identical (`$attributes['x']` → `get_field('x')`), and each `edit.js` is replaced by an acf-builder group with `->setLocation('block', '==', 'acf/hero')`.

## Installation

**Requirements**: PHP 8.1+, Composer, MySQL, a local server (XAMPP, Laragon…).

```bash
composer install
cp .env.example .env   # fill in DB_*, WP_HOME, WP_SITEURL
```

### Option A — Preview as-is (recommended)

1. Create an empty database
2. Import `db_test.sql` into it
3. Extract `uploads.zip` into `web/app/uploads/`
4. Open the site — the homepage renders fully

### Option B — Start from scratch

1. Create an empty database and run `web/wp/wp-admin/install.php`
2. Activate the **Advanced Custom Fields** plugin and the **dr-polle** theme
3. Edit the homepage and add blocks from the "dr polle" category
4. To test dynamic rendering: **Surgeries → Add New**, fill in the card text, pick a **Surgery Type**, set a featured image — the card appears in the matching block on the homepage automatically

## Project Structure

```
web/app/themes/dr-polle/
├── app/                    # PHP classes — PSR-4, namespace App\
│   ├── PostTypes/          # CPT chirurgie
│   ├── Taxonomies/         # Taxonomy type_chirurgie
│   ├── Fields/             # ACF groups (acf-builder)
│   └── Blocks/             # Block registration
├── blocks/<block>/         # block.json · edit.js · render.php
├── assets/
│   ├── fonts/gilroy/       # Gilroy Light + ExtraBold
│   └── js/main.js          # Off-canvas mobile menu
├── header.php · footer.php · index.php · page.php
└── style.css
```

## Known Limitations

Scope was intentionally kept to the tasks in the brief. The mobile menu reproduces the mockup structure statically and is not yet wired to `wp_nav_menu()`. Surgery posts have no dedicated template (`single-chirurgie.php`), so the `content` field is not yet rendered on the single post view.
