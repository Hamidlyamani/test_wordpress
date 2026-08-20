( function ( blocks, element, blockEditor, components, i18n, serverSideRender ) {
	var el = element.createElement;
	var registerBlockType = blocks.registerBlockType;
	var InspectorControls = blockEditor.InspectorControls;
	var useBlockProps = blockEditor.useBlockProps;
	var MediaUpload = blockEditor.MediaUpload;
	var MediaUploadCheck = blockEditor.MediaUploadCheck;
	var PanelBody = components.PanelBody;
	var TextControl = components.TextControl;
	var TextareaControl = components.TextareaControl;
	var SelectControl = components.SelectControl;
	var ToggleControl = components.ToggleControl;
	var Button = components.Button;
	var ServerSideRender = serverSideRender;
	var __ = i18n.__;

	registerBlockType( 'dr-polle/introduction', {
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
						el( TextControl, {
							label: __( 'Titre (début, en blanc)', 'dr-polle' ),
							value: attributes.titre,
							onChange: function ( value ) {
								setAttributes( { titre: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'Titre (fin, en rouge)', 'dr-polle' ),
							value: attributes.titre_accent,
							onChange: function ( value ) {
								setAttributes( { titre_accent: value } );
							},
						} ),
						el( TextareaControl, {
							label: __( 'Sous-titre (h4)', 'dr-polle' ),
							value: attributes.sous_titre,
							onChange: function ( value ) {
								setAttributes( { sous_titre: value } );
							},
						} ),
						el( TextareaControl, {
							label: __( 'Texte (un paragraphe par ligne)', 'dr-polle' ),
							help: __( 'Chaque ligne devient un <p> séparé.', 'dr-polle' ),
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
					),
					el(
						PanelBody,
						{ title: __( 'Image', 'dr-polle' ) },
						el( MediaUploadCheck, {},
							el( MediaUpload, {
								onSelect: function ( media ) {
									setAttributes( { image_id: media.id, image_url: media.url } );
								},
								allowedTypes: [ 'image' ],
								value: attributes.image_id,
								render: function ( obj ) {
									return el(
										'div',
										{},
										attributes.image_url
											? el( 'img', { src: attributes.image_url, style: { maxWidth: '100%', marginBottom: '8px' } } )
											: null,
										el(
											Button,
											{ onClick: obj.open, variant: 'secondary' },
											attributes.image_url ? __( "Changer l'image", 'dr-polle' ) : __( 'Choisir une image', 'dr-polle' )
										)
									);
								},
							} )
						)
					),
					el(
						PanelBody,
						{ title: __( 'Mise en page', 'dr-polle' ) },
						el( SelectControl, {
							label: __( "Position de l'image", 'dr-polle' ),
							value: attributes.position_image,
							options: [
								{ label: __( 'Gauche (comme "équipe")', 'dr-polle' ), value: 'gauche' },
								{ label: __( 'Droite (comme "accompagnement")', 'dr-polle' ), value: 'droite' },
							],
							onChange: function ( value ) {
								setAttributes( { position_image: value } );
							},
						} ),
						el( ToggleControl, {
							label: __( 'Variante "intro2" (2e bloc de la section)', 'dr-polle' ),
							checked: attributes.intro2,
							onChange: function ( value ) {
								setAttributes( { intro2: value } );
							},
						} )
					)
				),
				el( ServerSideRender, {
					block: 'dr-polle/introduction',
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
