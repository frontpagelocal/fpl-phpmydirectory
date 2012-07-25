<div class="box">
    <div class="box-header">
        <div class="box-side">
            <a href="<?php echo BASE_URL; ?>/xml.php?type=rss_blog"><img src="<?php echo $this->urlCDN('images/rss.gif'); ?>" alt="" /></a><?php echo $lang['sidebox_blog']; ?>
        </div>
    </div>
    <div class="box-body">
        <div class="box-side">
            <div class="box-content">
            <?php if(count($blog_posts)) { ?>
                <?php foreach($blog_posts AS $blog_post) { ?>
                    <a href="<?php echo $blog_post['url']; ?>"><?php echo $this->escape($blog_post['title']); ?></a><br />
                    <?php echo $this->escape_html($blog_post['content']); ?>
                    <br /><br />
                <?php } ?>
            <?php } else { ?>
                 <center><?php echo $lang['sidebox_blog_none']; ?></center><br />
            <?php } ?>
            </div>
        </div>
    </div>
    <div class="box-footer">
        <div class="box-side"></div>
    </div>
</div>