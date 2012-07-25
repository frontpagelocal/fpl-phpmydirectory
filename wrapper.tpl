<?php echo $header; ?>
<div id="container">
    <div id="center" class="column">
        <!-- MIDDLE COLUMN -->
        <table cellpadding="0" cellspacing="0" border="0" width="100%">
        <tr>
            <td valign="middle" align="center" width="100%"><?php echo $banners->getBanner(1); ?></td>
        </tr>
            </table>
            <?php if($search_display_all) { ?>
                <div class="box">
                    <div class="box-header">
                        <div class="box-side"><?php echo $lang['public_general_search_search']; ?></div>
                    </div>
                    <div class="box-body">
                        <div class="box-side">
                            <div class="box-content">
                                <?php echo $searchform; ?>
                            </div>
                        </div>
                    </div>
                    <div class="box-footer">
                        <div class="box-side"></div>
                    </div>
                </div>
            <?php } ?>
            <div class="box">
            <div class="box-header">
                <div class="box-side"><h1><?php echo $this->escape($page_title); ?></h1></div>
            </div>
            <div class="box-body">
                <div class="box-side">
                    <div class="box-content">
                        <?php echo $message; ?>
                        <div id="content">
                            <?php echo $template_content; ?>
                        </div>
                    </div>
                </div>
            </div>
            <div class="box-footer">
                <div class="box-side"></div>
            </div>
        </div>
        <!-- END MIDDLE COLUMN -->
    </div>
    <div id="left" class="column">
        <!-- LEFT COLUMN -->
        <?php echo $template_sidebox_menu; ?>
        <?php if(!LOGGED_IN) {
            echo $template_sidebox_login;
        } ?>
        <?php echo $template_sidebox_category_list; ?>
        <?php echo $banners->getBanner(2); ?>
        <?php echo $template_sidebox_category_popular; ?>
        <?php echo $template_sidebox_recent; ?>
        <br />
        <!-- END LEFT COLUMN -->
    </div>
    <div id="right" class="column">
        <!-- RIGHT COLUMN -->
        <?php echo $template_sidebox_blog_categories; ?>
        <?php echo $template_sidebox_blog; ?>
        <?php echo $banners->getBanner(2); ?>
        <?php echo $template_sidebox_featured; ?>
        <?php echo $template_sidebox_popular; ?>
        <?php echo $template_sidebox_featured_classifieds; ?>
        <br />
        <!-- END RIGHT COLUMN -->
    </div>
</div>
<?php echo $footer; ?>