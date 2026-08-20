<?php

namespace App\Fields;

use StoutLogic\AcfBuilder\FieldsBuilder;

class LandingPageFields
{
    public static function register(): void
    {
        $fields = new FieldsBuilder('landing_page_fields');

        $fields
            ->addImage('logo', [
                'label'         => 'Logo',
                'instructions'  => 'Logo affiché dans le header.',
                'return_format' => 'id',
            ])
            ->addText('telephone', [
                'label'        => 'Téléphone',
                'instructions' => 'Affiché dans le header (ex : 01 23 89 89 87).',
            ])
            ->addText('texte_bouton_contact', [
                'label'         => 'Texte du bouton de contact',
                'default_value' => 'Nous contacter',
            ])
            ->addLink('lien_bouton_contact', [
                'label'        => 'Lien du bouton de contact',
                'instructions' => 'URL, cible et libellé du bouton "Nous contacter".',
            ])
            ->setLocation('page_type', '==', 'front_page');

        acf_add_local_field_group($fields->build());
    }
}
