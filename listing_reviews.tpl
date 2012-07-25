<h1><a href="<?php echo $listing_url; ?>"><?php echo $this->escape($listing['title']); ?></a></h1>
<h2><?php echo $lang['public_listing_reviews']; ?></h2>
<?php if(!$logged_in) { ?>
    <span style="color: red; font-weight: bold;"><?php echo $lang['public_listing_reviews_note']; ?>: </span><a href="<?php echo $login_url; ?>"><?php echo $lang['public_listing_reviews_login']; ?></a> <?php echo $lang['public_listing_reviews_login2']; ?><br /><br />
<?php } ?>
<?php if(sizeof($reviews) > 0) { ?>
    <table>
        <tr>
            <td>
                <table>
                    <tr>
                        <td>5 <?php echo $lang['public_listing_reviews_star']; ?>:</td>
                        <td width="60" bgcolor="#eeeecc" align="left" title="" style="min-width: 60px;">
                            <img width="<?php echo $reviews_counts[5]['meter_width']; ?>" height="13" border="0" alt="" src="<?php echo $this->urlCDN('images/reviews_pixel.gif'); ?>"/>
                        </td>
                        <td>(<?php echo $reviews_counts[5]['count']; ?>)</td>
                    </tr>
                    <tr>
                        <td>4 <?php echo $lang['public_listing_reviews_star']; ?>:</td>
                        <td width="60" bgcolor="#eeeecc" align="left" title="" style="min-width: 60px;">
                            <img width="<?php echo $reviews_counts[4]['meter_width']; ?>" height="13" border="0" alt="" src="<?php echo $this->urlCDN('images/reviews_pixel.gif'); ?>"/>
                        </td>
                        <td>(<?php echo $reviews_counts[4]['count']; ?>)</td>
                    </tr>
                    <tr>
                        <td>3 <?php echo $lang['public_listing_reviews_star']; ?>:</td>
                        <td width="60" bgcolor="#eeeecc" align="left" title="" style="min-width: 60px;">
                            <img width="<?php echo $reviews_counts[3]['meter_width']; ?>" height="13" border="0" alt="" src="<?php echo $this->urlCDN('images/reviews_pixel.gif'); ?>"/>
                        </td>
                        <td>(<?php echo $reviews_counts[3]['count']; ?>)</td>
                    </tr>
                    <tr>
                        <td>2 <?php echo $lang['public_listing_reviews_star']; ?>:</td>
                        <td width="60" bgcolor="#eeeecc" align="left" title="" style="min-width: 60px;">
                            <img width="<?php echo $reviews_counts[2]['meter_width']; ?>" height="13" border="0" alt="" src="<?php echo $this->urlCDN('images/reviews_pixel.gif'); ?>"/>
                        </td>
                        <td>(<?php echo $reviews_counts[2]['count']; ?>)</td>
                    </tr>
                    <tr>
                        <td>1 <?php echo $lang['public_listing_reviews_star']; ?>:</td>
                        <td width="60" bgcolor="#eeeecc" align="left" title="" style="min-width: 60px;">
                            <img width="<?php echo $reviews_counts[1]['meter_width']; ?>" height="13" border="0" alt="" src="<?php echo $this->urlCDN('images/reviews_pixel.gif'); ?>"/>
                        </td>
                        <td>(<?php echo $reviews_counts[1]['count']; ?>)</td>
                    </tr>
                </table>
            </td>
            <td>
                <div style="width: 2.5em;"> </div>
            </td>
            <td valign="top">
                <b><?php echo $lang['public_listing_reviews_average']; ?></b>
                <?php echo $average_stars; ?>
            </td>
        </tr>
    </table>
    <?php foreach($reviews AS $review) { ?>
        <br /><br /><hr size="1"><br />
        <?php echo $review; ?>
    <?php } ?>
<?php } ?>
<div align="center">
    <br /><?php echo $page_navigation; ?>
</div>