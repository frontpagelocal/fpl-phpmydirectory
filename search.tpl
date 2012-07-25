<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('advanced_search'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('keyword'); ?><?php echo $form->getFieldHTML('keyword'); ?></li>
                <?php if(!$form->isFieldHidden('category') AND $form->fieldExists('category')) { ?>
                    <li><?php echo $form->getFieldLabel('category'); ?><?php echo $form->getFieldHTML('category'); ?></li>
                <?php } ?>
                <?php if(!$form->isFieldHidden('location_id') AND $form->fieldExists('location_id')) { ?>
                    <li><?php echo $form->getFieldLabel('location_id'); ?><?php echo $form->getFieldHTML('location_id'); ?></li>
                <?php } ?>
                <?php if(!$form->isFieldHidden('location') AND $form->fieldExists('location')) { ?>
                    <li><?php echo $form->getFieldLabel('location'); ?><?php echo $form->getFieldHTML('location'); ?></li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('zip'); ?><?php echo $form->getFieldHTML('zip'); ?></li>
                <li><?php echo $form->getFieldLabel('zip_miles'); ?><?php echo $form->getFieldHTML('zip_miles'); ?></li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?> 
</div>
<div class="form-container">
    <?php echo $form_products->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form_products->getFieldSetLabel('classifieds_search'); ?></legend>
            <ol>
                <li>
                    <?php echo $form_products->getFieldLabel('keyword'); ?><?php echo $form_products->getFieldHTML('keyword'); ?>    
                </li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form_products->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form_products->getFormCloseHTML(); ?> 
</div>
<div class="form-container">
    <?php echo $form_documents->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form_documents->getFieldSetLabel('documents_search'); ?></legend>
            <ol>
                <li>
                    <?php echo $form_documents->getFieldLabel('keyword'); ?><?php echo $form_documents->getFieldHTML('keyword'); ?>    
                </li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form_documents->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form_documents->getFormCloseHTML(); ?> 
</div>
<div class="form-container">
    <?php echo $form_images->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form_images->getFieldSetLabel('images_search'); ?></legend>
            <ol>
                <li>
                    <?php echo $form_images->getFieldLabel('keyword'); ?><?php echo $form_images->getFieldHTML('keyword'); ?>    
                </li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form_images->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form_images->getFormCloseHTML(); ?> 
</div>