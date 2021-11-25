package edu.ndsu.csci717.dnamjo;
import static java.lang.System.out;
import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import javax.management.Query;
import javax.sql.*;

public class DAO {

     private Connection con;
     public DAO()
     {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tenders", "root", "");
            if (con != null){
                System.out.print("Connection Established .....");
            } else {
                System.out.print("Connection not established...");
            }
        } catch (ClassNotFoundException cne) {
            System.out.println("Driver is not Loaded");
            cne.printStackTrace();
        } catch (SQLException se) {
            System.out.println("Connection is not established");
            se.printStackTrace();
        }
    }

    public boolean doRegister(DTORegister dtoRegister) {
        boolean flag = false;
        try {
            String qry = "insert into register values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(qry);
            pstmt.setString(1,dtoRegister.getName());
            pstmt.setString(2,dtoRegister.getCompanyName());
            pstmt.setString(3,dtoRegister.getRegisterId());
            pstmt.setString(4,dtoRegister.getMobileNumber());
            pstmt.setString(5,dtoRegister.getCity());
            pstmt.setString(6,dtoRegister.getState());
            pstmt.setString(7,dtoRegister.getPinCode());
            pstmt.setString(8,dtoRegister.getPanNumber());
            pstmt.setString(9,dtoRegister.getEstYear());
            pstmt.setString(10,dtoRegister.getRadioopt());
            pstmt.setString(11,dtoRegister.getRadioopt1());
            pstmt.setString(12,dtoRegister.getFile1());
            pstmt.setString(13,dtoRegister.getEmail());
            pstmt.setString(14,dtoRegister.getPassword());
            pstmt.setString(15,dtoRegister.getCheck());
            pstmt.setString(16,"user");
            int r = pstmt.executeUpdate();
            if (r == 1) {
                flag = true;
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return flag;
    }
        public boolean doTenderForm(DTOTenderForm dtoTenderForm) {
        System.out.println(dtoTenderForm);
        boolean flag = false;
        try {
            String qry = "insert into tenderform values(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(qry);
            pstmt.setString(1, dtoTenderForm.getTenderId());
            pstmt.setString(2, dtoTenderForm.getCompanyName());
            pstmt.setString(3, dtoTenderForm.getCompanyRegisterNumber());
            pstmt.setString(4, dtoTenderForm.getLocation());
            pstmt.setInt(5, dtoTenderForm.getPincode());
            pstmt.setString(6, dtoTenderForm.getPanNumber());
            pstmt.setInt(7, dtoTenderForm.getExperience());
            pstmt.setDouble(8, dtoTenderForm.getQuoteAmount());
            pstmt.setString(9,"no");
            pstmt.setTimestamp(10,new Timestamp(System.currentTimeMillis()));
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

    public LoginBean loginCheck(LoginBean loginbean) {
        boolean flag = false;
        LoginBean loginBean=new LoginBean();
        try {
            String qry = "select * from register where email=? and password=?";
            PreparedStatement pstmt = con.prepareStatement(qry);
            pstmt.setString(1, loginbean.getEmail());
            pstmt.setString(2, loginbean.getPassword());
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String desig=rs.getString("Desig");
                loginBean.setDesig(desig);
            }
        } catch (SQLException se) {
            se.printStackTrace();
        }
        return loginBean;
    }
   
    public ResultSet getTendersData(){
        ResultSet rs =null;
        try {
               PreparedStatement pstmt=con.prepareStatement("select * from tenderform where clear='no'");        
               rs=pstmt.executeQuery();
        } catch (Exception e) {
            e.getCause();
        }
        return rs;
    }
    
    public int ConformedTenders(String companyRegisterNumber,String pancard,BigDecimal quoteAmount,Timestamp AcceptedTime,String tenderId){
        int i=0;
        try {
            PreparedStatement pstmt=con.prepareStatement("insert into AcceptedTenders values(?,?,?,?,?,?)");
            pstmt.setInt(1,0);
            pstmt.setString(2,companyRegisterNumber);
            pstmt.setString(3,pancard);
            pstmt.setBigDecimal(4,quoteAmount);
            pstmt.setTimestamp(5,AcceptedTime);
            pstmt.setString(6,tenderId);
            i=pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    return i;
    }   
   public int tenderAnnounce(String tenderId,String startDate,String endDate,String fileName,String department){
        int i=0;
        try {
            PreparedStatement pstmt=con.prepareStatement("insert into tenderannouncement values(?,?,?,?,?,?)");
            pstmt.setInt(1,0);
            pstmt.setString(2,tenderId);
            pstmt.setString(3,startDate);
            pstmt.setString(4,endDate);
            pstmt.setString(5,fileName);
            pstmt.setString(6,department);
            i=pstmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    return i;
    }    
   
   public ResultSet getPublishedData(){
        ResultSet rs=null;
        try {
               PreparedStatement pstmt=con.prepareStatement("select * from tenderannouncement");        
               rs=pstmt.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("******* publish tender details" +rs);
        return rs;
        
    }
   
     public ResultSet getTenderIdFromAcceptedTenders(){
        ResultSet rs =null;
        try {
               PreparedStatement pstmt=con.prepareStatement("select * from acceptedtenders");        
               rs=pstmt.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
           
        }
        System.out.println("*******" +rs);
        return rs;
        
    }
    
      public ResultSet checkTenderIdExistancy(String tenderId){
        ResultSet rs =null;
        try {
               PreparedStatement pstmt=con.prepareStatement("select * from tenderannouncement where tenderId='"+tenderId+"'");        
               rs=pstmt.executeQuery();
               
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }
    
     public ResultSet getConformTenders(String tenderId){
        ResultSet rs =null;
        String qry="select * from acceptedtenders where tenderId='"+tenderId+"'";
        try {
               PreparedStatement pstmt=con.prepareStatement(qry);        
               rs=pstmt.executeQuery();
               
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.println("++++++++++++++" +qry);
        return rs;
    } 
     
    public ResultSet getConformAllTenders(){
        ResultSet rs =null;
        try {
               PreparedStatement pstmt=con.prepareStatement("select * from acceptedtenders");        
               rs=pstmt.executeQuery();
               
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }  
      
   public int updateRecords(String tenderId){
       int i=0;
       try{
           PreparedStatement pstmt=con.prepareStatement("update tenderform set clear='yes' where tenderId='"+tenderId+"'");
           i=pstmt.executeUpdate();
       }catch(Exception e){
           e.printStackTrace();
       }
  return i;
}
   
    public int tenderCount(String tenderId){
                int i=0;
                ResultSet rs=null;
                try {
                    PreparedStatement pstmt=con.prepareStatement("select * from tenderform where TenderId=?");
                    pstmt.setString(1,tenderId);
                    rs=pstmt.executeQuery();
                    while(rs.next()) {
                        i=i+1;
                    }
        } catch (Exception e) {
            e.printStackTrace();
        }
       System.out.println("tenders count ****************************"+i);         
    return i;
    }
        
    public ArrayList<String> getEmails(){
      
       ArrayList<String> al=new ArrayList<String>();
       ResultSet rs=null; 
       try{
       PreparedStatement pstmt=con.prepareStatement("select email from register where Desig=?");
       pstmt.setString(1,"user");
        rs=pstmt.executeQuery();
        while (rs.next()) {
          String email = rs.getString(1);
          al.add(email);
        }
       }catch(Exception e){
           e.printStackTrace();
       }       
        return al;
    }
    
    public ArrayList<String> getEmails(String registerId){
      
       ArrayList<String> al=new ArrayList<String>();
       ResultSet rs=null; 
       try{
       PreparedStatement pstmt=con.prepareStatement("select * from register where registerId=?");
       pstmt.setString(1,registerId);
        rs=pstmt.executeQuery();
        while (rs.next()) {
          String email = rs.getString("email");
          al.add(email);
        }
       }catch(Exception e){
           e.printStackTrace();
       }       
        return al;
    }
        
    public boolean getSuccessStories(DTOShareInfo dtoShareInfo){
          boolean flag=false; 
          dtoShareInfo.toString();
        try {
            String qry="insert into Info values(?,?,?)";
            PreparedStatement pstmt=con.prepareStatement(qry);
            pstmt.setInt(1,0);
            pstmt.setString(2,dtoShareInfo.getCompanyRegisterNumber());
            pstmt.setString(3,dtoShareInfo.getStory());
            int i=pstmt.executeUpdate();
            if(i>0)
            {
                flag=true;
            }
            } catch (Exception e) {
            e.printStackTrace();
        }
    return flag;
    }
    
    public ResultSet getAllSuccessStories()
    {
        ResultSet rs=null;
        try {
            PreparedStatement pstmt=con.prepareStatement("select * from Info");
            rs=pstmt.executeQuery();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rs;
    }
    public ArrayList<String> getFileFromRegister()
    {        
        ArrayList<String> al=new ArrayList<String>();
        ResultSet ra=null;
        try {
           PreparedStatement pstmt=con.prepareStatement("select * from register where Desig!='admin' and file1!='noImage'" );
           ra=pstmt.executeQuery();
           while(ra.next()){
               String fileName=ra.getString("file1");
               al.add(fileName);
               out.println(fileName);
               System.out.println("**************** first Time *******************");
           }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return al;
    }
    
     public ResultSet getDetails(String email)
     {
         ResultSet rs=null;
         try {
             String qry="select * from register where email='"+email+"'";
             PreparedStatement pstmt=con.prepareStatement(qry);
             rs=pstmt.executeQuery();
         } catch (Exception e) {
             e.printStackTrace();
         }
         return rs;
     }
    public  String getFileNameUsingregisterId(String registerId){
         
     String fileName="NO-Certificate-Available";
         ResultSet rs=null;
         String query="select * from register where registerId='"+registerId+"'";
         
         try {
             PreparedStatement pstmt=con.prepareStatement(query);
             rs=pstmt.executeQuery();
             
             if(rs.next()){
                 fileName=rs.getString(12);
             }
             
         } catch (Exception e) {
         }        
         System.out.println("File Name......."+query);
         System.out.println("File Name......."+fileName);
     return fileName;
     }
}