<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('document_details'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('title'); ?><?php echo $form->getFieldHTML('title'); ?></li>
                <li><?php echo $form->getFieldLabel('description'); ?><?php echo $form->getFieldHTML('description'); ?></li>
                <li><?php echo $form->getFieldLabel('document'); ?><?php echo $form->getFieldHTML('document'); ?></li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
        <?php echo $form->getFieldHTML('listing_id'); ?>
    <?php echo $form->getFormCloseHTML(); ?>
</div>