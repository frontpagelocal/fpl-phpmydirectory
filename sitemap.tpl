<script type="text/javascript">
$(document).ready(function() {
    $("#sitemap_tree_categories, #sitemap_tree_locations").dynatree({
        onActivate: function(node) {
            if(node.data.href) {
                window.location.href = node.data.href;
            }
        }
    });
});
</script>
<ul class="box_list">
    <?php echo $links; ?>
</ul>
<br />
<?php if($sitemap_categories) { ?>
    <div id="sitemap_tree_categories" class="tree_select_expanding_wrapper">
        <?php echo $sitemap_categories; ?>
    </div>
    <br />
<?php } ?>
<?php if($sitemap_locations) { ?>
    <div id="sitemap_tree_locations" class="tree_select_expanding_wrapper">
        <?php echo $sitemap_locations; ?>
    </div>
<?php } ?>