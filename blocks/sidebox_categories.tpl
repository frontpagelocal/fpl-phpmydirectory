<div class="box">
    <div class="box-header">
        <div class="box-side"><?php echo $lang['sidebox_categories']; ?></div>
    </div>
    <div class="box-body">
        <div class="box-side">
            <div class="box-content">
                <div id="sidebox_categories">
                    <ul class="box_list">
                        <?php foreach($categories_sidebox as $category) { ?>
                            <li class="box_list"><a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $category['url']; ?>" title="<?php echo $this->escape($category['title']); ?>"><?php echo $this->escape($category['title']); ?></a></li>
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
