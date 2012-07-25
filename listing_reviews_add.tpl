<h1><a href="<?php echo $listing_url; ?>"><?php echo $this->escape($listing['title']); ?></a></h1>
<h2><?php echo $lang['public_listing_reviews_add']; ?></h2>
<?php if($log_in_url) { ?>
    <?php echo $lang['public_listing_reviews_have_account'];?> <a href="<?php echo $log_in_url; ?>"><?php echo $lang['public_listing_reviews_login']; ?></a>
<?php } ?>
<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset class="hidden">
            <ol>
                <?php if($form->fieldExists('name')) { ?>
                    <li><?php echo $form->getFieldLabel('name'); ?><?php echo $form->getFieldHTML('name'); ?></li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('title'); ?><?php echo $form->getFieldHTML('title'); ?></li>
                <li><?php echo $form->getFieldLabel('rating'); ?><?php echo $form->getFieldHTML('rating'); ?></li>
                <li>
                    <?php echo $form->getFieldLabel('review'); ?><?php echo $form->getFieldHTML('review'); ?>
                    <p class="note counter"><?php echo $form->getFieldCounterHTML('review'); ?></p>
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