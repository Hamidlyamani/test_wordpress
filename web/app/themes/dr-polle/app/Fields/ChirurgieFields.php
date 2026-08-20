<?php

namespace App\Fields;

use StoutLogic\AcfBuilder\FieldsBuilder;

class ChirurgieFields
{
    public static function register(): void
    {
        $fields = new FieldsBuilder('chirurgie_fields');

        $fields
            ->addTextarea('texte_carte', [
                'label'        => 'Texte de la carte',
                'instructions' => "Texte court affiché dans les cartes (accueil).",
                'rows'         => 4,
            ])
            ->addWysiwyg('contenu', [
                'label'         => 'Contenu de la page',
                'instructions'  => "Texte complet affiché sur la page détail de la chirurgie.",
                'tabs'          => 'visual',
                'toolbar'       => 'basic',
                'media_upload'  => 0,
            ])
            ->setLocation('post_type', '==', 'chirurgie');

        acf_add_local_field_group($fields->build());
    }
}
