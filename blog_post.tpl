<h1><?php echo $title; ?></h1>
<?php echo $lang['public_blog_by']; ?> <?php echo $user; ?> <?php echo $lang['public_blog_on']; ?> <?php echo $date_publish; ?> <?php echo $lang['public_blog_in']; ?> <?php echo $categories; ?>
<br />
<?php if($image_url) { ?>
    <img id="blog_post_img" src="<?php echo $image_url; ?>" alt="<?php echo $title; ?>" />
<?php } ?>
<?php echo $this->escape_html($content); ?>
<br /><br />
<div class="addthis_toolbox addthis_default_style">
    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
    <a class="addthis_button_tweet"></a>
    <a class="addthis_counter addthis_pill_style"></a>
</div>
<?php if($config['blog_comments']) { ?>
    <?php if($comments_count) { ?>
        <a name="comments"></a>
        <h2><?php echo $comments_count; ?> <?php echo $lang['public_blog_comments']; ?></h2>
        <?php echo $comments; ?>
    <?php } ?>
    <div id="blog_comment_form">
        <div class="form-container">
            <?php echo $form->getFormOpenHTML(); ?>
            <fieldset>
                <legend><?php echo $form->getFieldSetLabel('input_default'); ?></legend>
                <ol>
                    <?php if($form->fieldExists('name')) { ?>
                        <li><?php echo $form->getFieldLabel('name'); ?><?php echo $form->getFieldHTML('name'); ?></li>
                        <li><?php echo $form->getFieldLabel('email'); ?><?php echo $form->getFieldHTML('email'); ?></li>
                        <li><?php echo $form->getFieldLabel('website'); ?><?php echo $form->getFieldHTML('website'); ?></li>
                    <?php } ?>
                    <li><?php echo $form->getFieldLabel('comment'); ?><?php echo $form->getFieldHTML('comment'); ?></li>
                    <?php if($form->fieldExists('security_code')) { ?>
                        <li><?php echo $form->getFieldLabel('security_code'); ?><?php echo $form->getFieldHTML('security_code'); ?></li>
                    <?php } ?>
                </ol>
            </fieldset>
            <fieldset class="buttonrow">
                <?php echo $form->getFieldHTML('submit'); ?>
            </fieldset>
            <?php echo $form->getFormCloseHTML(); ?>
        </div>
    </div>
<?php } ?>

<?php if($previous_url) { ?>
    <div id="blog_previous_url"><a href="<?php echo $previous_url; ?>" title="<?php echo $previous_title; ?>">&laquo; <?php echo $previous_title; ?></a></div>
<?php } ?>
<?php if($next_url) { ?>
    <div id="blog_next_url"><a href="<?php echo $next_url; ?>" title="<?php echo $next_title; ?>"><?php echo $next_title; ?> &raquo;</a></div>
<?php } ?>