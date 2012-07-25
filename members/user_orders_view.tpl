<h2><?php echo $lang['user_orders_details']; ?></h2>
<table class="frame">
    <tr>
        <td>
            <table class="table">
                <tr>
                    <td class="label"><?php echo $lang['user_orders_id']; ?>:</td><td><?php echo $order['order_id']; ?></td>
                    <td class="label"><?php echo $lang['user_orders_product']; ?>:</td><td><?php echo $order['product_group_name']; ?> - <?php echo $order['product_name']; ?></td>
                </tr>
                <tr>
                    <td class="label"><?php echo $lang['user_orders_date']; ?>:</td><td><?php echo $order['date']; ?></td>
                    <td class="label"><?php echo $lang['user_orders_next_due_date']; ?>:</td><td><?php echo $order['next_due_date']; ?></td>
                    
                </tr>
                <tr>
                    <td class="label"><?php echo $lang['user_orders_status']; ?>:</td><td><?php echo $order['status']; ?></td>
                    <td class="label"><?php echo $lang['user_orders_amount']; ?>:</td><td><?php echo $order['amount']; ?></td>
                    
                </tr>
                <tr>
                    <td class="label"><?php echo $lang['user_orders_product_status']; ?>:</td><td><?php echo $order['product_status']; ?></td>
                    <td class="label"><?php echo $lang['user_orders_subscription_id']; ?>:</td><td><?php echo $order['subscription_id']; ?></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
<h2><?php echo $lang['user_manage']; ?> <?php echo $lang['user_orders_product']; ?></h2>
<?php echo $product; ?>