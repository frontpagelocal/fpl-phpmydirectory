<br />
<table cellspacing="10" cellpadding="10" border="0" width="90%">
    <tr>
        <td align="left" valign="top" width="100%">
            <?php if($logo_url) { ?>
                <img src="<?php echo $logo_url; ?>" alt="<?php echo $this->escape($title); ?>" title="<?php echo $this->escape($title); ?>" border="0" /><br /><br />
            <?php } ?>
            <span class="listing_default"><?php echo $this->escape($title); ?></span><br /><br /><br />
            <?php echo $description; ?><br /><br /><br />
            <?php echo $this->escape($address); ?><br /><br />
            <?php echo $this->escape($phone); ?><br />
            <?php echo $this->escape($fax); ?><br /><br /><br />
            <?php foreach($custom_fields_groups as $custom_fields_group) { ?>
                <strong><?php echo $this->escape($custom_fields_group['title']); ?></strong><br />
                <?php foreach($custom_fields_group['fields'] AS $field) { ?>
                    <?php if(${"custom_".$field['id']} != '') { ?>
                        <?php echo $this->escape($field['name']); ?>: <?php echo $this->escape(${"custom_".$field['id']}); ?><br />
                    <?php } ?>
                <?php } ?>
                <br /><br />
            <?php } ?>
            <?php echo $map; ?><br /><br /><br />
            <?php echo $this->escape($www); ?><br /><br />
            <br /><br /><br /><br /><br /><br />
            <a href=# onclick="window.print()"><img src = "<?php echo $this->urlCDN('/images/icon_print.gif'); ?>" border=0> Print Page</a><br /><br />
            <?php echo $listing_url; ?>
        </td>
   </tr>
</table>