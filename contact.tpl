<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('contact_us'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('name'); ?><?php echo $form->getFieldHTML('name'); ?></li>
                <li><?php echo $form->getFieldLabel('email'); ?><?php echo $form->getFieldHTML('email'); ?></li>
                <li><?php echo $form->getFieldLabel('confirm_email'); ?><?php echo $form->getFieldHTML('confirm_email'); ?></li>
                <li><?php echo $form->getFieldLabel('comments'); ?><?php echo $form->getFieldHTML('comments'); ?></li>
                <?php foreach($custom_fields as $field) { ?> 
                    <li><?php echo $form->getFieldLabel('custom_'.$field['id']); ?><?php echo $form->getFieldHTML('custom_'.$field['id']); ?>
                    <?php if($form->hasFieldNote('custom_'.$field['id'])) { ?>
                        <p class="note"><?php echo $form->getFieldNote('custom_'.$field['id']); ?></p>
                    <?php } ?>
                    </li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('security_code'); ?><?php echo $form->getFieldHTML('security_code'); ?></li> 
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset> 
    <?php echo $form->getFormCloseHTML(); ?>
</div>