<?php if($helpful_total) { ?>
    <?php echo $helpful_count; ?> <?php echo $lang['public_listing_reviews_of']; ?> <?php echo $helpful_total; ?> <?php echo $lang['public_listing_reviews_helpful']; ?>:<br /><br />
<?php } ?>
<?php if($rating > 0) { ?><div style="float: left;"><?php echo $rating_static; ?></div>&nbsp;<?php } ?><b><a href="<?php echo BASE_URL; ?>/listing_reviews.php?review_id=<?php echo $id; ?>"><?php echo $this->escape($title); ?></a></b>, <?php echo $date; ?><br /><br />
<?php echo $lang['public_listing_reviews_by']; ?>: <?php echo $this->escape($login); ?><br />
<?php if(isset($profile_image_url)) { ?>
    <img src="<?php echo $profile_image_url; ?>" alt="<?php echo $this->escape($login); ?>" /><br />
<?php } ?>
<br />
<?php foreach($custom_fields_groups as $custom_fields_group) { ?>
    <strong><?php echo $this->escape($custom_fields_group['title']); ?></strong><br />
    <?php foreach($custom_fields_group['fields'] AS $field) { ?>
        <?php if(${"custom_".$field['id']} != '') { ?>
            <?php if($field['type'] == 'htmleditor') { ?>
                <?php echo $this->escape($field['name']); ?>: <?php echo $this->escape_html(${"custom_".$field['id']}); ?><br />
            <?php } else { ?>
                <?php echo $this->escape($field['name']); ?>: <?php echo $this->escape(${"custom_".$field['id']}); ?><br />
            <?php } ?>
        <?php } ?>
    <?php } ?>
    <br /><br />
<?php } ?>
<b><?php echo $lang['public_listing_reviews_review']; ?>:</b><br /><?php echo $this->escape_html($review); ?><br /><br />
<?php if($comment_count AND !$comments) { ?>
    <a href="<?php echo BASE_URL; ?>/listing_reviews.php?review_id=<?php echo $id; ?>"><?php echo $lang['public_listing_reviews_view_comments']; ?> (<?php echo $comment_count; ?>)</a><?php if($logged_in) { ?> |<?php } ?>
<?php } ?>
<?php if(LOGGED_IN) { ?>
    <?php echo $add_comment; ?> | <span id="reviews_quality_<?php echo $id; ?>"><?php echo $lang['public_listing_reviews_was_helpful']; ?> <?php echo $helpful_yes; ?> <?php echo $lang['public_listing_reviews_or']; ?> <?php echo $helpful_no; ?><br /></span><span style="display: none;" id="reviews_quality_message_<?php echo $id; ?>"><b><?php echo $lang['public_listing_reviews_voted']; ?></b></span>
    <div style="display: none;" id="comment_form_container_<?php echo $id; ?>">
        <div class="form-container" style="padding: 10px 0px 0px 0px">
            <form id="comment_form_<?php echo $id; ?>">
                <div><textarea id="comment_<?php echo $id; ?>" name="comment" style="font-size:small; height:8em; width:100%; line-height:140%;"></textarea></div><br />
                <input onClick="$.ajax({ data: ({ action: 'add_comment', id: <?php echo $id; ?>, comment: $('#comment_<?php echo $id; ?>').val() }), success: function() { $('#comment_form_container_<?php echo $id; ?>').slideUp('slow'); }}); return false;" class="submit" type="submit" name="submit_comment" value="<?php echo $lang['public_submit']; ?>">
                <input onClick="$('#comment_form_container_<?php echo $id; ?>').slideUp('slow'); return false;" class="submit" type="submit" name="cancel_comment" value="<?php echo $lang['public_listing_reviews_cancel']; ?>">
            </form>
        </div>
    </div>
<?php } ?>
<?php if(count($comments) > 0) { ?>
    <br />
    <?php echo $lang['public_listing_reviews_comments']; ?>:<br />
    <?php foreach($comments as $comment) { ?>
        <?php echo $lang['public_listing_reviews_by']; ?>: <?php echo $this->escape($comment['login']); ?>, <?php echo $comment['date']; ?><br />
        <?php echo $this->escape($comment['comment']); ?><br /><br />
    <?php } ?>
<?php } ?>