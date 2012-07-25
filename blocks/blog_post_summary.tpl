<h2><a href="<?php echo $url; ?>" title="<?php echo $title; ?>"><?php echo $title; ?></a></h2>
<?php echo $lang['public_blog_by']; ?> <?php echo $user; ?> <?php echo $lang['public_blog_on']; ?> <?php echo $date; ?> <?php echo $lang['public_blog_in']; ?> <?php echo $categories; ?>
<br /><br />
<?php echo $content; ?>
<br /><br />
<a href="<?php echo $url; ?>" title="<?php echo $lang['public_blog_full_story']; ?>"><?php echo $lang['public_blog_full_story']; ?></a><?php if($comments) { ?> • <?php if($comments_count) { ?><a href="<?php echo $url; ?>#comments" title="Comments"><?php echo $lang['public_blog_comments']; ?></a><?php } else { ?><?php echo $lang['public_blog_comments']; ?><?php } ?> (<?php echo $comments_count; ?>)<?php } ?>
<br /><br />