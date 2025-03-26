import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/SendMoneyServlt")
public class SendMoneyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String amount = request.getParameter("amount");
        String fromAccount = request.getParameter("fromAccount");
        String sendTo = request.getParameter("sendTo");
        String recipient = request.getParameter("recipient");

        out.println("<html><head><title>Transaction Status</title></head><body>");
        out.println("<h2 style='color: #bb86fc; text-align: center;'>Transaction Successful!</h2>");
        out.println("<p style='text-align: center;'>Amount: " + amount + "</p>");
        out.println("<p style='text-align: center;'>From: " + fromAccount + "</p>");
        out.println("<p style='text-align: center;'>To: " + (sendTo.equals("account") ? "Bank Account" : "Wallet") + "</p>");
        out.println("<p style='text-align: center;'>Recipient: " + recipient + "</p>");
        out.println("</body></html>");
    }
}
