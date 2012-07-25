<?php if(!empty($location_image)) { ?>
    <img src="<?php echo $location_image; ?>" alt="<?php echo $location_title; ?>" /><br /><br />
<?php } ?>
<?php if(isset($location_title)) { ?>
    <h3><?php echo $location_title; ?><?php if(isset($category_title)) { ?> <?php echo $this->escape($category_title); ?><?php } ?></h3>
<?php } ?>
<?php if(count($breadcrumb)) { ?>
    <?php echo $lang['public_browse_locations']; ?>
    <?php foreach($breadcrumb as $key=>$crumb) { ?>
        <a href="<?php echo $crumb['link']; ?>" title="<?php echo $this->escape($crumb['text']); ?>"><?php echo $this->escape($crumb['text']); ?></a><?php if($key+1 != count($breadcrumb)) { ?> &raquo;<?php } ?>
    <?php } ?><br /><br />
<?php } ?>
<?php if(!empty($location_description)) { ?>
    <?php echo $location_description; ?><br /><br />
<?php } ?>
<?php echo $search_alpha_links; ?>
<?php if($category_columns) { ?>
<div>
    <?php foreach((array) $category_columns as $column) { ?>
    <div style="float: left; width: <?php echo floor(100/count($category_columns)); ?>%">
        <ul class="category_list">
            <?php foreach($column as $category) { ?>
                <li class="category_list"<?php if($category['image']) { ?> style="background: none;"<?php } ?>>
                    <?php if($category['image']) { ?>
                        <?php if(!empty($category['link'])) { ?>
                            <a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($category['link']); ?>" title="<?php echo $this->escape($category['title']); ?>"><img border="0" src="<?php echo $category['image']; ?>" alt="<?php echo $this->escape($category['title']); ?>" /></a>
                        <?php } else { ?>
                            <a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($category['url']); ?>" title="<?php echo $this->escape($category['title']); ?>"><img border="0" src="<?php echo $category['image']; ?>" alt="<?php echo $this->escape($category['title']); ?>" /></a>
                        <?php } ?>
                    <?php } ?>
                    <div class="category">
                        <?php if(!empty($category['link'])) { ?>
                            <a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($category['link']); ?>" title="<?php echo $this->escape($category['title']); ?>"><?php echo $this->escape($category['title']); ?></a>
                        <?php } else { ?>
                            <a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($category['url']); ?>" title="<?php echo $this->escape($category['title']); ?>"><?php echo $this->escape($category['title']); ?></a>
                        <?php } ?>
                        <br />
                    </div>
                    <?php if($show_category_description) { ?>
                        <div class="category_description">
                            <?php echo $this->escape($category['description_short']); ?>
                        </div>
                    <?php } ?>
                    <div class="subcategories">
                        <?php foreach((array) $category['children'] as $key=>$subcategory) { ?>
                            <?php if(!empty($subcategory['link'])) { ?>
                                <a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($subcategory['link']); ?>" title="<?php echo $this->escape($subcategory['title']); ?>"><?php echo $this->escape($subcategory['title']); ?></a>
                            <?php } else { ?>
                                <a<?php if($category['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($subcategory['url']); ?>" title="<?php echo $this->escape($subcategory['title']); ?>"><?php echo $this->escape($subcategory['title']); ?></a>
                            <?php } ?>
                            <?php if(count($category['children']) != $key+1) { ?>,<?php } ?>
                        <?php } ?>
                        <?php if($category['more_children']) { ?>
                            <a<?php if(!$category['count_total']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($category['url']); ?>" title="<?php echo $lang['public_browse_locations_more']; ?>"> <?php echo $lang['public_browse_locations_more']; ?></a>
                        <?php } ?>
                    </div>
                </li>
            <?php } ?>
        </ul>
    </div>
    <?php } ?>
</div>
<?php } ?>
<?php if($location_columns) { ?>
<div>
    <?php foreach((array) $location_columns as $column) { ?>
    <div style="float: left; width: <?php echo floor(100/count($location_columns)); ?>%">
        <ul class="location_list">
            <?php foreach($column as $location) { ?>
                <li class="location_list"<?php if($location['image']) { ?> style="background: none;"<?php } ?>>
                    <?php if($location['image']) { ?>
                        <?php if(!empty($location['link'])) { ?>
                            <a<?php if($location['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($location['link']); ?>" title="<?php echo $this->escape($location['title']); ?>"><img border="0" src="<?php echo $location['image']; ?>" alt="<?php echo $this->escape($location['title']); ?>" /></a>
                        <?php } else { ?>
                            <a<?php if($location['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($location['url']); ?>" title="<?php echo $this->escape($location['title']); ?>"><img border="0" src="<?php echo $location['image']; ?>" alt="<?php echo $this->escape($location['title']); ?>" /></a>
                        <?php } ?>
                    <?php } ?>
                    <div class="location">
                        <?php if(!empty($location['link'])) { ?>
                            <a<?php if($location['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($location['link']); ?>" title="<?php echo $this->escape($location['title']); ?>"><?php echo $this->escape($location['title']); ?></a>
                        <?php } else { ?>
                            <a<?php if($location['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($location['url']); ?>" title="<?php echo $this->escape($location['title']); ?>"><?php echo $this->escape($location['title']); ?></a>
                        <?php } ?>
                        <?php if($loc_show_indexes) { ?>
                            &nbsp;(<?php echo $location['count_total']; ?>)
                        <?php } ?>
                        <br />
                    </div>
                    <?php if($show_location_description) { ?>
                        <div class="location_description">
                            <?php echo $this->escape($location['description_short']); ?>
                        </div>
                    <?php } ?>
                    <div class="sublocations">
                        <?php foreach((array) $location['children'] as $key=>$sublocation) { ?>
                            <?php if(!empty($sublocation['link'])) { ?>
                                <a<?php if($location['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($sublocation['link']); ?>" title="<?php echo $this->escape($sublocation['title']); ?>"><?php echo $this->escape($sublocation['title']); ?></a>
                            <?php } else { ?>
                                <a<?php if($location['no_follow']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($sublocation['url']); ?>" title="<?php echo $this->escape($sublocation['title']); ?>"><?php echo $this->escape($sublocation['title']); ?></a>
                            <?php } ?>
                            <?php if($loc_show_indexes) { ?>
                                &nbsp;(<?php echo $sublocation['count_total']; ?>)
                            <?php } ?>
                            <?php if(count($location['children']) != $key+1) { ?>,<?php } ?>
                        <?php } ?>
                        <?php if($location['more_children']) { ?>
                            <a<?php if(!$location['count_total']) { ?> rel="noindex,nofollow"<?php } ?> href="<?php echo $this->escape($location['url']); ?>" title="<?php echo $lang['public_browse_locations_more']; ?>"> <?php echo $lang['public_browse_locations_more']; ?></a>
                        <?php } ?>
                    </div>
                </li>
            <?php } ?>
        </ul>
    </div>
    <?php } ?>
</div>
<?php } ?>
<br class="clear" />
<?php if($results_amount > 0) { ?>
    <div>
        <?php echo $lang['public_browse_locations_search_within']; ?>:
        <form style="display: inline;" action="<?php echo BASE_URL; ?>/search_results.php" method="get">
            <input name="keyword" type="text" style="width: 150px; margin-right: 5px;" />
            <input name="category" type="hidden" value="<?php echo $category_id; ?>" />
            <input name="location_id" type="hidden" value="<?php echo $location_id; ?>" />
            <input class="submit" type="submit" name="submit" value="<?php echo $lang['public_general_search_search']; ?>" />
        </form>
    </div>
    <?php echo $listing_results; ?><br />
<?php } elseif($_GET['id'] != 1 AND !$category_columns AND !$location_columns) { ?>
    <br /><?php echo $lang['public_browse_locations_no_results']; ?>
<?php } ?>
<br />