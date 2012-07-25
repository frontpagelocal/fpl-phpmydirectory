<div style="height: 100%">
    <table width="100%" cellpadding="10" cellspacing="10" align="left">
        <tr>
            <td align="right"><strong><?php echo $lang['public_compare_features']; ?></strong></td>
            <?php foreach((array) $membership_names as $name) { ?>
                <td align="center"><strong><?php echo $this->escape($name); ?></strong></td>
            <?php } ?>
        </tr>
        <?php foreach((array) $memberships as $membership) { ?>
            <tr>
            <td width="20%" align="right"><strong><?php echo $this->escape($membership['title']); ?>:</strong></td>
            <?php foreach((array) $membership['values'] as $value) { ?>
                <td align="center">
                    <?php if($value == 'yes') { ?>
                        <img src="<?php echo $this->urlCDN('images/icon_checkmark.gif'); ?>" />
                    <?php } else {?>
                        <?php echo $this->escape($value); ?>
                    <?php } ?>
                </td>
            <?php } ?>
            </tr>
        <?php } ?>
        <tr>
        <td width="20%" align="right" valign="top"><strong><?php echo $lang['public_compare_pricing']; ?>:</strong></td>
        <?php foreach((array) $pricing as $price) { ?>
            <td align="center" valign="top">
            <?php foreach($price['pricing'] as $key=>$value) { ?>
                <?php if(count($price['pricing']) > 1) { ?><strong><?php echo $lang['public_compare_option']; ?> <?php echo $key+1; ?></strong><br /><?php } ?>
                <?php if($value['label']) { ?>
                    <?php echo $this->escape($value['label']); ?><br />
                <?php } else { ?>
                    <?php echo $lang['public_compare_term']; ?>:
                    <?php if($value['period_count']) { ?>
                         <?php echo $this->escape($value['period_count']); ?> <?php echo $this->escape($value['period']); ?><br />
                    <?php } else { ?>
                        <?php echo $lang['public_compare_lifetime']; ?><br />
                    <?php } ?>
                    <?php if($value['setup_price'] != '0.00') { ?>
                        <?php echo $lang['public_compare_setup']; ?>: <?php echo $this->escape(format_number_currency($value['setup_price'])); ?><br />
                    <?php } ?>
                    <?php echo $lang['public_compare_price']; ?>:
                    <?php if($value['price'] != '0.00') { ?>
                        <?php echo $this->escape(format_number_currency($value['price'])); ?><br />
                    <?php } else { ?>
                        <?php echo $lang['public_compare_free']; ?><br />
                    <?php } ?>
                <?php } ?>
                <a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_orders_add_listing.php?pricing_id=<?php echo $value['id']; ?>"><?php echo $lang['public_compare_order']; ?></a><br /r><br />
            <?php } ?>
            </td>
        <?php } ?>
        </tr>
    </table>
</div>
<br class="clear" />