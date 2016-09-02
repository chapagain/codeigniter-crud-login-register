<h2><?php echo $title; ?></h2>
 
<?php echo validation_errors(); ?>
 
<?php echo form_open_multipart('news/create'); ?>    
 
    <table>        
        <tr>
            <td><label for="title">Title</label></td>
            <td><input type="input" name="title" size="50" /></td>
        </tr>
        <tr>
            <td><label for="text">Text</label></td>
            <td><textarea name="text" rows="10" cols="40"></textarea></td>
        </tr>        
        <tr>
            <td></td>
            <td><input type="submit" name="submit" value="Create news item" /></td>
        </tr>
    </table>
    
    <input type="hidden" name="user_id" value="<?php echo $user_id; ?>" />    
</form>
