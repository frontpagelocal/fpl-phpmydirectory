<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('classified_details'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('title'); ?><?php echo $form->getFieldHTML('title'); ?></li>
                <li><?php echo $form->getFieldLabel('description'); ?><?php echo $form->getFieldHTML('description'); ?></li>
                <li><?php echo $form->getFieldLabel('price'); ?><?php echo $form->getFieldHTML('price'); ?></li>
                <li><?php echo $form->getFieldLabel('expire_date'); ?><?php echo $form->getFieldHTML('expire_date'); ?></li>
                <li><?php echo $form->getFieldLabel('www'); ?><?php echo $form->getFieldHTML('www'); ?></li>
                <li><?php echo $form->getFieldLabel('buttoncode'); ?><?php echo $form->getFieldHTML('buttoncode'); ?></li>
                <?php if($form->fieldExists('classified_image1')) { ?>
                    <?php for($x = 1; $x <= 5; $x++) { ?>
                        <li><?php echo $form->getFieldLabel('classified_image'.$x); ?><?php echo $form->getFieldHTML('classified_image'.$x); ?></li>
                    <?php } ?>
                <?php } ?>
                <?php if($form->fieldExists('delete_images')) { ?>
                    <li><?php echo $form->getFieldLabel('delete_images'); ?><?php echo $form->getFieldHTML('delete_images'); ?></li>
                <?php } ?>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
        <?php echo $form->getFieldHTML('listing_id'); ?>
    <?php echo $form->getFormCloseHTML(); ?>
</div>