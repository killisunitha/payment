import java.sql.*;
import java.util.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.*;

public class CropRecommendationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        try {
            // Fetch input parameters
            float nitrogen = Float.parseFloat(request.getParameter("nitrogen"));
            float phosphorus = Float.parseFloat(request.getParameter("phosphorus"));
            float potassium = Float.parseFloat(request.getParameter("potassium"));
            float temperature = Float.parseFloat(request.getParameter("temperature"));
            float humidity = Float.parseFloat(request.getParameter("humidity"));
            float ph = Float.parseFloat(request.getParameter("ph"));
            float rainfall = Float.parseFloat(request.getParameter("rainfall"));
            
            // Connect to database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crop_db", "root", "root");
            PreparedStatement pst = con.prepareStatement("SELECT crop FROM crop_data WHERE nitrogen <= ? AND phosphorus <= ? AND potassium <= ? AND temperature BETWEEN ? AND ? AND humidity BETWEEN ? AND ? AND ph BETWEEN ? AND ? AND rainfall BETWEEN ? AND ? LIMIT 1");
            
            pst.setFloat(1, nitrogen);
            pst.setFloat(2, phosphorus);
            pst.setFloat(3, potassium);
            pst.setFloat(4, temperature - 5);
            pst.setFloat(5, temperature + 5);
            pst.setFloat(6, humidity - 5);
            pst.setFloat(7, humidity + 5);
            pst.setFloat(8, ph - 0.5f);
            pst.setFloat(9, ph + 0.5f);
            pst.setFloat(10, rainfall - 50);
            pst.setFloat(11, rainfall + 50);
            
            ResultSet rs = pst.executeQuery();
            
            if (rs.next()) {
                out.println("<h2>Recommended Crop: " + rs.getString("crop") + "</h2>");
            } else {
                out.println("<h2>No Suitable Crop Found</h2>");
            }
            
            con.close();
        } catch (Exception e) {
            out.println("<h2>Error: " + e.getMessage() + "</h2>");
        }
    }
}
