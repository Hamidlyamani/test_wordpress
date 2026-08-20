<?php
/**
 * The header for our theme.
 *
 * Header markup pulls from the "Landing Page Fields" ACF group (logo,
 * telephone, contact button). That group is location-scoped to
 * `page_type == front_page`, so its values only attach to the front page's
 * post object — on any other page (a chirurgie detail page, for example)
 * `get_field()` without an explicit post ID would return nothing. We fetch
 * the front page ID once and read the fields from it explicitly so the
 * header stays populated site-wide.
 *
 * @package dr_polle
 */

$front_page_id = (int) get_option( 'page_on_front' );

$logo                 = $front_page_id ? get_field( 'logo', $front_page_id ) : null;
$telephone            = $front_page_id ? get_field( 'telephone', $front_page_id ) : '';
$texte_bouton_contact = $front_page_id ? get_field( 'texte_bouton_contact', $front_page_id ) : '';
$lien_bouton_contact  = $front_page_id ? get_field( 'lien_bouton_contact', $front_page_id ) : null;

// Icônes uploadées manuellement dans la médiathèque — pas de champ ACF pour
// celles-ci, l'URL pointe directement vers le dossier uploads. La base est
// calculée dynamiquement (wp_upload_dir()) plutôt que codée en dur, pour
// rester correcte après une migration (ex: passage sur Hostinger).
$uploads_base = trailingslashit( wp_upload_dir()['baseurl'] ) . '2026/08/';

$telephone_href = $telephone ? preg_replace( '/[^0-9+]/', '', $telephone ) : '';

$contact_url    = '#';
$contact_target = '';
$contact_texte  = $texte_bouton_contact ?: __( 'Nous contacter', 'dr-polle' );

if ( is_array( $lien_bouton_contact ) && ! empty( $lien_bouton_contact['url'] ) ) {
	$contact_url    = $lien_bouton_contact['url'];
	$contact_target = $lien_bouton_contact['target'] ?? '';
	$contact_texte  = $lien_bouton_contact['title'] ?: $contact_texte;
}
?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php wp_body_open(); ?>
<div id="page" class="site">

	<header class="header">
		<div class="menu_phone">
			<button class="menu_toggle" type="button" aria-controls="mobile-menu" aria-expanded="false">
				<img src="<?php echo esc_url( $uploads_base . 'search_icon.png' ); ?>" alt="Menu">
				<span><?php esc_html_e( 'Menu', 'dr-polle' ); ?></span>
			</button>
			<?php if ( $telephone ) : ?>
				<a class="tell" href="tel:<?php echo esc_attr( $telephone_href ); ?>">
					<img src="<?php echo esc_url( $uploads_base . 'phone.png' ); ?>" alt="Tell">
					<span><?php echo esc_html( $telephone ); ?></span>
				</a>
			<?php endif; ?>
		</div>

		<div class="logo">
			<a href="<?php echo esc_url( home_url( '/' ) ); ?>">
				<?php if ( $logo ) : ?>
					<?php echo wp_get_attachment_image( $logo, 'full', false, [ 'alt' => get_bloginfo( 'name' ) ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
				<?php else : ?>
					<img src="<?php echo esc_url( $uploads_base . 'logo.png' ); ?>" alt="<?php echo esc_attr( get_bloginfo( 'name' ) ); ?>">
				<?php endif; ?>
			</a>
		</div>

		<div class="buttons">
			<button class="search" type="button">
				<img src="<?php echo esc_url( $uploads_base . 'search.png' ); ?>" alt="Search">
			</button>
			<a
				class="contact"
				href="<?php echo esc_url( $contact_url ); ?>"
				<?php echo $contact_target ? 'target="' . esc_attr( $contact_target ) . '"' : ''; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
				<?php echo '_blank' === $contact_target ? 'rel="noopener"' : ''; ?>
			>
				<?php echo esc_html( $contact_texte ); ?>
			</a>
		</div>
	</header><!-- .header -->

	<nav class="mobile-menu" id="mobile-menu" aria-hidden="true">
		<div class="mobile-menu__header">
			<button class="mobile-menu__close" aria-label="<?php esc_attr_e( 'Fermer le menu', 'dr-polle' ); ?>">&#10005;</button>
			<div class="mobile-menu__logo">
				<?php if ( $logo ) : ?>
					<?php echo wp_get_attachment_image( $logo, 'full', false, [ 'alt' => get_bloginfo( 'name' ) ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
				<?php else : ?>
					<img src="<?php echo esc_url( $uploads_base . 'logo.png' ); ?>" alt="<?php echo esc_attr( get_bloginfo( 'name' ) ); ?>">
				<?php endif; ?>
			</div>
		</div>

		<div class="mobile-menu__search">
			<input type="text" placeholder="<?php esc_attr_e( 'Rechercher une pathologie, un traitement ou un autre soin...', 'dr-polle' ); ?>">
			<button aria-label="<?php esc_attr_e( 'Rechercher', 'dr-polle' ); ?>"><img src="<?php echo esc_url( $uploads_base . 'search_bar_icon.png' ); ?>" alt=""></button>
		</div>

		<ul class="mobile-menu__nav">
			<li class="active"><a href="#"><?php esc_html_e( 'Accueil', 'dr-polle' ); ?></a></li>

			<li class="has-sub">
				<button class="sub-toggle">
					Dr Polle <span class="indicator">+</span>
				</button>
				<ul class="sub-menu">
					<li><a href="#"><?php esc_html_e( 'La clinique', 'dr-polle' ); ?></a></li>
					<li><a href="#"><?php esc_html_e( 'Equipe', 'dr-polle' ); ?></a></li>
					<li class="has-sub">
						<button class="sub-toggle">
							<?php esc_html_e( 'Les consultations', 'dr-polle' ); ?> <span class="indicator">+</span>
						</button>
						<ul class="sub-menu">
							<li><a href="#"><?php esc_html_e( "Consultation avec l'anesthésiste", 'dr-polle' ); ?></a></li>
							<li><a href="#"><?php esc_html_e( 'Consultation avec le Dr Polle', 'dr-polle' ); ?></a></li>
							<li><a href="#"><?php esc_html_e( 'Consultation prothèse genou', 'dr-polle' ); ?></a></li>
						</ul>
					</li>
					<li><a href="#"><?php esc_html_e( 'Tarifs et remboursement', 'dr-polle' ); ?></a></li>
				</ul>
			</li>

			<li class="has-sub">
				<button class="sub-toggle">
					<?php esc_html_e( 'Pathologies', 'dr-polle' ); ?> <span class="indicator">+</span>
				</button>
				<ul class="sub-menu"></ul>
			</li>

			<li class="has-sub">
				<button class="sub-toggle">
					<?php esc_html_e( 'Chirurgies', 'dr-polle' ); ?> <span class="indicator">+</span>
				</button>
				<ul class="sub-menu"></ul>
			</li>

			<li class="has-sub">
				<button class="sub-toggle">
					<?php esc_html_e( 'Injections et infiltrations', 'dr-polle' ); ?> <span class="indicator">+</span>
				</button>
				<ul class="sub-menu"></ul>
			</li>

			<li><a href="#"><?php esc_html_e( 'Accompagnement premium', 'dr-polle' ); ?></a></li>
			<li><a href="#"><?php esc_html_e( 'Protocole soins post-opératoire', 'dr-polle' ); ?></a></li>

			<li class="has-sub">
				<button class="sub-toggle">
					<?php esc_html_e( 'Urgences', 'dr-polle' ); ?> <span class="indicator">+</span>
				</button>
				<ul class="sub-menu"></ul>
			</li>

			<li><a href="#"><?php esc_html_e( 'Blog', 'dr-polle' ); ?></a></li>
		</ul>

		<div class="mobile-menu__search mobile-menu__search--bottom">
			<input type="text" placeholder="<?php esc_attr_e( 'Rechercher un soin, une carte...', 'dr-polle' ); ?>">
			<button aria-label="<?php esc_attr_e( 'Rechercher', 'dr-polle' ); ?>"><img src="<?php echo esc_url( $uploads_base . 'search_bar_icon.png' ); ?>" alt=""></button>
		</div>
	</nav>

	<div class="mobile-menu__overlay"></div>
