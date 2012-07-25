<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
    <fieldset>
            <legend><?php echo $form->getFieldSetLabel('credit_card'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('cc_type'); ?><?php echo $form->getFieldHTML('cc_type'); ?></li>
                <li><?php echo $form->getFieldLabel('cc_number'); ?><?php echo $form->getFieldHTML('cc_number'); ?></li>
                <li><?php echo $form->getFieldLabel('cc_expire_month'); ?><?php echo $form->getFieldHTML('cc_expire_month'); ?></li>
                <li><?php echo $form->getFieldLabel('cc_expire_year'); ?><?php echo $form->getFieldHTML('cc_expire_year'); ?></li>
                <li><?php echo $form->getFieldLabel('cc_cvv2'); ?><?php echo $form->getFieldHTML('cc_cvv2'); ?></li>
            </ol>
    </fieldset>
    <fieldset class="buttonrow">
        <?php echo $form->getFieldHTML('submit'); ?>
    </fieldset>
    <?php echo $form->getFieldSetHTML('hidden'); ?>
    <?php echo $form->getFormCloseHTML(); ?>
</div>