<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<title>Welcome to CodeIgniter</title>	
</head>
<body>

<div id="container">
	<h1>Welcome to CodeIgniter!</h1>

	<div id="body">
		<select name="variables">
			 <?php						  
			    foreach ($resultado_modelo as $res) {				    	
					?>  
					<option value="<?php echo $res->clave ?>"><?php echo $res->Nombre ?></option>	    			
		    		<?php					
	    		}		    		    			    
	    		?>
		</select>
	</div>

	<p class="footer">Page rendered in <strong>{elapsed_time}</strong> seconds</p>
</div>

</body>
</html>