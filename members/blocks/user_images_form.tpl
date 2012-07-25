<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('image_details'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('title'); ?><?php echo $form->getFieldHTML('title'); ?></li>
                <li><?php echo $form->getFieldLabel('description'); ?><?php echo $form->getFieldHTML('description'); ?></li>
                <li><?php echo $form->getFieldLabel('image'); ?><?php echo $form->getFieldHTML('image'); ?></li>
                <li><?php echo $form->getFieldLabel('ordering'); ?><?php echo $form->getFieldHTML('ordering'); ?></li>
                <?php if($form->fieldExists('preview')) { ?>
                    <li><?php echo $form->getFieldLabel('preview'); ?><?php echo $form->getFieldHTML('preview'); ?></li>
                <?php } ?>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
        <?php echo $form->getFieldHTML('listing_id'); ?>
    <?php echo $form->getFormCloseHTML(); ?>
</div>