package p1;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/HASKELTEST")
public class Hackell extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String question1 = request.getParameter("option1");
        String question2 = request.getParameter("option2");
        String question3 = request.getParameter("option3");
        String question4 = request.getParameter("option4");
        String question5 = request.getParameter("option5");
        String question6 = request.getParameter("option6");
        String question7 = request.getParameter("option7");
        String question8 = request.getParameter("option8");
        String question9 = request.getParameter("option9");
        String question10 = request.getParameter("option10");
        String name = (String) session.getAttribute("name");
        // Retrieve the selected answers for the other questions here

        // Check the selected answers against the correct answers
        int correctAnswers = 0;
        if (question1.equals("B")) 
        {
            correctAnswers++;
        }
        if (question2.equals("C")) 
        {
            correctAnswers++;
        }
        if (question3.equals("B")) 
        {
            correctAnswers++;
        }
        if (question4.equals("C")) 
        {
            correctAnswers++;
        }
        if (question5.equals("B")) 
        {
            correctAnswers++;
        }
        if (question6.equals("B")) 
        {
            correctAnswers++;
        }
        if (question7.equals("A"))
        {
            correctAnswers++;
        }
        if (question8.equals("C"))
        {
            correctAnswers++;
        }
        if (question9.equals("D")) 
        {
            correctAnswers++;
        }
        if (question10.equals("C")) 
        {
            correctAnswers++;
        }
        
        int score = (correctAnswers);
        // Forward the request and response to a JSP file to display the score
        request.setAttribute("score", score);
        request.setAttribute("name", name);
        Connection con;
        try {
        	int count=0;
        	Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/user?useSSL=false","root","root");
			PreparedStatement pstmt2= con.prepareStatement("select * from test where name=?");
			pstmt2.setString(1, name);
			ResultSet rs1=pstmt2.executeQuery();
			while(rs1.next()) 
			{
				count=1;
			}
			if(count==1)
			{
				PreparedStatement pstmt1= con.prepareStatement("select * from test where name=?");
				pstmt1.setString(1, name);
				ResultSet rs=pstmt1.executeQuery();
				
				while(rs.next())
				{
					System.out.println(rs.getString(2));
					if(rs.getInt(2)==1 ||  rs.getInt(2)==2 || rs.getInt(2)==3 || rs.getInt(2)==4 || rs.getInt(2)==5 || rs.getInt(2)==6 || rs.getInt(2)==7  ||rs.getInt(2)==8  |rs.getInt(2)==9  ||  rs.getInt(2)==10 )
					{
						count=2;
						System.out.println(count);
						
					}
				}
			}
			if(count==1)
				{
				System.out.println("update");
				PreparedStatement pstmt= con.prepareStatement("update test set Hask_test=? where name=?");
				pstmt.setInt(1,score);
				pstmt.setString(2, name);
				int p=pstmt.executeUpdate();
				}
			if(count==0)
			{
				System.out.println("insert");
				PreparedStatement pstmt4= con.prepareStatement("insert into test(name,Hask_test) values(?,?)");
				pstmt4.setString(1, name);
				pstmt4.setInt(2,score);
				int p=pstmt4.executeUpdate();
			}
        }
        catch(ClassNotFoundException ex)
		{
			System.out.println("Not loaded................");
			System.out.println(ex);
		}
		catch(SQLException ex)
		{
			System.out.println("Not Connected................");
			System.err.println(ex);
		}
        
        RequestDispatcher dispatcher = request.getRequestDispatcher("score.jsp");
        dispatcher.forward(request, response);
    }
}