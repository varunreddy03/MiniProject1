import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/printServlet")
public class printServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/miniproject","root","root");
			String date =request.getParameter("date");
			String d[];
			d=date.split("-");
			date=d[2]+"-"+d[1]+"-"+d[0];
			String tname =request.getParameter("test1");
			PreparedStatement pst=null;
			HttpSession hp = request.getSession(false);
			if(tname.equals("CompressiveStrength"))
			{
			String day=request.getParameter("day");
			System.out.println(day);
			System.out.println(date);
			pst=conn.prepareStatement("select * from cmpstrength where rep='"+date+"' and testname='"+tname+"' and age='"+day+"'");
			ResultSet res=pst.executeQuery();
			
				{
			System.out.println("entered");
			if(res.next())
			{
				
				String dt[]=res.getString(1).split("-");
				String dat=dt[2]+"-"+dt[1]+"-"+dt[0];
				System.out.println("date:"+dat);
				hp.setAttribute("repdate",dat );
				System.out.println(res.getString(1));
				hp.setAttribute("tname",res.getString(2));
				System.out.println(res.getString(2));
				hp.setAttribute("tmethod", res.getString(3));
				String val =res.getString(4);
				hp.setAttribute("age", val);
				System.out.println(res.getString(4));
				dt=res.getString(5).split("-");
				String docst=dt[0]+"-"+dt[1]+"-"+dt[2];
				hp.setAttribute("doc",docst );
				dt=res.getString(6).split("-");
				String dotst=dt[0]+"-"+dt[1]+"-"+dt[2];
				hp.setAttribute("dot", dotst);
				int number = 7;
				System.out.println("entered");
				for(int i=1;i<=3;i++)
				{
					hp.setAttribute("w"+i, res.getString(number));
					number++;
					hp.setAttribute("f"+i, res.getString(number));
					number++;
					hp.setAttribute("s"+i, res.getString(number));
					number++;
				}
				hp.setAttribute("avg", res.getString(number));
			}
			else
			{
				int stored = Integer.parseInt("Hello");
				
			}
				request.getRequestDispatcher("print.jsp").include(request, response);
			}
			}
			else
			{
				System.out.println("date : "+date+" test : "+tname);
				pst=conn.prepareStatement("select * from cement where date=? and testname=?");
				pst.setString(1, date);
				pst.setString(2, tname);
				ResultSet i=pst.executeQuery();
				if(i.next())
				{
					String dp[];
					System.out.println("date entered :"+i.getString(1));
					dp=i.getString(1).split("-");
					String dot=dp[2]+"-"+dp[1]+"-"+dp[0];	
					hp.setAttribute("repdate",dot);
					System.out.println("dateB : "+dot);
					hp.setAttribute("tname",i.getString(2));
					hp.setAttribute("tmethod", i.getString(3));	
					dp=i.getString(4).split("-");
					String dc=dp[2]+"-"+dp[1]+"-"+dp[0];
					hp.setAttribute("doc",dc);
					dp=i.getString(5).split("-");
					String dtf=dp[2]+"-"+dp[1]+"-"+dp[0];	
					hp.setAttribute("dot",dtf);
					hp.setAttribute("reslt",i.getString(6));
					request.getRequestDispatcher("print.jsp").include(request, response);
				}
				else
				{

					int stored = Integer.parseInt("Hello");
					System.out.println(stored);
				}
			}
		}
		catch(Exception e)  	
		{
			pw.println("<script type=\"text/javascript\">");
			pw.println("alert('Invalid Credentials');");  
		    pw.println("</script>");
		    request.getRequestDispatcher("report.jsp").include(request, response);
			System.out.println("sent");
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
