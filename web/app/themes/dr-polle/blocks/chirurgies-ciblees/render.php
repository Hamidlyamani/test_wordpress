<?php
/**
 * Server-side render for dr-polle/chirurgies-ciblees (".targeted_surgeries" markup).
 *
 * Renders exactly 2 posts, one per column. The description block is shown
 * TWICE in the markup on purpose (".desc.desc1" then ".desc" inside the
 * right column) — that's how the source design toggles it per breakpoint
 * in pure CSS, so both copies must exist in the HTML.
 *
 * IMPORTANT: this loop renders directly inside `while ( $query->have_posts() )`
 * using `$query->the_post()`. An earlier version collected posts into an array
 * first and re-applied post data in a second loop via the standalone
 * `setup_postdata()` function — that silently failed to override the
 * currently-rendering page's global $post in this render context (verified:
 * `get_the_ID()` kept returning the front page's ID instead of the chirurgie
 * post's ID), so every card rendered the front page's title/link instead of
 * the actual chirurgie. `$query->the_post()` (the instance method) does not
 * have that problem, so we stay inside its loop instead of a second pass.
 *
 * @var array $attributes
 */

$terme      = $attributes['type_chirurgie'] ?? 'ciblee';
$titre      = $attributes['titre'] ?? '';
$texte      = $attributes['texte'] ?? '';
$lien_texte = $attributes['lien_texte'] ?? '';
$lien_url   = $attributes['lien_url'] ?? '';

// Icônes uploadées manuellement dans la médiathèque — pas de champ ACF pour
// celles-ci, l'URL pointe directement vers le dossier uploads. La base est
// calculée dynamiquement (wp_upload_dir()) plutôt que codée en dur, pour
// rester correcte après une migration (ex: passage sur Hostinger).
$uploads_base = trailingslashit( wp_upload_dir()['baseurl'] ) . '2026/08/';

$allowed = [ 'b' => [] ];

$desc_html = '';
if ( $texte ) {
	$desc_html .= '<p>' . wp_kses( $texte, $allowed ) . '</p>';
}
if ( $lien_texte && $lien_url ) {
	$desc_html .= '<a href="' . esc_url( $lien_url ) . '" class="btn">' . esc_html( $lien_texte ) . '</a>';
}

$query = new WP_Query( [
	'post_type'      => 'chirurgie',
	'posts_per_page' => 2,
	'tax_query'      => [
		[
			'taxonomy' => 'type_chirurgie',
			'field'    => 'slug',
			'terms'    => $terme,
		],
	],
] );
?>
<section <?php echo get_block_wrapper_attributes( [ 'class' => 'targeted_surgeries' ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>>
	<div class="container">
		<?php if ( $titre ) : ?>
			<h2><?php echo esc_html( $titre ); ?></h2>
		<?php endif; ?>

		<?php if ( $desc_html ) : ?>
			<div class="desc desc1">
				<?php echo $desc_html; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
			</div>
		<?php endif; ?>

		<?php if ( $query->have_posts() ) : ?>
			<div class="content">
				<?php
				while ( $query->have_posts() ) :
					$query->the_post();
					$is_right = 1 === $query->current_post;
					?>
					<div class="col <?php echo $is_right ? 'right' : 'left'; ?>">
						<?php if ( $is_right && $desc_html ) : ?>
							<div class="desc">
								<?php echo $desc_html; // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>
							</div>
						<?php endif; ?>

						<div class="image_content">
							<div class="image_container">
								<?php if ( has_post_thumbnail() ) : ?>
									<?php the_post_thumbnail( 'large' ); ?>
								<?php endif; ?>
							</div>
							<div class="content_text">
								<h4><?php the_title(); ?></h4>
								<?php
								$resume = get_field( 'texte_carte' );
								foreach ( array_filter( array_map( 'trim', explode( "\n", (string) $resume ) ) ) as $paragraphe ) :
									?>
									<p><?php echo esc_html( $paragraphe ); ?></p>
									<?php
								endforeach;
								?>
								<a href="<?php the_permalink(); ?>" class="btn_content">
									<img src="<?php echo esc_url( $uploads_base . 'Arrow1.png' ); ?>" alt="">
									<?php esc_html_e( 'En savoir plus', 'dr-polle' ); ?>
								</a>
							</div>
						</div>
					</div>
					<?php
				endwhile;
				wp_reset_postdata();
				?>
			</div>
		<?php endif; ?>
	</div>
</section>
