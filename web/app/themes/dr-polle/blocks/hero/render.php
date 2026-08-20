<?php
/**
 * Server-side render for dr-polle/hero.
 *
 * @var array $attributes
 */

$titre                 = $attributes['titre'] ?? '';
$sous_titre            = $attributes['sous_titre'] ?? '';
$texte                 = $attributes['texte'] ?? '';
$lien_texte            = $attributes['lien_texte'] ?? '';
$lien_url              = $attributes['lien_url'] ?? '';
$rdv_texte             = $attributes['rdv_texte'] ?? '';
$rdv_url               = $attributes['rdv_url'] ?? '';
$image_id              = (int) ( $attributes['image_id'] ?? 0 );
$image_url             = $attributes['image_url'] ?? '';
$image_mobile_id       = (int) ( $attributes['image_mobile_id'] ?? 0 );
$image_mobile_url      = $attributes['image_mobile_url'] ?? '';
$recherche_placeholder = $attributes['recherche_placeholder'] ?? '';

// Icônes uploadées manuellement dans la médiathèque — pas de champ ACF pour
// celles-ci, l'URL pointe directement vers le dossier uploads. La base est
// calculée dynamiquement (wp_upload_dir()) plutôt que codée en dur, pour
// rester correcte après une migration (ex: passage sur Hostinger).
$uploads_base = trailingslashit( wp_upload_dir()['baseurl'] ) . '2026/08/';
?>
<section <?php echo get_block_wrapper_attributes( [ 'class' => 'hero' ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>>
	<div class="slogen">
		<img src="<?php echo esc_url( $uploads_base . 'slogen.png' ); ?>" alt="slogen">
	</div>

	<div class="container">
		<div class="left">
			<?php if ( $titre ) : ?>
				<h1><?php echo esc_html( $titre ); ?></h1>
			<?php endif; ?>

			<?php if ( $sous_titre ) : ?>
				<h3><?php echo esc_html( $sous_titre ); ?></h3>
			<?php endif; ?>

			<?php if ( $texte ) : ?>
				<p><?php echo wp_kses_post( nl2br( esc_html( $texte ) ) ); ?></p>
			<?php endif; ?>

			<?php if ( $lien_texte && $lien_url ) : ?>
				<a href="<?php echo esc_url( $lien_url ); ?>" class="btn"><?php echo esc_html( $lien_texte ); ?></a>
			<?php endif; ?>

			<?php if ( $rdv_texte && $rdv_url ) : ?>
				<a href="<?php echo esc_url( $rdv_url ); ?>" class="btn mobile"><?php echo esc_html( $rdv_texte ); ?></a>
			<?php endif; ?>
		</div>

		<div class="right">
			<?php if ( $image_id ) : ?>
				<?php echo wp_get_attachment_image( $image_id, 'full', false, [ 'class' => 'hero_image', 'alt' => __( 'Hero Image', 'dr-polle' ) ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
			<?php elseif ( $image_url ) : ?>
				<img src="<?php echo esc_url( $image_url ); ?>" alt="<?php esc_attr_e( 'Hero Image', 'dr-polle' ); ?>" class="hero_image">
			<?php endif; ?>

			<?php if ( $image_mobile_id ) : ?>
				<?php echo wp_get_attachment_image( $image_mobile_id, 'full', false, [ 'class' => 'hero_image mobile', 'alt' => __( 'Hero Image', 'dr-polle' ) ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
			<?php elseif ( $image_mobile_url ) : ?>
				<img src="<?php echo esc_url( $image_mobile_url ); ?>" alt="<?php esc_attr_e( 'Hero Image', 'dr-polle' ); ?>" class="hero_image mobile">
			<?php endif; ?>

			<img src="<?php echo esc_url( $uploads_base . 'prendre_icon.png' ); ?>" alt="<?php esc_attr_e( 'Prendre un rendez-vous', 'dr-polle' ); ?>" class="rendez-vous_icon">
		</div>
	</div>

	<div class="container">
		<form class="search-bar" action="<?php echo esc_url( home_url( '/' ) ); ?>" method="get" role="search">
			<input
				type="text"
				name="s"
				placeholder="<?php echo esc_attr( $recherche_placeholder ); ?>"
				value="<?php echo esc_attr( get_search_query() ); ?>"
			>
			<button type="submit" aria-label="<?php esc_attr_e( 'Rechercher', 'dr-polle' ); ?>" style="background:none;border:none;padding:0;">
				<img src="<?php echo esc_url( $uploads_base . 'search_bar_icon.png' ); ?>" alt="<?php esc_attr_e( 'Search Icon', 'dr-polle' ); ?>" class="search_bar_icon">
			</button>
		</form>
	</div>
</section>
