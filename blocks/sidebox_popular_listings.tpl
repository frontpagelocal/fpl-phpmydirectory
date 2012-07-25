<div class="box">
    <div class="box-header">
        <div class="box-side">
            <a href="<?php echo BASE_URL; ?>/xml.php?type=rss_popular_listings"><img src="<?php echo $this->urlCDN('images/rss.gif'); ?>" alt="" /></a><?php echo $lang['sidebox_popular_listings']; ?>
        </div>
    </div>
    <div class="box-body">
        <div class="box-side">
            <div class="box-content">
                <?php echo $content; ?>
            </div>
        </div>
    </div>
    <div class="box-footer">
        <div class="box-side"></div>
    </div>
</div>