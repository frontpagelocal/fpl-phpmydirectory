<?php if($page['first_url']) { ?> 
    <a href="<?php echo $page['first_url']; ?>">&lt;&lt;</a> 
<?php } else { ?>
    &lt;&lt;     
<?php } ?>
<?php if($page['previous_url']) { ?>
    <a href="<?php echo $page['previous_url']; ?>">&lt;</a>
<?php } else { ?>
    &lt; 
<?php } ?>
<?php foreach($page['page_numbers'] as $page_number) { ?>
    <?php if($page['current_page'] == $page_number['number']) { ?>
        [<strong><?php echo $page_number['number']; ?></strong>]
    <?php } else { ?>
        <a href="<?php echo $page_number['url']; ?>"><?php echo $page_number['number']; ?></a>
    <?php } ?>
<?php } ?>
<?php if($page['next_url']) { ?>
    <a href="<?php echo $page['next_url']; ?>"> &gt;</a>
<?php } else { ?>
     &gt; 
<?php } ?>
<?php if($page['last_url']) { ?>
    <a href="<?php echo $page['last_url']; ?>"> &gt;&gt;</a>
<?php } else { ?>
     &gt;&gt; 
<?php } ?>