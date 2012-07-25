<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $lang['user_orders_change_order']; ?></legend>
            <li><?php echo $form->getFieldLabel('pricing_id_new'); ?><?php echo $form->getFieldHTML('pricing_id_new'); ?></li>
        </fieldset>
        
        <fieldset class="buttonrow">
            <?php echo $form->getFieldHTML('submit'); ?>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
</div>