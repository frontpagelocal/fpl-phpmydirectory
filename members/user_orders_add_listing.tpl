<?php if($form->fieldExists('submit_primary')) { ?>
    <div class="form-container">
        <?php echo $form->getFormOpenHTML(); ?>
            <fieldset>
                <legend><?php echo $lang['user_listings_primary_category']; ?></legend>
                <ol>
                    <li><?php echo $form->getFieldLabel('primary_category_id'); ?><?php echo $form->getFieldHTML('primary_category_id'); ?></li>
                </ol>
            </fieldset>
            <fieldset class="buttonrow">
                <?php echo $form->getFieldHTML('submit_primary'); ?>
            </fieldset>
        <?php echo $form->getFormCloseHTML(); ?>
    </div>
<?php } else { ?>
    <div class="form-container">
        <?php echo $form->getFormOpenHTML(); ?>
            <fieldset>
                <legend><?php echo $lang['user_listings_listing']; ?></legend>
                <ol>
                    <li><?php echo $form->getFieldLabel('title'); ?><?php echo $form->getFieldHTML('title'); ?></li>
                    <?php if($form->fieldExists('friendly_url')) { ?>
                        <li><?php echo $form->getFieldLabel('friendly_url'); ?><?php echo $form->getFieldHTML('friendly_url'); ?></li>
                    <?php } ?>
                    <?php if(!$form->isFieldHidden('categories') AND $form->fieldExists('categories')) { ?>
                        <li><?php echo $form->getFieldLabel('categories'); ?><?php echo $form->getFieldHTML('categories'); ?></li>
                    <?php } ?>
                    <?php if($product['short_description_size']) { ?>
                        <li>
                            <?php echo $form->getFieldLabel('description_short'); ?><?php echo $form->getFieldHTML('description_short'); ?>
                            <p class="note counter"><?php echo $form->getFieldCounterHTML('description_short'); ?></p>
                        </li>
                    <?php } ?>
                    <?php if($product['description_size']) { ?>
                        <li>
                            <?php echo $form->getFieldLabel('description'); ?><?php echo $form->getFieldHTML('description'); ?>
                            <p class="note counter"><?php echo $form->getFieldCounterHTML('description'); ?></p>
                        </li>
                    <?php } ?>
                    <?php if($product['keywords_limit']) { ?>
                        <li>
                            <?php echo $form->getFieldLabel('keywords'); ?><?php echo $form->getFieldHTML('keywords'); ?>
                            <p class="note"><?php echo $lang['user_listings_limit']; ?>: <?php echo $product['keywords_limit']; ?></p>
                        </li>
                    <?php } ?>
                    <?php if($product['meta_title_size']) { ?>
                        <li>
                            <?php echo $form->getFieldLabel('meta_title'); ?><?php echo $form->getFieldHTML('meta_title'); ?>
                            <p class="note counter"><?php echo $form->getFieldCounterHTML('meta_title'); ?></p>
                        </li>
                    <?php } ?>
                    <?php if($product['meta_description_size']) { ?>
                        <li>
                            <?php echo $form->getFieldLabel('meta_description'); ?><?php echo $form->getFieldHTML('meta_description'); ?>
                            <p class="note counter"><?php echo $form->getFieldCounterHTML('meta_description'); ?></p>
                        </li>
                    <?php } ?>
                    <?php if($product['meta_keywords_limit']) { ?>
                        <li>
                            <?php echo $form->getFieldLabel('meta_keywords'); ?><?php echo $form->getFieldHTML('meta_keywords'); ?>
                            <p class="note"><?php echo $lang['user_listings_limit']; ?>: <?php echo $product['meta_keywords_limit']; ?></p>
                        </li>
                    <?php } ?>
                    <?php if($product['hours_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('hours'); ?><?php echo $form->getFieldHTML('hours'); ?></li>
                    <?php } ?>
                    <?php if($product['phone_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('phone'); ?><?php echo $form->getFieldHTML('phone'); ?></li>
                    <?php } ?>
                    <?php if($product['fax_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('fax'); ?><?php echo $form->getFieldHTML('fax'); ?></li>
                    <?php } ?>
                    <?php if($product['address_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('listing_address1'); ?><?php echo $form->getFieldHTML('listing_address1'); ?></li>
                        <li><?php echo $form->getFieldLabel('listing_address2'); ?><?php echo $form->getFieldHTML('listing_address2'); ?></li>
                    <?php } ?>
                    <?php if(!$form->isFieldHidden('location_id')) { ?>
                        <li><?php echo $form->getFieldLabel('location_id'); ?><?php echo $form->getFieldHTML('location_id'); ?></li>
                    <?php } ?>
                    <?php if($product['location_text_1']) { ?>
                        <li><?php echo $form->getFieldLabel('location_text_1'); ?><?php echo $form->getFieldHTML('location_text_1'); ?></li>
                    <?php } ?>
                    <?php if($product['location_text_2']) { ?>
                        <li><?php echo $form->getFieldLabel('location_text_2'); ?><?php echo $form->getFieldHTML('location_text_2'); ?></li>
                    <?php } ?>
                    <?php if($product['location_text_3']) { ?>
                        <li><?php echo $form->getFieldLabel('location_text_3'); ?><?php echo $form->getFieldHTML('location_text_3'); ?></li>
                    <?php } ?>
                    <?php if($product['zip_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('listing_zip'); ?><?php echo $form->getFieldHTML('listing_zip'); ?></li>
                    <?php } ?>
                    <?php if($product['coordinates_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('latitude'); ?><?php echo $form->getFieldHTML('latitude'); ?></li>
                        <li><?php echo $form->getFieldLabel('longitude'); ?><?php echo $form->getFieldHTML('longitude'); ?><?php echo $form->getFieldPicker('longitude'); ?></li>
                    <?php } ?>
                    <?php if($product['www_allow']) { ?>
                        <li>
                            <?php echo $form->getFieldLabel('www'); ?><?php echo $form->getFieldHTML('www'); ?>
                            <p class="note"><?php echo $form->getFieldNote('www'); ?></p>
                        </li>
                    <?php } ?>
                    <?php if($product['email_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('mail'); ?><?php echo $form->getFieldHTML('mail'); ?></li>
                    <?php } ?>
                    <?php foreach($fields as $field) { ?>
                        <li><?php echo $form->getFieldLabel('custom_'.$field['id']); ?><?php echo $form->getFieldHTML('custom_'.$field['id']); ?>
                        <?php if($form->hasFieldNote('custom_'.$field['id'])) { ?>
                            <p class="note"><?php echo $form->getFieldNote('custom_'.$field['id']); ?></p>
                        <?php } ?>
                        </li>
                    <?php } ?>
                    <?php if($product['logo_allow']) { ?>
                        <li><?php echo $form->getFieldLabel('logo'); ?><?php echo $form->getFieldHTML('logo'); ?></li>
                    <?php } ?>
                </ol>
                <?php echo $form->getFieldHTML('primary_category_id'); ?>
                <?php if($form->isFieldHidden('location_id')) { ?><?php echo $form->getFieldHTML('location_id'); ?><?php } ?>
                <?php if($form->isFieldHidden('categories')) { ?><?php echo $form->getFieldHTML('categories'); ?><?php } ?>
            </fieldset>
            <fieldset class="buttonrow">
                <?php echo $form->getFieldHTML('submit'); ?>
            </fieldset>
        <?php echo $form->getFormCloseHTML(); ?>
    </div>
<?php } ?>