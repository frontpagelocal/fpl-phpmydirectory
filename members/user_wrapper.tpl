<?php echo $header; ?>
<div style="float: left; margin: 5px 0 20px 10px; width: 200px;">
    <div class="box">
        <div class="box-header">
            <div class="box-side"><?php echo $lang['user_general_menu']; ?></div>
        </div>
        <div class="box-body">
            <div class="box-side">
                <div class="box-content">
                    <div id="members-menu">
                        <ul class="box_list">
                            <?php if(LOGGED_IN) { ?>
                                <li class="box_list"><a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>index.php"><?php echo $lang['user_general_account_summary']; ?></a></li>
                                <li class="box_list"><a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_account.php"><?php echo $lang['user_general_edit_account']; ?></a></li>
                                <li class="box_list"><a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_favorites.php"><?php echo $lang['user_general_favorites']; ?></a></li>
                                <li class="box_list"><a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_orders.php"><?php echo $lang['user_general_orders']; ?></a></li>
                                <li class="box_list"><a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_invoices.php"><?php echo $lang['user_general_invoices']; ?></a></li>
                                <li class="box_list"><a href="<?php echo BASE_URL.MEMBERS_FOLDER; ?>user_orders_add.php"><?php echo $lang['user_general_advertise']; ?></a></li>
                            <?php } ?>
                            <li class="box_list"><a href="<?php echo BASE_URL_NOSSL; ?>"><?php echo $lang['user_general_directory_home']; ?></a></li>
                            <?php if (LOGGED_IN) { ?>
                                <li class="box_list"><a href="<?php echo BASE_URL_NOSSL.MEMBERS_FOLDER; ?>user_index.php?action=logout"><?php echo $lang['user_general_logout']; ?></a></li>
                            <?php } ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="box-footer">
            <div class="box-side"></div>
        </div>
    </div>
</div>
<div>
    <div style="margin: 10px 10px 0px 230px;">
        <?php echo $message; ?>
        <h1><?php echo $this->escape($page_title); ?></h1>
        <?php echo $template_content; ?>
    </div>
</div>
<?php echo $footer; ?>