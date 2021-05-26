import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 @WebServlet("/Mainservlet")
public class Mainservlet extends HttpServlet {
	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		 response.setContentType("text/html");
		 try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
			PreparedStatement pst=null;
			PreparedStatement pstmt=null;
			PrintWriter pw=response.getWriter();
			HttpSession session = request.getSession(false);
			String date = request.getParameter("SS");
			String tname = request.getParameter("test");
			String tmethod = request.getParameter("testmethod");
			session.setAttribute("repdate",date);
			session.setAttribute("tname",tname);
			session.setAttribute("tmethod",tmethod);
			int val = 0;
			if(tname.equals("CompressiveStrength"))
			{
				pst=((java.sql.Connection) con).prepareStatement("insert into cmpstrength(rep,testname,testmethod,age,doc,dot,weight1,failure1,strength1,weight2,failure2,strength2,weight3,failure3,strength3,avg) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				String d[];
				d=date.split("-");
				String st="";
				st=d[2]+"-"+d[1]+"-"+d[0];
				//pw.println(tname);
				//pw.println(tmethod);
				pst.setString(1,st);
				pst.setString(2,tname);
				pst.setString(3, tmethod);
				//pw.println(tmethod);
				val = 4;
				int x = 0;
				String Str = "";
				String str="";
				int er=0;
				for(int i=1;i<=3;i++)
				{
					if(x == 0)
					{
						String age = request.getParameter("age");
						pst.setString(val, age);
						session.setAttribute("age",age);	
						//pw.println(age);
						pstmt=con.prepareStatement("select * from cmpstrength where rep='"+st+"' and testname='"+tname+"' and age='"+age+"'");
						ResultSet rslt=pstmt.executeQuery();
						if(rslt.next())
						{
							er=1;
							pw.println("<script type=\"text/javascript\">");
							pw.println("alert('Report Already Generated!');");  
						    pw.println("</script>");
							throw new IOException();
						}
						val++;
						Str = "dofcst";
						str = request.getParameter(Str);
						d = str.split("-");
						str = d[2]+"-"+d[1]+"-"+d[0];
						pst.setString(val, str);
						session.setAttribute("doc",str);
						val++;
						Str = "doftst";
						str = request.getParameter(Str);
						d = str.split("-");
						str = d[2]+"-"+d[1]+"-"+d[0];
						pst.setString(val, str);
						session.setAttribute("dot",str);
						val++;
						x = 1;
					}
					Str = "weight"+i;
					str = request.getParameter(Str);
					pst.setString(val, str);
					session.setAttribute("w"+i,str);
					val++;
					Str = "fload"+i;
					str = request.getParameter(Str);
					pst.setString(val,str);
					session.setAttribute("f"+i,str);
					val++;
					Str = "strength"+i;
					str = request.getParameter(Str);
					pst.setString(val, str);
					session.setAttribute("s"+i,str);
					val++;
					System.out.println(i+"completed");
				}
				str=request.getParameter("avg");
				System.out.println("Average : "+str);
				pst.setString(val, str);
				session.setAttribute("avg",str);
				if(er==1)
					throw new IOException();
				pst.executeUpdate();
			}
			else 
			{
				int er=0;
			pst=((java.sql.Connection) con).prepareStatement("insert into cement(date,testname,testmethod,doc,dot,res) values(?,?,?,?,?,?)");
				String dt[];
				String sd="";
				dt=date.split("-");
				sd=dt[2]+"-"+dt[1]+"-"+dt[0];
				pst.setString(1,sd);
				pstmt=con.prepareStatement("select * from cement where date='"+sd+"' and testname='"+tname+"'");
				ResultSet rst=pstmt.executeQuery();
				if(rst.next())
				{
					er=1;
					pw.println("<script type=\"text/javascript\">");
					pw.println("alert('Report Already Generated!');");  
				    pw.println("</script>");
					throw new IOException();
				}
				else 
				{
				pst.setString(2, tname);
				pst.setString(3, tmethod);
				String doc = request.getParameter("dofcst");
				dt=doc.split("-");
				sd=dt[2]+"-"+dt[1]+"-"+dt[0];
				pst.setString(4,sd);
				String dot = request.getParameter("doftst");
				dt=dot.split("-");
				sd=dt[2]+"-"+dt[1]+"-"+dt[0];
				pst.setString(5,sd);
				String reslt = request.getParameter("result");
				pst.setString(6, reslt);
				if(er==1)
					throw new IOException();
				pst.executeUpdate();
				session.setAttribute("doc",doc);
				session.setAttribute("dot",dot);
				session.setAttribute("reslt",reslt);
				}
			}
			request.getRequestDispatcher("print.jsp").include(request, response);
		} 
		catch (Exception e) {
			request.getRequestDispatcher("index.jsp").include(request, response);
			e.printStackTrace();
		}
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
