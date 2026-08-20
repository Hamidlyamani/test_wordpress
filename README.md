# dr-polle — Thème WordPress (test technique)

Intégration de la maquette fournie (desktop + mobile) sous **Bedrock**, avec un custom post type, une taxonomie, des champs ACF déclarés en code et 5 blocs Gutenberg à rendu dynamique.

Les **5 premières sections** de la maquette sont développées sous forme de blocs éditables depuis l'administration ; les sections suivantes reposent sur la même logique.

## Stack

- **WordPress 7.0.4** sur [Bedrock](https://roots.io/bedrock/) — PHP 8.1+
- **ACF** — tous les champs déclarés en code via [`stoutlogic/acf-builder`](https://github.com/StoutLogic/acf-builder), **aucun champ créé en back-office**
- **Blocs Gutenberg natifs** — `block.json` apiVersion 3, rendu serveur (`render.php`)

## Ce qui a été développé

**Contenu** — CPT `chirurgie` + taxonomie `type_chirurgie` (réparatrice / ciblée), tous deux exposés en REST.

**Champs ACF** (`app/Fields/`, acf-builder) :

| Groupe | Champs | Location |
|---|---|---|
| `chirurgie_fields` | Texte de carte, Contenu | `post_type == chirurgie` |
| `landing_page_fields` | Logo, Téléphone, Bouton de contact | `page_type == front_page` |

**5 blocs** (catégorie « dr polle » dans l'éditeur). Chaque bloc porte ses propres champs de configuration, isolés dans le panneau latéral — aucun bloc ne lit la configuration d'un autre :

| Bloc | Rôle | Configuration |
|---|---|---|
| Hero | Titre, texte, boutons, images desktop/mobile, barre de recherche | 11 champs |
| Introduction | Texte + image (équipe, accompagnement premium) | 10 champs, image gauche/droite |
| Bandeau | Phrase centrée avec mots surlignés | 1 champ |
| Grille de chirurgies | Grille filtrée par type + slider tactile en mobile | 6 champs, dont le nombre de fiches |
| Chirurgies ciblées | 2 chirurgies en colonnes gauche / droite | 5 champs |

Les blocs interrogent le CPT via `WP_Query` filtrée sur la taxonomie : ajouter une fiche en back-office la fait apparaître automatiquement en front, sans toucher au code.

**Front-end** — header + menu mobile off-canvas (accordéon à sous-menus), slider tactile sous 992px, intégration responsive fidèle à la maquette (4 breakpoints).

## Écart assumé par rapport à l'énoncé

La tâche 4 demande des blocs via **ACF Blocks**. Après vérification, ACF Blocks est une fonctionnalité exclusive d'**ACF PRO**, dont la licence n'était pas fournie avec le test. J'ai donc implémenté l'équivalent fonctionnel en blocs natifs à rendu serveur, ce qui respecte la contrainte de rendu dynamique et l'isolation des champs de configuration par bloc (tâches 4 et 5).

La conversion est directe avec une licence PRO : les `render.php` restent identiques à `$attributes['x']` → `get_field('x')` près, et chaque `edit.js` est remplacé par un groupe acf-builder avec `->setLocation('block', '==', 'acf/hero')`.

## Installation

**Prérequis** : PHP 8.1+, Composer, MySQL, un serveur local (XAMPP, Laragon…).

1. `composer install` à la racine
2. Copier `.env.example` → `.env`, renseigner `DB_*`, `WP_HOME` et `WP_SITEURL`
3. Créer une base vide

> **Fichiers non versionnés** — `db_test.sql` et `uploads.zip` ne sont pas inclus dans ce dépôt Git (taille + données). Téléchargez-les séparément et placez-les à la racine du projet avant de continuer.

**Option A — voir le rendu tel quel** (recommandé)

4. Importer `db_test.sql` dans la base MySQL
5. Décompresser `uploads.zip` dans `web/app/uploads/`
6. Ouvrir le site : la page d'accueil s'affiche complète

**Option B — repartir de zéro**

4. Lancer `web/wp/wp-admin/install.php`
5. Activer le plugin **Advanced Custom Fields** et le thème **dr-polle**
6. Éditer la page d'accueil et ajouter les blocs de la catégorie « dr polle »
7. Pour vérifier le rendu dynamique : **Chirurgies → Ajouter**, renseigner le texte de carte, choisir un **Type de chirurgie**, définir une image mise en avant — la fiche apparaît dans le bloc correspondant sur l'accueil

## Structure

```
web/app/themes/dr-polle/
├── app/                    # Classes PHP — PSR-4, namespace App\
│   ├── PostTypes/          # CPT chirurgie
│   ├── Taxonomies/         # Taxonomie type_chirurgie
│   ├── Fields/             # Groupes ACF (acf-builder)
│   └── Blocks/             # Enregistrement des blocs
├── blocks/<bloc>/          # block.json · edit.js · render.php
├── assets/
│   ├── fonts/gilroy/       # Gilroy Light + ExtraBold
│   └── js/main.js          # Menu mobile off-canvas
├── header.php · footer.php · index.php · page.php
└── style.css
```

## Limites connues

Le périmètre a été volontairement resserré sur les tâches de l'énoncé. Le menu mobile reproduit la structure de la maquette en statique et n'est pas encore branché sur `wp_nav_menu()`. Les fiches « Chirurgie » n'ont pas de template dédié (`single-chirurgie.php`), le champ `contenu` n'est donc pas encore affiché.

