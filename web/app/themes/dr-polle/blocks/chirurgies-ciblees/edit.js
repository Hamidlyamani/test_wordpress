( function ( blocks, element, blockEditor, components, i18n, serverSideRender ) {
	var el = element.createElement;
	var registerBlockType = blocks.registerBlockType;
	var InspectorControls = blockEditor.InspectorControls;
	var useBlockProps = blockEditor.useBlockProps;
	var PanelBody = components.PanelBody;
	var SelectControl = components.SelectControl;
	var TextControl = components.TextControl;
	var TextareaControl = components.TextareaControl;
	var ServerSideRender = serverSideRender;
	var __ = i18n.__;

	registerBlockType( 'dr-polle/chirurgies-ciblees', {
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
						{ title: __( 'Configuration', 'dr-polle' ) },
						el( SelectControl, {
							label: __( 'Type de chirurgie', 'dr-polle' ),
							value: attributes.type_chirurgie,
							options: [
								{ label: __( 'Ciblée', 'dr-polle' ), value: 'ciblee' },
								{ label: __( 'Réparatrice', 'dr-polle' ), value: 'reparatrice' },
							],
							onChange: function ( value ) {
								setAttributes( { type_chirurgie: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'Titre de la section', 'dr-polle' ),
							value: attributes.titre,
							onChange: function ( value ) {
								setAttributes( { titre: value } );
							},
						} ),
						el( TextareaControl, {
							label: __( 'Texte de description (affiché 2x, adapté au responsive)', 'dr-polle' ),
							help: __( 'La balise <b>...</b> est autorisée pour le gras.', 'dr-polle' ),
							value: attributes.texte,
							onChange: function ( value ) {
								setAttributes( { texte: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'Texte du lien', 'dr-polle' ),
							value: attributes.lien_texte,
							onChange: function ( value ) {
								setAttributes( { lien_texte: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'URL du lien', 'dr-polle' ),
							value: attributes.lien_url,
							onChange: function ( value ) {
								setAttributes( { lien_url: value } );
							},
						} )
					)
				),
				el( ServerSideRender, {
					block: 'dr-polle/chirurgies-ciblees',
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
