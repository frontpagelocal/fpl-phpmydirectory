<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('user_details'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('id'); ?><?php echo $form->getFieldHTML('id'); ?></li>
                <?php if($form->fieldExists('login')) { ?>
                    <li><?php echo $form->getFieldLabel('login'); ?><?php echo $form->getFieldHTML('login'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_email')) { ?>
                    <li><?php echo $form->getFieldLabel('user_email'); ?><?php echo $form->getFieldHTML('user_email'); ?></li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('user_first_name'); ?><?php echo $form->getFieldHTML('user_first_name'); ?></li>
                <li><?php echo $form->getFieldLabel('user_last_name'); ?><?php echo $form->getFieldHTML('user_last_name'); ?></li>
                <li><?php echo $form->getFieldLabel('user_organization'); ?><?php echo $form->getFieldHTML('user_organization'); ?></li>
                <li><?php echo $form->getFieldLabel('profile_image'); ?><?php echo $form->getFieldHTML('profile_image'); ?></li>
                <?php if($form->fieldExists('current_profile_image')) { ?>
                    <li><?php echo $form->getFieldLabel('current_profile_image'); ?><?php echo $form->getFieldHTML('current_profile_image'); ?></li>
                    <li><?php echo $form->getFieldLabel('delete_profile_image'); ?><?php echo $form->getFieldHTML('delete_profile_image'); ?></li>
                <?php } ?>
                <?php foreach($custom_fields as $field) { ?>
                    <li><?php echo $form->getFieldLabel('custom_'.$field['id']); ?><?php echo $form->getFieldHTML('custom_'.$field['id']); ?>
                    <?php if($form->hasFieldNote('custom_'.$field['id'])) { ?>
                        <p class="note"><?php echo $form->getFieldNote('custom_'.$field['id']); ?></p>
                    <?php } ?>
                    </li>
                <?php } ?>
                <?php if($form->fieldExists('email_lists')) { ?>
                    <li><?php echo $form->getFieldLabel('email_lists'); ?><?php echo $form->getFieldHTML('email_lists'); ?></li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('timezone'); ?><?php echo $form->getFieldHTML('timezone'); ?></li>
            </ol>
        </fieldset>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('address'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('user_address1'); ?><?php echo $form->getFieldHTML('user_address1'); ?></li>
                <li><?php echo $form->getFieldLabel('user_address2'); ?><?php echo $form->getFieldHTML('user_address2'); ?></li>
                <li><?php echo $form->getFieldLabel('user_city'); ?><?php echo $form->getFieldHTML('user_city'); ?></li>
                <li><?php echo $form->getFieldLabel('user_state'); ?><?php echo $form->getFieldHTML('user_state'); ?></li>
                <li><?php echo $form->getFieldLabel('user_country'); ?><?php echo $form->getFieldHTML('user_country'); ?></li>
                <li><?php echo $form->getFieldLabel('user_zip'); ?><?php echo $form->getFieldHTML('user_zip'); ?></li>
                <li><?php echo $form->getFieldLabel('user_phone'); ?><?php echo $form->getFieldHTML('user_phone'); ?></li>
                <li><?php echo $form->getFieldLabel('user_fax'); ?><?php echo $form->getFieldHTML('user_fax'); ?></li>
            </ol>
        </fieldset>
        <?php if($form->fieldExists('pass')) { ?>
            <fieldset>
                <legend><?php echo $form->getFieldSetLabel('password_change'); ?></legend>
                <ol>
                    <?php if($form->fieldExists('pass')) { ?>
                        <li><?php echo $form->getFieldLabel('pass'); ?><?php echo $form->getFieldHTML('pass'); ?></li>
                    <?php } ?>
                    <?php if($form->fieldExists('pass_new')) { ?>
                        <li><?php echo $form->getFieldLabel('pass_new'); ?><?php echo $form->getFieldHTML('pass_new'); ?></li>
                    <?php } ?>
                    <?php if($form->fieldExists('pass_new_confirm')) { ?>
                        <li><?php echo $form->getFieldLabel('pass_new_confirm'); ?><?php echo $form->getFieldHTML('pass_new_confirm'); ?></li>
                    <?php } ?>
                </ol>
            </fieldset>
        <?php } ?>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
</div>