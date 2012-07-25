<div style="padding: 5px 0">
    <?php echo $lang['user_index_not_a_members']; ?> <a href="<?php echo $create_account_url; ?>"><?php echo $lang['user_index_create_account']; ?></a>
</div>
<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('login_form'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('user_login'); ?><?php echo $form->getFieldHTML('user_login'); ?></li>
                <li><?php echo $form->getFieldLabel('user_pass'); ?><?php echo $form->getFieldHTML('user_pass'); ?></li>
                <li><?php echo $form->getFieldHTML('remember'); ?></li>
                <?php if($remote_login) { ?>
                    <li><label>&nbsp;</label><a id="remote_login_link" href="#"><?php echo $lang['user_index_remote_login']; ?></a></li>
                <?php } ?>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit_login'); ?><a style="padding-left: 75px;" href="<?php echo $password_reminder_url; ?>"><?php echo $lang['user_index_password_reminder']; ?></a>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
    
</div>
<script type="text/javascript">
<!-- document.login.login.focus(); //-->
</script>