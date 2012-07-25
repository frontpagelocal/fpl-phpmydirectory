<?php if($config['geolocation_fill']) { ?>
<script type="text/javascript">
$(document).ready(function(){
    if(navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function(position) {
            if(position.address.city) $("#user_city").val(position.address.city);
            if(position.address.region) $("#user_state").val(position.address.region);
            if(position.address.country) $("#user_country").val(position.address.country);
            if(position.address.postalCode) $("#user_zip").val(position.address.postalCode);
        });
    }
});
</script>
<?php } ?>
<?php if($log_in_url) { ?>
    <p><?php echo $lang['user_account_already']; ?> <a href="<?php echo $log_in_url; ?>"><?php echo $lang['user_account_login']; ?></a></p>
<?php } ?>
<?php if($remote_login) { ?>
    <p><a id="remote_login_link" href="#"><?php echo $lang['user_account_remote_login']; ?></a></p>
<?php } ?>
<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('user_details'); ?></legend>
            <ol>
                <?php if($form->fieldExists('login')) { ?>
                    <li><?php echo $form->getFieldLabel('login'); ?><?php echo $form->getFieldHTML('login'); ?></li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('user_email'); ?><?php echo $form->getFieldHTML('user_email'); ?></li>
                <li><?php echo $form->getFieldLabel('user_email2'); ?><?php echo $form->getFieldHTML('user_email2'); ?></li>
                <?php if($form->fieldExists('pass')) { ?>
                    <li><?php echo $form->getFieldLabel('pass'); ?><?php echo $form->getFieldHTML('pass'); ?></li>
                    <li><?php echo $form->getFieldLabel('pass2'); ?><?php echo $form->getFieldHTML('pass2'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_first_name')) { ?>
                    <li><?php echo $form->getFieldLabel('user_first_name'); ?><?php echo $form->getFieldHTML('user_first_name'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_last_name')) { ?>
                    <li><?php echo $form->getFieldLabel('user_last_name'); ?><?php echo $form->getFieldHTML('user_last_name'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_organization')) { ?>
                    <li><?php echo $form->getFieldLabel('user_organization'); ?><?php echo $form->getFieldHTML('user_organization'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('profile_image')) { ?>
                    <li><?php echo $form->getFieldLabel('profile_image'); ?><?php echo $form->getFieldHTML('profile_image'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('timezone')) { ?>
                    <li><?php echo $form->getFieldLabel('timezone'); ?><?php echo $form->getFieldHTML('timezone'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_address1')) { ?>
                    <li><?php echo $form->getFieldLabel('user_address1'); ?><?php echo $form->getFieldHTML('user_address1'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_address2')) { ?>
                    <li><?php echo $form->getFieldLabel('user_address2'); ?><?php echo $form->getFieldHTML('user_address2'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_city')) { ?>
                    <li><?php echo $form->getFieldLabel('user_city'); ?><?php echo $form->getFieldHTML('user_city'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_state')) { ?>
                    <li><?php echo $form->getFieldLabel('user_state'); ?><?php echo $form->getFieldHTML('user_state'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_country')) { ?>
                    <li><?php echo $form->getFieldLabel('user_country'); ?><?php echo $form->getFieldHTML('user_country'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_zip')) { ?>
                    <li><?php echo $form->getFieldLabel('user_zip'); ?><?php echo $form->getFieldHTML('user_zip'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_phone')) { ?>
                    <li><?php echo $form->getFieldLabel('user_phone'); ?><?php echo $form->getFieldHTML('user_phone'); ?></li>
                <?php } ?>
                <?php if($form->fieldExists('user_fax')) { ?>
                    <li><?php echo $form->getFieldLabel('user_fax'); ?><?php echo $form->getFieldHTML('user_fax'); ?></li>
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
                <?php if($PMDR->getConfig('reg_terms_checkbox')) { ?>
                    <li><?php echo $form->getFieldLabel('terms_conditions'); ?><?php echo $form->getFieldHTML('terms_conditions_text'); ?></li>
                    <li><?php echo $form->getFieldHTML('terms_conditions'); ?></li>
                <?php } ?>
                <?php if($PMDR->getConfig('GD_security_reg')) { ?>
                    <li><?php echo $form->getFieldLabel('security_code'); ?><?php echo $form->getFieldHTML('security_code'); ?></li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('ip_address'); ?><?php echo $form->getFieldHTML('ip_address'); ?></li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
</div>