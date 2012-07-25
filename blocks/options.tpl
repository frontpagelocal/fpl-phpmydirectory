<?php if($languages_array OR $templates_array) { ?>
<div id="options">
    <form action="#" method="post">
        <?php if($languages_array) { ?>
            Language: <select name="lang" onchange="this.form.submit();" style="margin-right: 20px">
            <?php foreach($languages_array as $id=>$language) { ?>
                <option value="<?php echo $id; ?>"<?php if($id == $current_language) { ?> selected="selected"<?php } ?>><?php echo $language; ?></option>
            <?php } ?>
            </select>
        <?php } ?>
        <?php if($templates_array) { ?>
            Template: <select name="template" onchange="this.form.submit();">
            <?php foreach($templates_array as $template) { ?>
                <option value="<?php echo $template; ?>"<?php if($id == $current_template) { ?> selected="selected"<?php } ?>><?php echo $template; ?></option>
            <?php } ?>
            </select>
        <?php } ?>
    </form>
</div>
<?php } ?>