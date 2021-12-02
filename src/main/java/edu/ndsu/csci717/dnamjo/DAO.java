package edu.ndsu.csci717.dnamjo;

import static java.lang.System.out;

import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;


public class DAO {

    public Connection getConnection() throws SQLException {
        Connection conn;
        DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/tenders", "tendersadmin", "i@hrX!48Ya6C9Zx%BpVRYBG&Q");
        if (conn != null) {
            System.out.print("Connection Established .....");
        } else {
            System.out.print("Connection not established...");
        }
        return conn;
    }

    public boolean doRegister(DTORegister dtoRegister) throws SQLException {
        boolean flag = false;
        try (Connection conn = getConnection()) {
            String qry = "insert into register values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, dtoRegister.getName());
            pstmt.setString(2, dtoRegister.getCompanyName());
            pstmt.setString(3, dtoRegister.getRegisterId());
            pstmt.setString(4, dtoRegister.getMobileNumber());
            pstmt.setString(5, dtoRegister.getCity());
            pstmt.setString(6, dtoRegister.getState());
            pstmt.setString(7, dtoRegister.getPinCode());
            pstmt.setString(8, dtoRegister.getPanNumber());
            pstmt.setString(9, dtoRegister.getEstYear());
            pstmt.setString(10, dtoRegister.getRadioopt());
            pstmt.setString(11, dtoRegister.getRadioopt1());
            pstmt.setString(12, dtoRegister.getFile1());
            pstmt.setString(13, dtoRegister.getEmail());
            pstmt.setString(14, dtoRegister.getPassword());
            pstmt.setString(15, dtoRegister.getCheck());
            pstmt.setString(16, "user");
            int r = pstmt.executeUpdate();
            if (r == 1) {
                flag = true;
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return flag;
    }

    public boolean doTenderForm(DTOTenderForm dtoTenderForm) throws SQLException {
        try (Connection conn = getConnection()) {
            boolean flag = false;
            String qry = "insert into tenderform values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, dtoTenderForm.getTenderId());
            pstmt.setString(2, dtoTenderForm.getCompanyName());
            pstmt.setString(3, dtoTenderForm.getCompanyRegisterNumber());
            pstmt.setString(4, dtoTenderForm.getLocation());
            pstmt.setInt(5, dtoTenderForm.getPincode());
            pstmt.setString(6, dtoTenderForm.getPanNumber());
            pstmt.setInt(7, dtoTenderForm.getExperience());
            pstmt.setDouble(8, dtoTenderForm.getQuoteAmount());
            pstmt.setString(9, "no");
            pstmt.setTimestamp(10, new Timestamp(System.currentTimeMillis()));
            System.out.println(qry);
            int r = pstmt.executeUpdate();
            if (r == 1) {
                flag = true;
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return true;
    }

    public LoginBean loginCheck(LoginBean loginbean) throws SQLException {
        boolean flag = false;
        LoginBean loginBean = new LoginBean();
        try (Connection conn = getConnection()) {
            String qry = "select * from register where email=? and password=?";
            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setString(1, loginbean.getEmail());
            pstmt.setString(2, loginbean.getPassword());
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String desig = rs.getString("Desig");
                loginBean.setDesig(desig);
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return loginBean;
    }

    public boolean getTendersData() throws SQLException {
        ResultSet rs = null;
        boolean flag = true;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from tenderform where clear='no'");
            rs = pstmt.executeQuery();
            if (rs.next()){
                flag = false;
            }
        } catch (SQLException e) {
            e.getCause();
        }
        return flag;
    }

    public int ConformedTenders(String companyRegisterNumber, String pancard, BigDecimal quoteAmount, Timestamp AcceptedTime, String tenderId) throws SQLException {
        int i = 0;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("insert into acceptedtenders values(?,?,?,?,?,?)");
            pstmt.setInt(1, 0);
            pstmt.setString(2, companyRegisterNumber);
            pstmt.setString(3, pancard);
            pstmt.setBigDecimal(4, quoteAmount);
            pstmt.setTimestamp(5, AcceptedTime);
            pstmt.setString(6, tenderId);
            i = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public int tenderAnnounce(String tenderId, String startDate, String endDate, String fileName, String department) throws SQLException {
        int i = 0;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("insert into tenderannouncement values(?,?,?,?,?,?)");
            pstmt.setInt(1, 0);
            pstmt.setString(2, tenderId);
            pstmt.setString(3, startDate);
            pstmt.setString(4, endDate);
            pstmt.setString(5, fileName);
            pstmt.setString(6, department);
            i = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public ArrayList<String> getPublishedData() throws SQLException {
        ResultSet rs = null;
        ArrayList<String> publishData = new ArrayList<>();
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from tenderannouncement");
            rs = pstmt.executeQuery();
            while (rs.next()){
                publishData.add(rs.getString("tenderId"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("******* publish tender details" + rs);
        return publishData;
    }

    public ArrayList<String> getTenderIdFromAcceptedTenders() throws SQLException {
        ResultSet rs = null;
        ArrayList<String> acceptedTenders = new ArrayList<>();
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from acceptedtenders");
            rs = pstmt.executeQuery();
            while (rs.next()){
                acceptedTenders.add(rs.getString("companyRegsiterNumber"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("*******" + rs);
        return acceptedTenders;
    }

    public String checkTenderIdExistancy(String tenderId) throws SQLException {
        ResultSet rs = null;
        String file = "";
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from tenderannouncement where tenderId='" + tenderId + "'");
            rs = pstmt.executeQuery();
            if (rs.next()){
                file = rs.getString("fileName");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return file;
    }

    public String getConformTenders(String tenderId) throws SQLException {
        ResultSet rs = null;
        String tenderComapany = "";
        String qry = "select * from acceptedtenders where tenderId='" + tenderId + "'";
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(qry);
            rs = pstmt.executeQuery();
            if (rs.next()) {
                tenderComapany = rs.getString("companyRegsiterNumber");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("++++++++++++++" + qry);
        return tenderComapany;
    }

    public List<String> getConformAllTenders() throws SQLException {
        ResultSet rs = null;
        List<String> allTenders = new ArrayList<>();
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from acceptedtenders");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                allTenders.add(rs.getString("tenderId"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return allTenders;
    }

    public int updateRecords(String tenderId) throws SQLException {
        int i = 0;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("update tenderform set clear='yes' where tenderId='" + tenderId + "'");
            i = pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    public int tenderCount(String tenderId) throws SQLException {
        int i = 0;
        ResultSet rs = null;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from tenderform where TenderId=?");
            pstmt.setString(1, tenderId);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                i = i + 1;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("tenders count ****************************" + i);
        return i;
    }

    public ArrayList<String> getEmails() throws SQLException {

        ArrayList<String> al = new ArrayList<String>();
        ResultSet rs = null;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select email from register where Desig=?");
            pstmt.setString(1, "user");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                String email = rs.getString(1);
                al.add(email);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public ArrayList<String> getEmails(String registerId) throws SQLException {

        ArrayList<String> al = new ArrayList<String>();
        ResultSet rs = null;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from register where registerId=?");
            pstmt.setString(1, registerId);
            rs = pstmt.executeQuery();
            while (rs.next()) {
                String email = rs.getString("email");
                al.add(email);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public boolean submitSuccessStories(DTOShareInfo dtoShareInfo) throws SQLException {
        boolean flag = false;
        dtoShareInfo.toString();
        try (Connection conn = getConnection()) {
            String qry = "insert into info values(?,?,?)";
            PreparedStatement pstmt = conn.prepareStatement(qry);
            pstmt.setInt(1, 0);
            pstmt.setString(2, dtoShareInfo.getCompanyRegisterNumber());
            pstmt.setString(3, dtoShareInfo.getStory());
            int i = pstmt.executeUpdate();
            if (i > 0) {
                flag = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return flag;
    }

    public List<String> getAllSuccessStories() throws SQLException {
        ResultSet rs = null;
        List<String> story = new ArrayList<>();
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from info");
            rs = pstmt.executeQuery();
            while (rs.next()) {
                story.add(rs.getString("story"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return story;
    }

    public ArrayList<String> getFileFromRegister() throws SQLException {
        ArrayList<String> al = new ArrayList<String>();
        ResultSet ra = null;
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement("select * from register where Desig!='admin' and file1!='noImage'");
            ra = pstmt.executeQuery();
            while (ra.next()) {
                String fileName = ra.getString("file1");
                al.add(fileName);
                out.println(fileName);
                System.out.println("**************** first Time *******************");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }

    public List<String> getDetails(String email) throws SQLException {
        ResultSet rs = null;
        List<String> details = new ArrayList<>();
        String name = "";
        String companyName = "";
        String registerId = "";
        try (Connection conn = getConnection()) {
            String qry = "select * from register where email='" + email + "'";
            PreparedStatement pstmt = conn.prepareStatement(qry);
            rs = pstmt.executeQuery();
            if (rs.next()){
                details.add(rs.getString("name"));
                details.add(rs.getString("companyName"));
                details.add(rs.getString("registerId"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return details;
    }

    public String getFileNameUsingregisterId(String registerId) throws SQLException {

        String fileName = "NO-Certificate-Available";
        ResultSet rs = null;
        String query = "select * from register where registerId='" + registerId + "'";
        try (Connection conn = getConnection()) {
            PreparedStatement pstmt = conn.prepareStatement(query);
            rs = pstmt.executeQuery();

            if (rs.next()) {
                fileName = rs.getString(12);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("File Name......." + query);
        System.out.println("File Name......." + fileName);
        return fileName;
    }
}