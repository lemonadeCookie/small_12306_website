<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Bootstrap Number Spinner - Bootsnipp.com</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">    
	<script src="./js/jquery-1.10.2.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>
	
    <style type="text/css">
    /* just for preview */
.container {
    padding-top: 40px;  
}
    </style>
    <script type="text/javascript">
        window.alert = function(){};
        var defaultCSS = document.getElementById('bootstrap-css');
        function changeCSS(css){
            if(css) $('head > link').filter(':first').replaceWith('<link rel="stylesheet" href="'+ css +'" type="text/css" />'); 
            else $('head > link').filter(':first').replaceWith(defaultCSS); 
        }
        $( document ).ready(function() {
          var iframe_height = parseInt($('html').height()); 
          window.parent.postMessage( iframe_height, 'http://bootsnipp.com');
        });
    </script>
</head>
<body>
	<div class="container">
	<div class="row">
		<div class="col-xs-3 col-xs-offset-3">
			<div class="input-group number-spinner">
				<span class="input-group-btn form-control span3">
					<button class="btn btn-default" data-dir="dwn"><span class="glyphicon glyphicon-minus">-</span></button>
				</span>
				<input type="text" class="form-control span6 text-center" value="1">
				<span class="input-group-btn form-control span3">
					<button class="btn btn-default" data-dir="up"><span class="glyphicon glyphicon-plus">+</span></button>
				</span>
			</div>
		</div>
	</div>
</div>
	<script type="text/javascript">
	$(document).on('click', '.number-spinner button', function () {    
	var btn = $(this),
		oldValue = btn.closest('.number-spinner').find('input').val().trim(),
		newVal = 0;
	
	if (btn.attr('data-dir') == 'up') {
		newVal = parseInt(oldValue) + 1;
	} else {
		if (oldValue > 1) {
			newVal = parseInt(oldValue) - 1;
		} else {
			newVal = 1;
		}
	}
	btn.closest('.number-spinner').find('input').val(newVal);
});
	</script>
</body>
</html>
