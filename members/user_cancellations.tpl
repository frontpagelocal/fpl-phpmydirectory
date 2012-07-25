<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $form->getFieldSetLabel('cancellation'); ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('order_id'); ?><?php echo $form->getFieldHTML('order_id'); ?></li>
                <li><?php echo $form->getFieldLabel('comment'); ?><?php echo $form->getFieldHTML('comment'); ?></li>
            </ol>
        </fieldset>
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
</div>