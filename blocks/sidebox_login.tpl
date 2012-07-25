<div id="sidebox-login">
    <div class="form-container">
        <?php echo $form->getFormOpenHTML(); ?>
            <fieldset class="hidden">
                <ol>
                    <li><?php echo $form->getFieldLabel('user_login'); ?><br /><?php echo $form->getFieldHTML('user_login'); ?></li>
                    <li><?php echo $form->getFieldLabel('user_pass'); ?><br /><?php echo $form->getFieldHTML('user_pass'); ?></li>
                    <li><?php echo $form->getFieldHTML('remember'); ?></li>
                </ol>
            </fieldset>
            <fieldset class="buttonrow">
                <?php echo $form->getFieldHTML('submit_login'); ?>
            </fieldset>
        <?php echo $form->getFormCloseHTML(); ?>
    </div>
    <div style="text-align: center; padding-top: 15px;">
        <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_password_remind.php"><?php echo $lang['sidebox_login_forgot_password']; ?></a>
    </div>
</div>