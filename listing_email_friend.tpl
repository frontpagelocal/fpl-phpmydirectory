<h1><a href="<?php echo $listing_url; ?>"><?php echo $this->escape($listing['title']); ?></a></h1>
<h2><?php echo $lang['public_listing_email_friend']; ?></h2>
<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset class="hidden">
            <ol>
                <li><?php echo $form->getFieldLabel('from_name'); ?><?php echo $form->getFieldHTML('from_name'); ?></li>
                <li><?php echo $form->getFieldLabel('from_email'); ?><?php echo $form->getFieldHTML('from_email'); ?></li>
                <li><?php echo $form->getFieldLabel('email'); ?><?php echo $form->getFieldHTML('email'); ?></li>
                <li>
                    <?php echo $form->getFieldLabel('message'); ?><?php echo $form->getFieldHTML('message'); ?>
                    <p class="note counter"><?php echo $form->getFieldCounterHTML('message'); ?></p>
                </li>
                <?php foreach($custom_fields as $field) { ?>
                    <li><?php echo $form->getFieldLabel('custom_'.$field['id']); ?><?php echo $form->getFieldHTML('custom_'.$field['id']); ?>
                    <?php if($form->hasFieldNote('custom_'.$field['id'])) { ?>
                        <p class="note"><?php echo $form->getFieldNote('custom_'.$field['id']); ?></p>
                    <?php } ?>
                    </li>
                <?php } ?>
                <?php if($form->fieldExists('security_code')) { ?>
                    <li><?php echo $form->getFieldLabel('security_code'); ?><?php echo $form->getFieldHTML('security_code'); ?></li>
                <?php } ?>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
</div>