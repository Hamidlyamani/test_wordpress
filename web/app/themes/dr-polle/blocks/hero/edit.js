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
	var Button = components.Button;
	var ServerSideRender = serverSideRender;
	var __ = i18n.__;

	function imageField( label, idAttr, urlAttr, attributes, setAttributes ) {
		return el( MediaUploadCheck, {},
			el( MediaUpload, {
				onSelect: function ( media ) {
					var next = {};
					next[ idAttr ] = media.id;
					next[ urlAttr ] = media.url;
					setAttributes( next );
				},
				allowedTypes: [ 'image' ],
				value: attributes[ idAttr ],
				render: function ( obj ) {
					return el(
						'div',
						{ style: { marginBottom: '16px' } },
						el( 'p', {}, el( 'strong', {}, label ) ),
						attributes[ urlAttr ]
							? el( 'img', {
									src: attributes[ urlAttr ],
									style: { maxWidth: '100%', marginBottom: '8px' },
							  } )
							: null,
						el(
							Button,
							{ onClick: obj.open, variant: 'secondary' },
							attributes[ urlAttr ] ? __( "Changer l'image", 'dr-polle' ) : __( 'Choisir une image', 'dr-polle' )
						),
						attributes[ urlAttr ]
							? el(
									Button,
									{
										onClick: function () {
											var next = {};
											next[ idAttr ] = 0;
											next[ urlAttr ] = '';
											setAttributes( next );
										},
										variant: 'link',
										isDestructive: true,
									},
									__( "Retirer l'image", 'dr-polle' )
							  )
							: null
					);
				},
			} )
		);
	}

	registerBlockType( 'dr-polle/hero', {
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
							label: __( 'Titre (h1)', 'dr-polle' ),
							value: attributes.titre,
							onChange: function ( value ) {
								setAttributes( { titre: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'Sous-titre (h3)', 'dr-polle' ),
							value: attributes.sous_titre,
							onChange: function ( value ) {
								setAttributes( { sous_titre: value } );
							},
						} ),
						el( TextareaControl, {
							label: __( 'Texte', 'dr-polle' ),
							value: attributes.texte,
							onChange: function ( value ) {
								setAttributes( { texte: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'Texte du bouton "En savoir plus"', 'dr-polle' ),
							value: attributes.lien_texte,
							onChange: function ( value ) {
								setAttributes( { lien_texte: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'URL du bouton "En savoir plus"', 'dr-polle' ),
							value: attributes.lien_url,
							onChange: function ( value ) {
								setAttributes( { lien_url: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'Texte du bouton "Prendre rendez-vous" (mobile)', 'dr-polle' ),
							value: attributes.rdv_texte,
							onChange: function ( value ) {
								setAttributes( { rdv_texte: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'URL du bouton "Prendre rendez-vous"', 'dr-polle' ),
							value: attributes.rdv_url,
							onChange: function ( value ) {
								setAttributes( { rdv_url: value } );
							},
						} ),
						el( TextControl, {
							label: __( 'Placeholder de la barre de recherche', 'dr-polle' ),
							value: attributes.recherche_placeholder,
							onChange: function ( value ) {
								setAttributes( { recherche_placeholder: value } );
							},
						} )
					),
					el(
						PanelBody,
						{ title: __( 'Images', 'dr-polle' ) },
						imageField( __( 'Image (desktop)', 'dr-polle' ), 'image_id', 'image_url', attributes, setAttributes ),
						imageField( __( 'Image (mobile)', 'dr-polle' ), 'image_mobile_id', 'image_mobile_url', attributes, setAttributes )
					)
				),
				el( ServerSideRender, {
					block: 'dr-polle/hero',
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
