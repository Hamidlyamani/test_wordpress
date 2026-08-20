<?php
/**
 * Server-side render for dr-polle/prise-en-charge.
 *
 * @var array $attributes
 */

$texte = $attributes['texte'] ?? '';

$allowed = [
	'span' => [ 'class' => [] ],
	'br'   => [],
];
?>
<section <?php echo get_block_wrapper_attributes( [ 'class' => 'prise_en_charge' ] ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?>>
	<div class="container">
		<p><?php echo wp_kses( $texte, $allowed ); // phpcs:ignore WordPress.Security.EscapeOutput.OutputNotEscaped ?></p>
	</div>
</section>
