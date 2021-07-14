<?php
$connection = mysqli_connect("localhost","root","","database");
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Kuthoop Hotel</title>
<link rel="stylesheet" type="text/css" href="Hotel/css/new10.css">
<link href="Hotel/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="Hotel/css/font-awesome.css" rel="stylesheet"> 
<link rel="stylesheet" href="Hotel/css/chocolat.css" type="text/css" media="screen">
<link href="Hotel/css/easy-responsive-tabs.css" rel='stylesheet' type='text/css'/>
<link rel="stylesheet" href="Hotel/css/flexslider.css" type="text/css" media="screen" property="" />
<link rel="stylesheet" href="Hotel/css/jquery-ui.css" />
<link href="Hotel/css/style.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="Hotel/js/modernizr-2.6.2.min.js"></script>
<style>
	body{
	background-image: url('images/contact.jpg');
	background-size: cover;
	background-attachment:fixed;
	width: 100%;
	height: 100vh;
}
a{
	text-decoration:none
	
	}
	a:link {color : orange}
	a:visited {color : orange}
	a:hover {color : yellow}
	.menu{

	width: 100%;
	height: 100px;
	background-color: rgba(0,0,51,1);
}
.rightmenu ul{
	margin-left: 300px;
}
	</style>
</head>
<body a link = "black" vlink="red">
<div class="menu">
			<div class="leftmenu">
				<h4><a href="Hotel/index1.php">Kuthoop <span>Hotel</span> </h4>
			
			</div><div class="rightmenu">
				<ul>
					<li id="H1"><a href="Hotel/index1.php">Home</a></li>
					<li><a href="Hotel/Room.php">Rooms</a></li>
					<li><a href="Hotel/Gallery.php">Gallery</a><li>
					<li><a href="Hotel/about.php">About</a><li>
					<li><a href="Hotel/contact.php">Contact Us</a><li>
					<li><a href="complaint.php">Complaint</a><li>
					
				</ul>
			</div>
			
		</div><div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-heading">Make Complaint</div>
                <div class="panel-body">
                    <?php
                    if (isset($_GET['error'])) {
                        echo "<div class='alert alert-danger'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Error on Complaint !
                            </div>";
                    }
                    if (isset($_GET['success'])) {
                        echo "<div class='alert alert-success'>
                                <span class='glyphicon glyphicon-info-sign'></span> &nbsp; Complaint Successfully Added !
                            </div>";
                    }
                    ?>
                    <form role="form"  data-toggle="validator" method="post" action="ajax.php">
                        <div class="row">
                            <div class="form-group col-lg-6">
                                <label>Complainant Name</label>
                                <input type="text" class="form-control" placeholder="Complainant Name" name="complainant_name" required>
                                <div class="help-block with-errors"></div>
                            </div>

                            <div class="form-group col-lg-6">
                                <label>Type Of Complaint</label>
                                <input type="text" class="form-control" placeholder="Complaint Type" name="complaint_type" required>
                                <div class="help-block with-errors"></div>
                            </div>

                            <div class="form-group col-lg-12">
                                <label>Complaint Description</label>
                                <textarea class="form-control" name="complaint" placeholder="Complaint" required></textarea>
                            </div>

                        </div>

                        <button type="submit" class="btn btn-lg btn-primary" name="createComplaint">Submit</button>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
	</body>
	</html>