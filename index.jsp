<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <title>Responsive Home</title>
  <style>
    .header{
    padding-top: 20vh;
  }
  #myTable th{
  text-align: center;
  }
  .signGap{
    padding-bottom: 12vh;
  }
  </style>
</head>
<body>
 	 <div class="row">
    	<div class="col-12 header">

    	</div>
  	</div>
  	<form action="Mainservlet">
  	<div class="container">
    <div class="row">
      <div class="col-7">
        <p class="h5 alignleft">Report No: CVR/CED/CC/MT-5/HPC/2021-22/-(Count) </p>
      </div>
      <div class="col-5 text-right">
        <h5>Date: <input type="date" id="SS" name="SS"  style=border:none;"></h5>
        </div>
    </div>
    <div class="row">
      <div class="col-12 h5"><b>M/s. Haris Pranava Constructions Pvt. Ltd.,</b></div>
      <div class="col-12 h5">Affluence Villas, Manneguda,</div>
      <div class="col-12 h5">Hyderabad.</div>
      <div class="col-12"></div>
      <div class="col-12 h2 text-center"><u>TEST REPORT ON CEMENT</u></div>
    </div>
    <br>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Source of the Sample</div>
      <div class="col-5 col-sm-6 h5 text-left">: M/s. Haris Pranava Constructions Pvt. Ltd.</div>
    </div>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Customer's Reference</div>
      <div class="col-6 h5 text-left">: Work Order dt: 23.01.2021</div>
    </div>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Material Received on</div>
      <div class="col-6 h5 text-left">: ().</div>
    </div>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Grade*</div>
      <div class="col-6 h5 text-left">: 53 Grade</div>
    </div>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Condition of Samples</div>
      <div class="col-6 h5 text-left">: Satisfactory</div>
    </div>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Test </div>
      <div class="col-5 col-sm-6 h5 text-left">
        
          :<select id="test1" onchange="Create()" name="test" required>
            <option value="None" selected>: --Select TestMethod--</option>
            <option value="Normal Consistency"> Normal Consistency</option>
            <option value="Initial Setting Time"> Initial Setting Time</option>
            <option value="Final Setting Time"> Final Setting Time</option>
            <option value="Sieve Analysis"> Sieve Analysis</option>
            <option value="Specific Gravity"> Specific Gravity</option>
            <option value="CompressiveStrength">Compressive Strength</option>
            <option value="Soundness"> Soundness (Le chatelier's method)</option>
          </select>
      </div>
    </div>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Test Method</div>
      <div class="col-6 h5 text-left" > :<input type="text" size="45" value="" id="none" name="testmethod" autocomplete="off" style=border:none; >  
            </div>
    </div>
    <br>
    <div class="table-responsive">
      <table style="border:2px solid black;"   border='7'  id="myTable">
      <thead>
        <tr>
          <th>Sl.No</th>
          <th>Cement Brand</th>
          <th>Cement Bag<br>Packing Date</th>
          <th>Date of Testing</th>
          <th id="tabhead"></th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td class="text-center">1</td>
          <td class="text-center">Maha Cement<br>(53 Grade)<br>OPC</td>
          <td class="text-center"><input class="inputs" type="date"></td>
          <td class="text-center"><input class="inputs" type="date"></td>
          <td class="text-center"><input name="result" class="inputs" type="text" ></td>
        </tr>
      </tbody>
      </table>
    </div>
    <div class="row">
      <div class="col-2 col-sm-1 h5">Note:</div>
      <div class="col-10 col-sm-11 h5">1. The results relate only to samples supplied and tested in the college laboratory.</div>
      <div class="col-2 col-sm-1 h5"></div>
      <div class="col-10 col-sm-11 h5">2. Reports shall not be reproduced, except in full, without the written approval of the Laboratory.</div>
      <div class="col-2 col-sm-1 h5"></div>
      <div class="col-10 col-sm-11 h5">3. Any corrections invalidate this report.</div>
      <div class="col-2 col-sm-1 h5"></div>
      <div class="col-10 col-sm-11 h5">4. Any queries regarding the report must be raised immediately.</div>
    </div>
    <div class="signGap">

    </div>
    <div class="row">
      <div class="col-6 h5">
        Mr. K Mahesh
      </div>
      <div class="col-6 h5 text-right">
        Head of the Department
      </div>
    </div>
    <div class="row">
      <div class="col-6 h5">
        Principal Investigator
      </div>
      <div class="col-6 h5 text-right">
        Civil Engineering &emsp;
      </div>
    </div>
    <div class="row">
      <div class="col-12 text-center">
          <button class="btn btn-primary" id="submit">Generate Report</button>
      </div>
    </div>
    <div class="row">
      <div class="col-12 text-left h5">
          Do you wan't older reports : <a href="report.jsp">Report</a>
      </div>
    </div>
  </div>
  </form>

  <script>
  const dateObj = new Date();
  var month = dateObj.getMonth();
  const day = String(dateObj.getDate()).padStart(2, '0');
  const year = dateObj.getFullYear();
  month=month+1;
  var output;
  if(month>9)
     output =  year+'-'+month+'-'+day;
  else
     output =  year+'-'+0+month+'-'+day;
  document.getElementById("SS").defaultValue = output;
</script>
<script>
  var test = {
		    "Normal Consistency":["IS 4031-Part 4-1988 (Reaffirmed-2005)"],
		    "Initial Setting Time":["IS 4031-Part 5-1988 (Reaffirmed-2005)"],
		    "Final Setting Time":["IS 4031-Part 5-1988 (Reaffirmed-2005)"],
		    "Sieve Analysis":["IS 4031-Part 1-1996 (Reaffirmed-2005)"],
		    "CompressiveStrength":["IS 4031-Part 6-1988 (Reaffirmed-2005)"],  
		    "Specific Gravity":["IS 2720-Part 3-1988 (Reaffirmed-2005)"],
		    "Soundness":["IS 4031-Part 3-1998 (Reaffirmed-2005)"],
		    "None":""
		  }
		      function Create()
		        {
					console.log("s")
		            const dateObj = new Date();
		    var month = dateObj.getMonth();
		    const day = String(dateObj.getDate()).padStart(2,'0');
		    const year = dateObj.getFullYear();
		    month=month+1;
		    var output;
		    if(month>9)
		       output =  year+'-'+month+'-'+day;
		    else
		       output =  year+'-'+0+month+'-'+day;
		    console.log(output);
		    		var data = document.getElementById("test1");
		          var item = data.options[data.selectedIndex].value;
		          var testmethod = test[item];
		          console.log("calling name")
		          document.getElementsByName("none").innerHTML=testmethod;
		          var xyz = document.getElementsByName("none").innerHTML[0];
		          console.log("XYZ : "+xyz);
		          document.getElementById("none").value = xyz;
		           var put = document.getElementById("test1");
		             var y;
		             var x;
		                    if(put.value=="CompressiveStrength")
		                    {
		                    	var x = "<thead>"+
			      					"<tr>"+
			      					'<th scope="col">Sl.<br>No</th>'+
			      					'<th scope="col"><center>Dimension of<br>Specimen(mm)</center></th>'+
			      					'<th scope="col"><center>Cross<br>Sectional<br>Area<br>(Sq.mm)</center></th>'+
			      					'<th scope="col"><center>Age<br>at<br>test</center></th>'+
			      					'<th scope="col"><center>Date of<br>Casting*</center></th>'+
			      					'<th scope="col"><center>Date of<br>testing</center></th>'+
			      					'<th scope="col">weight<br>(Kg)</center></th>'+
			      					'<th scope="col">Failure<br>Load<br>(kN)</center></th>'+
			      					'<th scope="col">Compressive<br>strength<br>(N/mm<sup>2</sup>)</center></th>'+
			      					'</tr>'+
			      				"</thead>"+
			                  "</tr>"+ 
			                  "<tr>"+
			                    "<td class='text-center' width='50px'>1</td>"+
			                    "<td class='text-center' width='100px'>70.7x70.7x70.7<br></td>"+
			                    "<td class='text-center' width='100px'>4998.49<br></td>"+
			                    "<td class='text-center' width='100px' rowspan='3'><select id='day' name='age' required onchange='updateDate()'  >"+
			          		  "<option value='none'>-day-</option>"+
			        		  "<option value='3'>3 days</option>"+
			        		  "<option value='7'>7days</option>"+
			        		  "<option value='28'>28 days</option>"+
			        		  "</select></td>"+
			                    "<td align='center' class='text-center' width='140px' rowspan='3' ><center><input style='width:140px;text-align:center;' id='doc' class='inp' type='date' onchange='updateDate()'  name='dofcst' max='"+output+"' required></center></td>"+
			                    "<td align='center' class='text-center' width='140px' rowspan='3'><center><input style='width:140px;text-align:center;' id='doftst' name='doftst' class='inp'  type='date' required></center></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='weight1' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='fload1' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='strength1' id='str1' oninput='Average()' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "</tr>"+
			                    "<tr>"+
			                    "<td class='text-center' width='50px'>2</td>"+
			                    "<td class='text-center' width='100px'>70.7x70.7x70.7<br></td>"+
			                    "<td class='text-center' width='100px'>4998.49<br></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='weight2' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='fload2' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='strength2' id='str2' oninput='Average()' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "</tr>"+
			                    "<tr>"+
			                    "<td class='text-center' width='50px'>3</td>"+
			                    "<td class='text-center' width='100px'>70.7x70.7x70.7<br></td>"+
			                    "<td class='text-center' width='100px'>4998.49<br></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='weight3' class='inp' style='text-align:center;' type='text'size='7' required></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='fload3' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "<td align='center' class='text-center' width='100px'><input name='strength3' id='str3' oninput='Average()' class='inp' style='text-align:center;' type='text' size='7' required></td>"+
			                    "</tr>"+
			                    "<tr>"+
			                    "<td colspan='8' align='right'><b>Average Compressive Strength<b></td>"+
			                    "<td ><input type='text' id='avgcs' name='avg' class='inp' style='text-align:center;' size='7' readonly></td>"+
			                    "</tr>"+
			                    "</table>";
			                  
		                    }
		                    else
		                    {
		                      if(put.value=="Soundness")
		                            y = "Soundness";
		                      else if(put.value=="Sieve Analysis")
		                          y = "Fineness";
		                      else y = put.value;
		                      console.log("y+"+y);
		                      
		                      x = "<table style='border:2px solid black;'  border='1'  id='myTable'>"+
								"<tr>"+
								"<th class='h5' width='80px'>Sl.No</th>"+
								"<th class='h5' width='150px'>Cement Brand</th>"+
								"<th class='h5' width='200px'>Cement Bag<br>Packing Date</th>"+
								"<th class='h5' width='200px'>Date of Testing</th>"+
								"<th class='h5' id='tabhead' width='150px'>"+  y +"</th>"+
						"</tr>"+
						"<tr>"+
							"<td class='text-center h5' width='80px'>1</td>"+
							"<td class='text-center h5' width='150px'>Maha Cement<br>(53 Grade)<br>OPC</td>"+
							"<td align='center' class='text-center h5' width='200px'><center><input style='width:150px;text-align:right;' class='inp h5' type='date' name='dofcst' max='"+output+"' required></center></td>"+
							"<td align='center' class='text-center h5' width='200px'><center><input style='width:150px;text-align:right;' id='present' name='doftst' class='inp h5' type='date' max='"+output+"' required></center></td>"+
							"<td align='center' class='text-center h5' width='200px'><input class='inp' style='text-align:right;' type='text' size='1' name='result' required>";
							var temp;
						if(put.value=="Normal Consistency" || put.value=="Sieve Analysis")
								temp="%</span>";
						else if(put.value=="Initial Setting Time" || put.value=="Final Setting Time")
								temp="Minutes";
						else if(put.value=="Soundness")
								temp="mm";
						else
								temp="";
								x=x+temp;
					x=x+"</td>"+
						"</tr>"+
					"</table>";
		                 }
		                      document.getElementById("myTable").innerHTML=x;
		                      console.log(output);
		                    try{
		                    }
		                    catch(err)
		                    {
		                        console.log("not done"+" "+err);
		                    }
		              }
  				function updateDate()
  				{
  					var age=document.getElementById("day");	
	  				var doc=document.getElementById("doc");
	  				document.getElementById("doftst").value= doc.value;
	  				console.log(document.getElementById("day").value);
	  				let step = document.getElementById("day").value;
	  				console.log(document.getElementById("doftst").value)
	  				document.getElementById("doftst").stepUp(step);
	  				console.log(document.getElementById("doftst").value)
  				}
		         function Area()
		         {
		                  
		                  var dim = "dimension";
		                  var a = "area"
		                  var rows = 3;
		                  
		                  for(var r=0;r<rows;r++)
		                  {
		                      var dimensions = dim+r;
		                      var areas = a + r;
		                      var ele = document.getElementsByClassName(dimensions);
		                      var area = document.getElementById(areas);
		                      
		                      for(var x = 0;x<ele.length;x++)
		                      {
		                          ele[x].value = ele[0].value;
		                      }
		                      try{
		                         area.value = ele[0].value*ele[0].value;
		                      }
		                      catch(err)
		                      {
		  
		                      }
		                  }
		          }
		         function Average()
			       {
			         
			               var cs1=parseInt(document.getElementById("str1").value)		             
			               var cs2=parseInt(document.getElementById("str2").value)
			               var cs3=parseInt(document.getElementById("str3").value)
			               var avg=(cs1+cs2+cs3)/3;
			               var avg1=avg.toFixed(2);
			               if(!isNaN(avg)){
			            	   document.getElementById("avgcs").value= avg1;
			               }
			               
			       }
		       function printVal()
		       {
		           console.log(document.getElementById('present').max);

		       } 
  </script>

</body>
</html>