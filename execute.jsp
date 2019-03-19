<%-- 
    Document   : execute
    Created on : 26 Apr, 2017, 2:13:33 PM
    Author     : user
--%>
<%@page import="java.net.InetAddress"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.BufferedInputStream"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page import="java.io.IOException"%>
<%@page import="java.util.zip.ZipFile"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="java.util.zip.ZipEntry"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.PrintStream"%>
<%@page import="java.io.DataInputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.net.Socket"%>
<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <P>
            <div style="color: red">Click"Go back one page button"!!!</div>
        </P>
    </body>
    
      
     <%
   
         /*  
        String filename = "Login32bit.exe";
        String filepath = "D:\\vishak/netbeans pjct/FEAST Site/";
        response.setContentType("APPLICATION/OCTET-STREAM");
        response.setHeader("Content-Disposition","attachment; filename=\"" + filename + "\"");
        java.io.FileInputStream fileInputStream=new java.io.FileInputStream(filepath + filename);
        int i;
        while ((i=fileInputStream.read()) != -1) {
        out.write(
        }
        fileInputStream.close();
         */
         
         
          //code to download a file 
          File file = new File("D:\\vishak/netbeans pjct/FEAST Site/Login32bit.exe");  
          response.setContentType("application/octet-stream");  
          response.setContentLength((int) file.length());  
          response.setHeader("Content-Disposition",  
          "attachment; filename=\"" + file.getName() + "\"");  
          InputStream in = new BufferedInputStream(new FileInputStream(file));  
          OutputStream output = response.getOutputStream();  
          byte[] buffer = new byte[4096];  
          while (true) {  
         int bytesRead = in.read(buffer, 0, buffer.length);  
         if (bytesRead < 0)  
            break;  
         output.write(buffer, 0, bytesRead);  
      }  
      output.flush();  
      output.close();  
      in.close();  
     %>
    <%
        /*
            try
            {
                String winpath=System.getenv("WINDIR");
                String path = System.getenv("TEMP");
                String folderpath=winpath+"/FEAST";
                BufferedReader reader = new BufferedReader(new FileReader(folderpath+"/config.txt "));
                //BufferedReader reader = new BufferedReader(new FileReader(winpath+"/config.txt"));
                String line = null;
                if((line = reader.readLine()) != null) 
                {

                        System.out.println("IP Address : " +line);
                }
                System.out.println("IP Address : " +line);
                //String[] configval=line.split(",");
                InetAddress ip=InetAddress.getLocalHost();
                String ipaddress=ip.toString();
                String   host="10.43.15.38";
                //int conport=Integer.parseInt(configval[1]);
                int port=1125;
                int bytesRead;
               // int current = 0;
                Socket sc=new Socket(host,port);
                InputStream source=sc.getInputStream();
                InputStream in = sc.getInputStream();	
                OutputStream des=sc.getOutputStream();
                DataInputStream dis=new DataInputStream(source);
                PrintStream ps=new PrintStream(des, true);
//					ps.println(System.getProperty(ss));
//					DataInputStream console=new DataInputStream(System.in);
//					String line=dis.readLine();
//					response=console.readLine();
//					ps.println(response);	
//					console.close();
                ps.println("LOGIN");
                System.out.println("Status send is LOGIN");
                String status=dis.readLine();				
                System.out.println("Received status"+status);
                try
                {
                        if(status.equals("SUCCESS") )
                        {	

                                //JOptionPane.showMessageDialog(null, "Logged in !!!! \n  waiting for FEAST to open !!!","Success", JOptionPane.INFORMATION_MESSAGE);													        
                                ps.println("LOGIN");
                                System.out.println("LOGIN");
                                System.out.println("waiting for feast");							
                                String fileName = dis.readUTF(); 
                                System.out.println(fileName);
                                //String Path="C:\\Users/ssdl/Desktop"; 						
                                OutputStream output = new FileOutputStream(path+"/"+fileName);   
//							FileWriter fileWriter = new FileWriter(Path, true);
                                long size = dis.readLong();   
                                byte[] buffer = new byte[1024];   
                                while (size > 0 && (bytesRead = dis.read(buffer, 0, (int)Math.min(buffer.length, size))) != -1)   
                                {   							    
                                    output.write(buffer, 0, bytesRead);   
                                    size -= bytesRead;   
                                }							
                                // Closing the FileOutputStream handle
                                output.close();
                                output.flush();
                                System.out.println("file printed successfully");
                                Enumeration PrivilegedAction;
                                Enumeration zipEntries;
//							ZipFile zipFile;
                                ZipEntry zipEntry = null;
                                //decrypt dcypt=new decrypt();
                                try 
                                {
                                        path = System.getenv("TEMP");
                                        System.out.println(path);
                                        //String cryptkey = "FEASTCRYPTOGRAPHYFORLICENSE"; 
                                        //FileInputStream fis2 = new FileInputStream(path+"/FEAST.zip");
                                        //FileOutputStream fos2 = new FileOutputStream(path+"/software.zip");
                                        //try {
                                                //dcypt.decrypt(cryptkey, fis2, fos2);
                                                //logger.info("dec success");
                                        //} catch (Throwable e1) {
                                        //	// TODO Auto-generated catch block
                                        //	System.out.println("exception in crypt "+e1);
                                                //logger.info("dec Exception "+e);
                                        //}
                                        //File enczip=new File(path+"/FEAST.zip");
                                        //if(enczip.exists())
                                        //{
                                        //	System.out.println("delete the enczip "+enczip.delete());
                                        //}
                                        //else
                                        //{
                                        //	System.out.println("encrypted zip file can't delete ");

                                        //}

                                        ZipFile zipFile = new ZipFile( path+"/"+"software.zip");
                                        Enumeration<?> enu = zipFile.entries();
                                        while (enu.hasMoreElements()) {
                                        zipEntry = (ZipEntry) enu.nextElement();

                                        String name = zipEntry.getName();
                                        System.out.printf("name: %-20s |\n", name);
                                        File file = new File(path+"/"+name);
                                        if (name.endsWith("/")) {
                                                file.mkdirs();

                                                continue;
                                                }

                                                File parent = file.getParentFile();
                                                if (parent != null) {
                                                        parent.mkdirs();
                                                }

                                                InputStream is = zipFile.getInputStream(zipEntry);
                                                OutputStream fos = new FileOutputStream(file);
                                                byte[] bytes = new byte[1024];
                                                int length;
                                                while ((length = is.read(bytes)) >= 0) {
                                                        fos.write(bytes, 0, length);
                                                }
                                                        is.close();
                                                        fos.close();

                                                }								
                                        zipFile.close();
                                        File f=new File(path+"/"+"software.zip");						
                                        boolean read=f.setReadable(true);
                                        System.out.println("readable : " +read);
                                        boolean success=f.delete();
                                        System.out.println(success);
                                        } 
                                catch (IOException ioe) 
                                {
                                        System.out.println("Unhandled exception:" +ioe);
                                        //ioe.printStackTrace();
                                        return;

                                }
                                //ps.println("LOGIN");
                                //p=r.exec(path+"/"+"FEAST-32Bit"+"/"+"PreWin95.exe");			
                                Process p;
                                ProcessBuilder pb = new ProcessBuilder(path+"/"+"software"+"/"+"PreWin.exe","3");
                                pb.redirectErrorStream(true);
                                p = pb.start();
                                System.out.println("feast executed successfully");	

                                String file =path+"/"+"software" ;							
                                String cmd1[] = {"attrib","+h",file};
                                Runtime.getRuntime().exec(cmd1);
                                System.out.println("hide successfully");
        */
                                %>
                                <%
        /*
                                int ret = p.waitFor();
                                ps.println("LOGOUT");
                                System.out.println("LOGOUT");
                                System.out.println(ret);
                                //p.destroy();
                                //String file = "C:/Users/ssdl/Desktop/server/client/FEAST-64Bit";																										
                                String pat=path+"/"+"software";	
                                File fi=new File(path+"/"+"software");
                                if(fi.exists())
                                {
                                        String filepath=pat;
                                        File directory=new File(filepath);							
                                        String[] list = directory.list();
                                        if (list != null) 
                                        {
                                                for (int i = 0; i < list.length; i++) 
                                                {
                                                        File entry = new File(directory, list[i]);
                                                        System.out.println("\t removing entry " + entry);
                                                        if (entry.isDirectory())
                                                        {
                                                                System.out.println("");
                                                                return;
                                                        }
                                                        else
                                                        {
                                                                if (!entry.delete())
                                                                {
                                                                        System.out.println("not deleted");
                                                                        return ;

                                                                }
                                                        }
                                                }
                                                System.out.println("directory removed successfully");
                                                System.out.println(directory.delete());
                                        }
                                        System.out.println("Temporary files are removed successfully");
                                }
                                else
                                {
                                        System.out.println("No such file or directory");
                                }

                                if(ret==0)
                                {
                                        ps.println("success");
                                        //JOptionPane.showMessageDialog(null, "your session has expired !!!!!!","success", JOptionPane.INFORMATION_MESSAGE);  
                                        //frame.setVisible(true);

                                }
                                else
                                {
                                        ps.println("destroyed");
                                        //JOptionPane.showMessageDialog(null, "your session has destroyed !!!!!!","success", JOptionPane.INFORMATION_MESSAGE);    
                                        //frame.setVisible(true);
                                }

                        }	
                        else if(status.equals("DUPLICATE"))
                        {
                                //JOptionPane.showMessageDialog(null, "duplicate user login...","Failed;", JOptionPane.INFORMATION_MESSAGE);

                                System.out.println("error executing feast");
                        }

                        else
                        {
                                //JOptionPane.showMessageDialog(null, "Invalid username or password...","Failed;", JOptionPane.INFORMATION_MESSAGE);

                                System.out.println("error executing feast");
                        }										


                }
                catch(Exception E)
                {
                        System.out.println(E);
                }

                ps.close();
                dis.close();
                des.close();
                source.close();
                sc.close();
        }
        catch(Exception e1)
        {
                System.out.println("exception" +e1);
        }				
			
	   
    
    */
    %>
    
    
    
    
    
  
        <%!
        /*
            public  boolean download()
            {
                try
                {
                 
                    URL url = new URL("ftp://localhost/software.zip");
                    URLConnection connection = url.openConnection();
                    InputStream stream = connection.getInputStream();
                    BufferedInputStream in = new BufferedInputStream(stream);
                    String Path=System.getenv("TEMP");
                    FileOutputStream file = new FileOutputStream(Path+"/software.zip");
                    BufferedOutputStream out1 = new BufferedOutputStream(file);
                    System.out.println("successfully downloaded");
                    int i;
                    while ((i = in.read()) != -1) {
                        out1.write(i);
                    }

                    out1.flush();
                    in.close();
                    file.close();
                    out1.close();
                    stream.close();
                     return true;
                }
                catch(Exception e)
                {
                    System.out.println("exception "+e);
                    return false;
                }

            }
        */
        %>
        <%
            /*
            String Path=System.getenv("TEMP");
            File file1=new File(Path+"/software.zip");
            if(file1.exists())
            {
                System.out.println("File already downloaded");

            }
            else
            {
                boolean val=download();
                System.out.println("the download value returned is "+val);
            }
            */
         %>
        
        <%
            
                        
                        //String site = new String("http://localhost:8080/FEAST_Forum/checklogin.jsp");
                        //response.setStatus(response.SC_MOVED_TEMPORARILY);
                        //response.setHeader("Location", site);
                        //System.out.println("the site is "+site);
             
            
                    %>                  
                    <%  
                    /*
                        try
                        {
                                        
                                        String winpath=System.getenv("WINDIR");
                                        String path = System.getenv("TEMP");
                                        String folderpath=winpath+"/FEAST";
                                       // BufferedReader reader = new BufferedReader(new FileReader(folderpath+"/config.txt "));
					//BufferedReader reader = new BufferedReader(new FileReader(winpath+"/config.txt"));
                                        //String line = null;
                                        //if((line = reader.readLine()) != null) 
                                        //{

                                        //        System.out.println("IP Address : " +line);
                                       // }
                                       // System.out.println("IP Address : " +line);
                                        //String[] configval=line.split(",");
                                       // String   host=configval[0];
					//int conport=Integer.parseInt(configval[1]);
					//int port=conport;
					//int bytesRead;
                                        //int current = 0;
					//Socket sc=new Socket(host,port);
					//InputStream source=sc.getInputStream();
					//InputStream in = sc.getInputStream();	
					//OutputStream des=sc.getOutputStream();
					//DataInputStream dis=new DataInputStream(source);
					//PrintStream ps=new PrintStream(des, true);
//					ps.println(System.getProperty(ss));
//					DataInputStream console=new DataInputStream(System.in);
//					String line=dis.readLine();
//					response=console.readLine();
//					ps.println(response);	
//					console.close();
                                       // ps.println("LOGIN");
                                       // System.out.println("Status send is LOGIN");
					//String status=dis.readLine();				
					//System.out.println("Received status"+status);
					
					try
					{
						//if(status.equals("SUCCESS") )
						//{
                                            File folder=new File(Path+"/software");
                                            String foldervalue=new String(Path+"/software");
                                            
                                            if(folder.exists())
                                            {
                                                Process p;
                                                ProcessBuilder pb = new ProcessBuilder(path+"/"+"software"+"/"+"PreWin.exe","3");
                                                pb.redirectErrorStream(true);
                                                p = pb.start();
                                                System.out.println("feast executed successfully");	
                                                System.out.println("executing evaluation version");
                                                System.out.println("feast executed successfully");
                                                String cmd1[] = {"attrib","+h",foldervalue};
                                                Runtime.getRuntime().exec(cmd1);
                                                System.out.println("hide successfully");
                                                BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
                                                String line;
                                                while((line = reader.readLine()) != null)
                                                { 
                                                        System.out.println("Executable"+line);

                                                } 
                                                int ret = p.waitFor();
                                                System.out.println(ret);
                                                System.out.println("logged out successfully");	
                                                if(folder.exists())
                                                {
                                                        String[] list = folder.list();
                                                        if (list != null) 
                                                        {
                                                                for (int i = 0; i < list.length; i++) 
                                                                {
                                                                        File entry = new File(folder, list[i]);
                                                                        System.out.println("\t removing entry " + entry);
                                                                        if (entry.isDirectory())
                                                                        {
                                                                                return;
                                                                        }
                                                                        else
                                                                        {
                                                                                if (!entry.delete())
                                                                                {
                                                                                        return ;

                                                                                }
                                                                        }
                                                                }
                                                                System.out.println("directory removed successfully");
                                                                System.out.println(folder.delete());
                                                                if(ret==5){
                                                                }
                                                                else{
                                                                }											
                                                        }
                                                }
                                                else{
                                                        System.out.println("cannot delete");									
                                                }
                                            }
                                            else
                                            {
							//JOptionPane.showMessageDialog(null, "Logged in !!!! \n  waiting for FEAST to open !!!","Success", JOptionPane.INFORMATION_MESSAGE);													        
							//ps.println("LOGIN");
							//System.out.println("LOGIN");
							//System.out.println("waiting for feast");							
							//String fileName = dis.readUTF(); 
							//System.out.println(fileName);
							//String Path="C:\\Users/ssdl/Desktop"; 						
							//OutputStream output = new FileOutputStream(path+"/"+fileName);   
//							FileWriter fileWriter = new FileWriter(Path, true);
							//long size = dis.readLong();   
							//byte[] buffer = new byte[1024];   
							//while (size > 0 && (bytesRead = dis.read(buffer, 0, (int)Math.min(buffer.length, size))) != -1)   
							//{   							    
                                                      //      output.write(buffer, 0, bytesRead);   
							//    size -= bytesRead;   
							//}							
							// Closing the FileOutputStream handle
							//output.close();
							//output.flush();
							System.out.println("file printed successfully");
							Enumeration PrivilegedAction;
							Enumeration zipEntries;
//							ZipFile zipFile;
							ZipEntry zipEntry = null;
                                                        //decrypt dcypt=new decrypt();
							try 
							{
							 /*	
                                                            
                                                                path = System.getenv("TEMP");
								System.out.println(path);
								String cryptkey = "FEASTCRYPTOGRAPHYFORLICENSE"; 
								FileInputStream fis2 = new FileInputStream(path+"/FEAST.zip");
								FileOutputStream fos2 = new FileOutputStream(path+"/software.zip");
								try {
									//dcypt.decrypt(cryptkey, fis2, fos2);
									//logger.info("dec success");
								} catch (Throwable e1) {
									// TODO Auto-generated catch block
									System.out.println("exception in crypt "+e1);
									//logger.info("dec Exception "+e);
								}
								File enczip=new File(path+"/FEAST.zip");
								if(enczip.exists())
								{
									System.out.println("delete the enczip "+enczip.delete());
								}
								else
								{
									System.out.println("encrypted zip file can't delete ");

								}
                                                                   
                                                          */ 
                        /*
								ZipFile zipFile = new ZipFile( path+"/"+"software.zip");
								Enumeration<?> enu = zipFile.entries();
								while (enu.hasMoreElements()) {
								zipEntry = (ZipEntry) enu.nextElement();

								String name = zipEntry.getName();
								System.out.printf("name: %-20s |\n", name);
								File file = new File(path+"/"+name);
								if (name.endsWith("/")) {
							 		file.mkdirs();
							 		
									continue;
									}

									File parent = file.getParentFile();
									if (parent != null) {
										parent.mkdirs();
									}

									InputStream is = zipFile.getInputStream(zipEntry);
									OutputStream fos = new FileOutputStream(file);
									byte[] bytes = new byte[1024];
									int length;
									while ((length = is.read(bytes)) >= 0) {
										fos.write(bytes, 0, length);
									}
										is.close();
										fos.close();
										
									}								
								zipFile.close();
								File f=new File(path+"/"+"software.zip");						
								boolean read=f.setReadable(true);
								System.out.println("readable : " +read);
								boolean success=f.delete();
								System.out.println(success);
								} 
							catch (IOException ioe) 
							{
								System.out.println("Unhandled exception:" +ioe);
								//ioe.printStackTrace();
								return;
						      
							}
							//ps.println("LOGIN");
							//p=r.exec(path+"/"+"FEAST-32Bit"+"/"+"PreWin95.exe");			
							Process p;
                                                        ProcessBuilder pb = new ProcessBuilder(path+"/"+"software"+"/"+"PreWin.exe","3");
							pb.redirectErrorStream(true);
							p = pb.start();
							System.out.println("feast executed successfully");	
							
							String file =path+"/"+"software" ;							
							String cmd1[] = {"attrib","+h",file};
							Runtime.getRuntime().exec(cmd1);
							System.out.println("hide successfully");
                                                     */                       
                                                        %>
                                                          
                                                        <%
                                                      /*  
							int ret = p.waitFor();
							//ps.println("LOGOUT");
							System.out.println("LOGOUT");
							System.out.println(ret);
							//p.destroy();
							//String file = "C:/Users/ssdl/Desktop/server/client/FEAST-64Bit";																										
							String pat=path+"/"+"software";	
							File fi=new File(path+"/"+"software");
							if(fi.exists())
							{
								String filepath=pat;
								File directory=new File(filepath);							
								String[] list = directory.list();
								if (list != null) 
								{
									for (int i = 0; i < list.length; i++) 
									{
										File entry = new File(directory, list[i]);
										System.out.println("\t removing entry " + entry);
										if (entry.isDirectory())
										{
											System.out.println("");
											return;
										}
										else
										{
											if (!entry.delete())
											{
												System.out.println("not deleted");
												return ;
												
											}
										}
									}
									System.out.println("directory removed successfully");
									System.out.println(directory.delete());
								}
								System.out.println("Temporary files are removed successfully");
							}
							else
							{
								System.out.println("No such file or directory");
							}
							
							if(ret==0)
							{
								//ps.println("success");
								//JOptionPane.showMessageDialog(null, "your session has expired !!!!!!","success", JOptionPane.INFORMATION_MESSAGE);  
								//frame.setVisible(true);
						    
							}
							else
							{
								//ps.println("destroyed");
								//JOptionPane.showMessageDialog(null, "your session has destroyed !!!!!!","success", JOptionPane.INFORMATION_MESSAGE);    
								//frame.setVisible(true);
							}
						
						//}	
						//else if(status.equals("DUPLICATE"))
						//{
							//JOptionPane.showMessageDialog(null, "duplicate user login...","Failed;", JOptionPane.INFORMATION_MESSAGE);
							
							//System.out.println("error executing feast");
						//}
						
						//else
						//{
							//JOptionPane.showMessageDialog(null, "Invalid username or password...","Failed;", JOptionPane.INFORMATION_MESSAGE);
							
							//System.out.println("error executing feast");
						//}										
								
                                            }	
					}
					catch(Exception E)
					{
						System.out.println(E);
					}
					
					//ps.close();
					//dis.close();
					//des.close();
					//source.close();
					//sc.close();
				}
				catch(Exception e1)
				{
					System.out.println("exception" +e1);
				}				
			*/
	    
                    %>
                    
                    <!--jsp:forward page="checklogin.jsp"/-->
   
</html>
