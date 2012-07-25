<?php if($product_groups) { ?>
    <div class="form-container">
        <?php echo $form->getFormOpenHTML(); ?>
            <?php foreach($product_groups as $key=>$group) { ?>
                <fieldset>
                    <legend><?php echo $group['name']; ?></legend>
                    <?php foreach($group['products'] as $product) { ?>
                        <h2 style="margin-left: 20px"><?php echo $product['name']; ?></h2>
                            <?php foreach($product['pricing'] as $price) { ?>
                            <div style="margin: 5px 0 0 40px;">
                                <div style="float: left; padding-right: 5px; vertical-align: bottom;">
                                    <input style="width: auto;" type="radio" name="pricing_id" value="<?php echo $price['id']; ?>">
                                </div>
                                <div style="margin-left: 20px;">
                                    <?php if($price['label']) { ?>
                                        <?php echo $price['label']; ?>
                                    <?php } else { ?>
                                        <?php if($price['period_count']) { ?>
                                            <?php echo $price['period_count']; ?> <?php echo $price['period']; ?>
                                        <?php } else { ?>
                                            <?php echo $lang['user_orders_lifetime']; ?>
                                        <?php } ?>
                                        <?php if($price['price'] != '0.00') { ?>
                                            - <?php echo format_number_currency($price['price']); ?>
                                        <?php } else { ?>
                                            - <?php echo $lang['user_orders_free']; ?>
                                        <?php } ?>
                                        <?php if($price['setup_price'] != '0.00') { ?>
                                            - <?php echo $lang['user_orders_setup']; ?>: <?php echo format_number_currency($price['setup_price']); ?>
                                        <?php } ?>
                                    <?php } ?>
                                    <?php if($product['description']) { ?>
                                        <br />
                                        <?php echo $product['description']; ?>
                                        <br /><br />
                                    <?php } ?>
                                </div>
                            </div>
                            <?php } ?>
                            <br />
                    <?php } ?>
                </fieldset>
            <?php } ?>
            <fieldset class="buttonrow">
                <?php echo $form->getFieldHTML('submit'); ?>
            </fieldset>
        <?php echo $form->getFormCloseHTML(); ?>
    </div>
<?php } else { ?>
    <?php echo $lang['user_orders_no_products']; ?>
<?php } ?>