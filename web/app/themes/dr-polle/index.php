<?php
/**
 * The main template file.
 *
 * @package dr_polle
 */

get_header();
?>

	<main id="primary" class="site-main">

		<?php if ( have_posts() ) : ?>

			<?php
			while ( have_posts() ) :
				the_post();
				?>
				<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
					<header class="entry-header">
						<?php
						if ( is_singular() ) {
							the_title( '<h1 class="entry-title">', '</h1>' );
						} else {
							the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
						}
						?>
					</header>

					<div class="entry-content">
						<?php the_content(); ?>
					</div>
				</article>
				<?php
			endwhile;

			the_posts_navigation();
			?>

		<?php else : ?>

			<p><?php esc_html_e( 'Nothing found.', 'dr-polle' ); ?></p>

		<?php endif; ?>

	</main><!-- #primary -->

<?php
get_footer();
