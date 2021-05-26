<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<title>Print the page</title>
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
  table{
  	width: 100%;
  }
  </style>
</head>
<body>
<div class="row">
    	<div class="col-12 header">

    	</div>
  	</div>
  	<%
  		HttpSession hp = request.getSession(false);
		String date = (String) hp.getAttribute("repdate");
		System.out.println(date);
		String d[]=date.split("-");
		date=d[2]+"-"+d[1]+"-"+d[0];
		String test = (String) hp.getAttribute("tname");
		String tmethod = (String) hp.getAttribute("tmethod");
	%>
<div class="container">
    <div class="row">
      <div class="col-7">
        <p class="h5 alignleft">Report No: CVR/CED/CC/MT-5/HPC/2021-22/-(Count) </p>
      </div>
      <div class="col-5 text-right h5">
	Date:<%= date %>
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
      <div class="col-5 col-sm-3 h5" onload="createTable()">Test : </div>
      <div class="col-5 col-sm-6 h5 text-left" id="test1" >
        :<%=test %>
      </div>
    </div>
    <div class="row">
      <div class="col-5 col-sm-3 h5">Test Method</div>
      <div class="col-6 h5 text-left" >:<%= tmethod %></div>
    </div>
    <br>
    <div class="table-responsive">
      <% 
      String tst = (String) hp.getAttribute("tname");
      if(tst.equals("CompressiveStrength"))
      {
    	  String age= (String) hp.getAttribute("age");
    	  
			String castdate= (String) hp.getAttribute("doc");
			String testdate=(String) hp.getAttribute("dot");
			String wt1= (String) hp.getAttribute("w1");
			String fr1= (String) hp.getAttribute("f1");
			String str1= (String) hp.getAttribute("s1");
			String wt2= (String) hp.getAttribute("w2");
			String fr2= (String) hp.getAttribute("f2");
			String str2= (String) hp.getAttribute("s2");
			String wt3= (String) hp.getAttribute("w3");
			String fr3= (String) hp.getAttribute("f3");
			String str3= (String) hp.getAttribute("s3");
			String avg= (String) hp.getAttribute("avg");
      out.print("<table style='border:2px solid black;'  border='1'>");
	 	out.print("<thead>"+
	              "<th scope='col'><center>Sl.<br>No<center></th>"+
	              "<th scope='col'><center>Dimension of<br>Specimen(mm)</center></th>"+
	              "<th scope='col'><center>Cross<br>Sectional<br>Area<br>(Sq.mm)</center></th>"+
	              "<th scope='col'><center>Date of<br>Casting*</center></th>"+
	              "<th scope='col'><center>Date of<br>testing</center></th>"+
	              "<th scope='col'><center>Age<br>at<br>test</center></th>"+
	              "<th scope='col'><center>Weight<br>(Kg)</center></th>"+
	              "<th scope='col'><center>Failure<br>Load<br>(kN)</center></th>"+
	              "<th scope='col'><center>Compressive<br>strength<br>(N/mm<sup>2</sup>)</center></th>"+
	              "</thead>");
	 				out.print("<tr  height='30px'>");
			 			 out.print("<td width='60px'><center>1</center></td>");
			 			 out.print("<td width='120px'><center>70.7x70.7x70.7</center></td>");
			 			 out.print("<td width='100px'><center>4998.9</center></td>");
			 			 out.print("<td rowspan ='3' width='110px'><center>"+castdate+"</center></td>");
			 			 out.print("<td rowspan ='3' width='110px'><center>"+testdate+"</center></td>");
			 			 out.print("<td rowspan = '3' width='70px'><center>"+age+"<br>Days"+"</center></td>");
			 			 out.print("<td width='80px'><center >"+wt1+"</center></td>");
			 			 out.print("<td width='80px'><center>"+fr1+"</center></td>");
			 			 out.print("<td width='80px'><center>"+str1+"</center></td>");
			 		out.print("</tr>");
			 		out.print("<tr  height='30px'>");
			 			out.print("<td><center>2</center></td>");
		 			 	out.print("<td><center>70.7x70.7x70.7</center></td>");
		 			 	out.print("<td><center>4998.9</center></td>");
		 				 out.print("<td><center>"+wt2+"</center></td>");
			 			out.print("<td><center>"+fr2+"</center></td>");
			 			out.print("<td><center>"+str2+"</center></td>");
			 		out.print("</tr>");
	 				out.print("<tr  height='30px'>");
	 					out.print("<td><center>3</center></td>");
		 			 	out.print("<td><center>70.7x70.7x70.7</center></td>");
		 			 	out.print("<td><center>4998.9</center></td>");
		 			 	out.print("<td><center>"+wt3+"</center></td>");
			 			out.print("<td><center>"+fr3+"</center></td>");
			 			out.print("<td><center>"+str3+"</center></td>");
			 		out.print("</tr>");
	 			  	out.print("<tr height='30px'>");
	 			 		out.print("<td colspan='8' align='right'> <b> Average Compressive Strength </b> </center></td>");
	 			  		out.print("<td><center>"+avg+"</center></td>");
	    		  out.print("</tr>");
		out.print("</table>");
		}
      else
		{
    	  String m[];
			String castdate = (String) hp.getAttribute("doc");
			m=castdate.split("-");
			castdate=m[2]+"-"+m[1]+"-"+m[0];
			String testdate = (String) hp.getAttribute("dot");
			m=testdate.split("-");
			testdate=m[2]+"-"+m[1]+"-"+m[0];
			String result = (String) hp.getAttribute("reslt");
			String t;
			String y;
				if(tst.equals("Normal Consistency"))
				{
					y=tst;
					t="%";
				}
				else if(tst.equals("Initial Setting Time") ||tst.equals("Final Setting Time"))
				{
					y=tst;
					t="Minutes";
				}
				else if(tst.equals("Soundness"))
				{ 	y = "Soundness";
					t = "mm";
				}
           		else if(tst.equals("Sieve Analysis"))
           		{
               		y = "Fineness";
           			t= "%";
           		}
               	else 
               	{	y = tst;
					t = "";
               	}
           out.print("<table style='border:2px solid black;'  border='1'  id='myTable'>"+
				"<tr>"+
				"<th class='h5' width='80px'>Sl.No</th>"+
				"<th class='h5' width='150px'>Cement Brand</th>"+
				"<th class='h5' width='200px'>Cement Bag<br>Packing Date</th>"+
				"<th class='h5' width='200px'>Date of Testing</th>"+
				"<th class='h5' id='tabhead' width='150px'>"+  y +"</th>"+
				"</tr>");
           out.print("<tr>");
           	out.print("<td class='text-center h5' width='80px'>1</td>");
			out.print("<td class='text-center h5' width='150px'>Maha Cement<br>(53 Grade)<br>OPC</td>");
			out.print("<td align='center' class='text-center h5' width='200px'>"+castdate+"<center></center></td>");
			out.print("<td align='center' class='text-center h5' width='200px'>"+testdate+"<center></center></td>");
			out.print("<td align='center' class='text-center h5' width='200px'>"+result+" "+ t +"</td>");
           out.print("</tr>");
           out.print("</table>");
           hp.invalidate();
           hp = null;//request.getSession();
		}
      %>
    </div>
    <br>
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
          <button class="btn btn-primary" id="btn" onclick="printpage()">Print</button>
      </div>
    </div>
  </div>

</body>
<script>
function printpage()
{

		var button = document.getElementById("btn");
		button.style.visibility = "hidden";
		window.print();
}	
</script>
</html>