<div class="box">
    <div class="box-header">
        <div class="box-side">
            <a href="<?php echo BASE_URL; ?>/xml.php?type=rss_popular_categories"><img src="<?php echo $this->urlCDN('images/rss.gif'); ?>" alt="" /></a><?php echo $lang['sidebox_top_categories']; ?>
        </div>
    </div>
    <div class="box-body">
        <div class="box-side">
            <div class="box-content">
                <div id="sidebox_popular_categories">
                    <ul class="box_list">
                        <?php foreach($categories_popular_sidebox as $category) { ?>
                            <li class="box_list"><a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $category['url']; ?>"><?php echo $this->escape($category['title']); ?></a> <span class="count">(<?php echo $category['hits']; ?> <?php echo $lang['sidebox_category_hits']; ?>)</span></li>
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

