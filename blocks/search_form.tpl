<div id="searchform">
    <div class="form-container">
        <form action="<?php echo BASE_URL; ?>/search_results.php" method="get">
            <table style="margin: 0 auto;">
                <tr>
                    <td><strong><?php echo $lang['public_general_search_find']; ?>:</strong></td>
                    <td><strong><?php echo $lang['public_general_search_category']; ?>:</strong></td>
                    <td><strong><?php echo $lang['public_general_search_location']; ?>:</strong></td>
                    <td><strong><?php echo $lang['public_general_search_within']; ?>:</strong></td>
                    <td></td>
                </tr>
                <tr>
                    <td><?php echo $form->getFieldHTML('keyword'); ?></td>
                    <td><?php echo $form->getFieldHTML('category'); ?></td>
                    <td>
                        <?php echo $form->getFieldHTML('location'); ?>
                        <!-- <?php echo $form->getFieldHTML('location_id'); ?> -->
                    </td>
                    <td><?php echo $form->getFieldHTML('zip_miles'); ?></td>
                    <td><?php echo $form->getFieldHTML('submit_search'); ?></td>
                </tr>
                <tr>
                    <td valign="top" style="padding-bottom: 15px"><p class="note"><?php echo $lang['public_general_search_keyword']; ?></p></td>
                    <td valign="top" style="padding-bottom: 15px"><p class="note"><?php echo $lang['public_general_search_category_description']; ?></p></td>
                    <td valign="top" style="padding-bottom: 15px"><p class="note"><?php echo $lang['public_general_search_location_description']; ?></p></td>
                    <td valign="top" style="padding-bottom: 15px"><p class="note"><?php echo $lang['public_general_search_miles']; ?></p></td>
                    <td></td>
                </tr>
            </table>
        </form>
    </div>
</div>
<?php if($config['geolocation_fill']) { ?>
<script type="text/javascript">
if(navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position) {
        if(position.address.city && position.address.region) {
            $("#location").val(position.address.city+", "+position.address.region);
        }
    });
}
</script>
<?php } ?>