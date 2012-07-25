<?php if($category) { ?>
    <h2><?php echo $category; ?> <?php echo $lang['public_blog_category_archive']; ?><br /></h2>
    &laquo; <a href="<?php echo $blog_url; ?>" title="<?php echo $lang['public_blog']; ?>"><?php echo $lang['public_blog_back']; ?></a>
<?php } ?>
<?php echo $content; ?>
<?php echo $page_navigation; ?>