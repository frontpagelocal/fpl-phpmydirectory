<div class="form-container">
    <?php echo $form->getFormOpenHTML(); ?>
        <fieldset>
            <legend><?php echo $lang['user_invoices_summary']; ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('invoice_id'); ?><?php echo $form->getFieldHTML('invoice_id'); ?></li>
                <li><?php echo $form->getFieldLabel('gateway_id'); ?><?php echo $form->getFieldHTML('gateway_id'); ?></li>
                <li><?php echo $form->getFieldLabel('invoice_subtotal'); ?><?php echo $form->getFieldHTML('invoice_subtotal'); ?></li>
                <li><?php echo $form->getFieldLabel('invoice_tax'); ?><?php echo $form->getFieldHTML('invoice_tax'); ?></li>
                <?php if($form->fieldExists('discount')) { ?>
                    <li><?php echo $form->getFieldLabel('discount'); ?><?php echo $form->getFieldHTML('discount'); ?></li>
                <?php } ?>
                <li><?php echo $form->getFieldLabel('invoice_total'); ?><?php echo $form->getFieldHTML('invoice_total'); ?></li>
                <li><?php echo $form->getFieldLabel('invoice_balance'); ?><?php echo $form->getFieldHTML('invoice_balance'); ?></li>
            </ol>
        </fieldset>
        <fieldset>
            <legend><?php echo $lang['user_invoices_user_details']; ?></legend>
            <ol>
                <li><?php echo $form->getFieldLabel('user_first_name'); ?><?php echo $form->getFieldHTML('user_first_name'); ?></li>
                <li><?php echo $form->getFieldLabel('user_last_name'); ?><?php echo $form->getFieldHTML('user_last_name'); ?></li>
                <li><?php echo $form->getFieldLabel('user_email'); ?><?php echo $form->getFieldHTML('user_email'); ?></li>
                <li><?php echo $form->getFieldLabel('user_address1'); ?><?php echo $form->getFieldHTML('user_address1'); ?></li>
                <li><?php echo $form->getFieldLabel('user_address2'); ?><?php echo $form->getFieldHTML('user_address2'); ?></li>
                <li><?php echo $form->getFieldLabel('user_city'); ?><?php echo $form->getFieldHTML('user_city'); ?></li>
                <li><?php echo $form->getFieldLabel('user_state'); ?><?php echo $form->getFieldHTML('user_state'); ?></li>
                <li><?php echo $form->getFieldLabel('user_country'); ?><?php echo $form->getFieldHTML('user_country'); ?></li>
                <li><?php echo $form->getFieldLabel('user_zip'); ?><?php echo $form->getFieldHTML('user_zip'); ?></li>
                <li><?php echo $form->getFieldLabel('user_phone'); ?><?php echo $form->getFieldHTML('user_phone'); ?></li>
            </ol>
        </fieldset>
    <?php echo $form->getFormCloseHTML(); ?>
</div>
<?php echo $payment_form; ?>
