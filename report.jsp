	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style type="text/css">
    .header{
    padding-top: 20vh;
  }

	  .signGap{
    padding-bottom: 12vh;
  }
  form{
  margin-left:20vw;
  margin-right:10vw;
  }
  .btn{
  	margin-left:14vw;
  }
</style>
<script>
  function change()
  {
	  var put = document.getElementById("test1");
      //var req = put.value;
      var add="";
      if(put.value=="CompressiveStrength")
	 	{	
		  add="<div class='row'><div class='col-12'>No of Days of Testing &nbsp &nbsp &nbsp: &nbsp &nbsp<select id='day' name='day' required>"+
		  "<option value='none'>-day-</option>"+
		  "<option value='3'>3 days</option>"+
		  "<option value='7'>7 days</option>"+
		  "<option value='28'>28 days</option>"+
		  "</select></div></div>";		
	 }
      document.getElementById("str").innerHTML=add;
  }
</script>
</head>
<body>
	<div class="row">
    	<div class="col-12 header">
    	</div>
    </div>
    <div class="container">
		<div class="row">
			<div class="col-12 h2 text-center"><u>TEST REPORT ON CEMENT</u>
			</div>
		</div>
	<br>
	<form  action="printServlet">
		 	<div class="row">
      			<div class="col-12 h5">Enter Date of Report  &nbsp &nbsp &nbsp : &nbsp &nbsp<input type="date" name="date" required></div>
			</div>
			<br>
		 	<div class="row">
      			<div class="col-12 h5">
				 	<label>Test Method Performed &nbsp: &nbsp &nbsp</label>
				 	<select id="test1" name="test1" onchange="change()" onclick="change()" required>
            			<option value="None" selected>: --Select TestMethod--</option>
            			<option value="Normal Consistency"> Normal Consistency</option>
            			<option value="Initial Setting Time"> Initial Setting Time</option>
            			<option value="Final Setting Time"> Final Setting Time</option>
            			<option value="Sieve Analysis"> Sieve Analysis</option>
            			<option value="Specific Gravity"> Specific Gravity</option>
            			<option value="CompressiveStrength"> Compressive Strength</option>
            			<option value="Soundness"> Soundness (Le chatelier's method)</option>
          			</select>
				</div>
			</div><br>
			<div id="str">
			</div>
			 <br>
		 	<div class="row"> 
      			<div class="col-12">
          			<button class="btn btn-danger" id="submit" onclick="print_page()">Submit</button>
      			</div>
    		</div>
	</form>
	</div>
</body>
</html>