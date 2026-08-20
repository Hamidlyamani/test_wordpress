( function ( blocks, element, blockEditor, components, i18n, serverSideRender ) {
	var el = element.createElement;
	var registerBlockType = blocks.registerBlockType;
	var InspectorControls = blockEditor.InspectorControls;
	var useBlockProps = blockEditor.useBlockProps;
	var PanelBody = components.PanelBody;
	var TextareaControl = components.TextareaControl;
	var ServerSideRender = serverSideRender;
	var __ = i18n.__;

	registerBlockType( 'dr-polle/prise-en-charge', {
		edit: function ( props ) {
			var attributes = props.attributes;
			var setAttributes = props.setAttributes;
			var blockProps = useBlockProps();

			return el(
				'div',
				blockProps,
				el(
					InspectorControls,
					{},
					el(
						PanelBody,
						{ title: __( 'Contenu', 'dr-polle' ) },
						el( TextareaControl, {
							label: __( 'Texte', 'dr-polle' ),
							help: __(
								'HTML autorisé : <span class="red">...</span> pour surligner en rouge, <br> pour un saut de ligne.',
								'dr-polle'
							),
							value: attributes.texte,
							onChange: function ( value ) {
								setAttributes( { texte: value } );
							},
						} )
					)
				),
				el( ServerSideRender, {
					block: 'dr-polle/prise-en-charge',
					attributes: attributes,
				} )
			);
		},
		save: function () {
			return null;
		},
	} );
} )(
	window.wp.blocks,
	window.wp.element,
	window.wp.blockEditor,
	window.wp.components,
	window.wp.i18n,
	window.wp.serverSideRender
);
