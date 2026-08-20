<?php
/**
 * Server-side render for dr-polle/introduction.
 *
 * Matches the ".introduction .intro" / ".intro.intro2" markup: each block
 * instance renders its own <section class="introduction"><div class="container">
 * wrapper, since the CSS rules are scoped as descendants of .introduction.
 *
 * @var array $attributes
 */

$titre        = $attributes['titre'] ?? '';
$titre_accent = $attributes['titre_accent'] ?? '';
$sous_titre   = $attributes['sous_titre'] ?? '';
$texte        = $attributes['texte'] ?? '';
$lien_texte   = $attributes['lien_texte'] ?? '';
$lien_url     = $attributes['lien_url'] ?? '';
$image_id     = (int) ( $attributes['image_id'] ?? 0 );
$image_url    = $attributes['image_url'] ?? '';
$position     = ( 'droite' === ( $attributes['position_image'] ?? 'gauche' ) ) ? 'droite' : 'gauche';
$is_intro2    = ! empty( $attributes['intro2'] );

$intro_classes = [ 'intro' ];
if ( $is_intro2 ) {
	$intro_classes[] = 'intro2';
}

ob_start();
?>
<div class="image_container">
	<?php if ( $image_id ) : ?>
		<?php echo wp_get_attachment_image( $image_id, 'large' ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
	<?php elseif ( $image_url ) : ?>
		<img src="<?php echo esc_url( $image_url ); ?>" alt="">
	<?php endif; ?>
</div>
<?php
$image_block = ob_get_clean();

ob_start();
?>
<div class="text_container">
	<?php if ( $titre || $titre_accent ) : ?>
		<h2>
			<?php echo esc_html( $titre ); ?>
			<?php if ( $titre_accent ) : ?>
				<span class="red"><?php echo esc_html( $titre_accent ); ?></span>
			<?php endif; ?>
		</h2>
	<?php endif; ?>

	<?php if ( $sous_titre ) : ?>
		<h4><?php echo esc_html( $sous_titre ); ?></h4>
	<?php endif; ?>

	<?php foreach ( array_filter( array_map( 'trim', explode( "\n", $texte ) ) ) as $paragraphe ) : ?>
		<p><?php echo esc_html( $paragraphe ); ?></p>
	<?php endforeach; ?>

	<?php if ( $lien_texte && $lien_url ) : ?>
		<a href="<?php echo esc_url( $lien_url ); ?>" class="btn"><?php echo esc_html( $lien_texte ); ?></a>
	<?php endif; ?>
</div>
<?php
$text_block = ob_get_clean();
?>
<section <?php echo get_block_wrapper_attributes( [ 'class' => 'introduction' ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>>
	<div class="container">
		<div class="<?php echo esc_attr( implode( ' ', $intro_classes ) ); ?>">
			<?php
			if ( 'gauche' === $position ) {
				echo $image_block . $text_block; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
			} else {
				echo $text_block . $image_block; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped
			}
			?>
		</div>
	</div>
</section>
