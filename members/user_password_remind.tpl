<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $lang['user_password_remind']; ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('login'); ?><?php echo $form->getFieldHTML('login'); ?></li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
</div>