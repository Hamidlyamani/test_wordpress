<?php
/**
 * Server-side render for dr-polle/grille-chirurgies (".chirurgies_reparatrices" markup).
 *
 * @var array $attributes
 */

$terme      = $attributes['type_chirurgie'] ?? 'reparatrice';
$titre      = $attributes['titre'] ?? '';
$texte      = $attributes['texte'] ?? '';
$lien_texte = $attributes['lien_texte'] ?? '';
$lien_url   = $attributes['lien_url'] ?? '';
$nombre     = (int) ( $attributes['nombre'] ?? 3 );

$allowed_desc = [ 'b' => [] ];

$query = new WP_Query( [
	'post_type'      => 'chirurgie',
	'posts_per_page' => $nombre,
	'tax_query'      => [
		[
			'taxonomy' => 'type_chirurgie',
			'field'    => 'slug',
			'terms'    => $terme,
		],
	],
] );
?>
<section <?php echo get_block_wrapper_attributes( [ 'class' => 'chirurgies_reparatrices' ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>>
	<div class="container">
		<?php if ( $titre ) : ?>
			<h2><?php echo esc_html( $titre ); ?></h2>
		<?php endif; ?>

		<?php if ( $texte ) : ?>
			<p class="desc"><?php echo wp_kses( $texte, $allowed_desc ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
		<?php endif; ?>

		<?php if ( $lien_texte && $lien_url ) : ?>
			<a href="<?php echo esc_url( $lien_url ); ?>" class="btn"><?php echo esc_html( $lien_texte ); ?></a>
		<?php endif; ?>

		<?php if ( $query->have_posts() ) : ?>
			<div class="cards">
				<?php while ( $query->have_posts() ) : $query->the_post(); ?>
					<div class="card">
						<?php if ( has_post_thumbnail() ) : ?>
							<?php the_post_thumbnail( 'large' ); ?>
						<?php endif; ?>
						<div class="content">
							<div class="text_content">
								<h3><?php the_title(); ?></h3>
								<?php $resume = get_field( 'texte_carte' ); ?>
								<?php if ( $resume ) : ?>
									<p><?php echo esc_html( $resume ); ?></p>
								<?php endif; ?>
								<a href="<?php the_permalink(); ?>" class="btn_card">
									<?php esc_html_e( 'En savoir plus', 'dr-polle' ); ?>
								</a>
							</div>
						</div>
					</div>
				<?php endwhile; ?>
			</div>
			<?php wp_reset_postdata(); ?>
		<?php endif; ?>
	</div>
</section>
