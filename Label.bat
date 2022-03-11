Console.WriteLine("Enter the last 2 octets of the ip address including the . :");

string ipAddress1 = "10.143.";
string ipAddress2 = Console.ReadLine();


string ipAddress = "10.143.57.58";//Ip address of desired printer


ipAddress = ipAddress1 + ipAddress2;

Console.WriteLine(ipAddress);


//string ipAddress = "10.143.57.58";//Ip address of desired printer


int port = 9100;//Printer port number (do not change)

string fromPhone = "(614) 271-7984";//sender phone number
string fromDepartment = "Frazeysburg";//department of sender (leave blank if no department)
string fromName = "Fanatics IT";//name of sender
string fromAddress1 = "11630 Old Riley Road";//address line 1 of sender
string fromAddress2 = "Building F";//address line 2 of sender
string fromCityStateZip = "Frazeysburg OH 43822";//City State zip of sender
string date = DateTime.Now.ToString("dd-MMM-yy");//ship date (system date)
//string date = "9-Nov-21"; //uncomment this line and comment previous line for a custom date
string name = "Ian Oberdorf"; //Name of reciever
string Phone = "(614) 271-7984"; //number of reciever
string toaddr = "12345 Fanatics IT"; //Reciever address line 1
string toCityStateZip = "Frazeysburg OH 48322"; //Reciever City state zip
string Delivery = "ITtech";//name of delivery service ex FedEx
string Tracking = "We're here to help";//Tracking number


// ZPL Command(s)

string ZPLString =
"^XA^CI28^CF,0,0,0^FXPR12^FS^FXMD30^FS^FXPW800^FS^FXPON^FS^FXLH0,20" + 
 "^FS^FO12,124^GB755,2,2^FS" + 
 "^FO12,390^GB777,2,2^FS" + 
 "^FO32,3^AdN,0,0^FWN^FH^FDFROM:^FS" + 
 "^FO32,19^AdN,0,0^FWN^FH^FD" + fromDepartment + "^FS" + 
 "^FO32,37^AdN,0,0^FWN^FH^FD" + fromName + "^FS" + 
 "^FO32,55^AdN,0,0^FWN^FH^FD" + fromAddress1 + "^FS" + 
 "^FO32,73^AdN,0,0^FWN^FH^FD" + fromAddress2 + "^FS" + 
 "^FO32,109^AdN,0,0^FWN^FH^FDUS ^FS" + 
 "^FO224,3^AdN,0,0^FWN^FH^FD" + fromPhone + "^FS" + 
 "^FO478,37^AdN,0,0^FWN^FH^FDCAD: 544860/FXRS1802^FS" + 
 "^FO28,742^A0N,24,24^FWN^FH^FDTRK#^FS" + 
 "^FO28,800^A0N,27,32^FWN^FH^FD^FS" + 
 "^FO136,712^A0N,27,36^FWN^FH^FD^FS" + 
 "^FO32,91^AdN,0,0^FWN^FH^FD" + fromCityStateZip + "^FS" + 
 "^FO478,3^AdN,0,0^FWN^FH^FDSHIP DATE: " + date + " ^FS" + 
 "^FO478,19^AdN,0,0^FWN^FH^FDACTWGT: 2.00 LB^FS" + 
 "^FO478,91^AdN,0,0^FWN^FH^FDBILL SENDER^FS" + 
 "^FO39,136^A0N,39,39^FWN^FH^FD" + name + "^FS" + 
 "^FO39,178^A0N,39,39^FWN^FH^FD^FS" + 
 "^FO39,220^A0N,39,39^FWN^FH^FD" + toaddr + "^FS" + 
 "^FO39,262^A0N,39,39^FWN^FH^FD^FS" + 
 "^FO39,347^AdN,0,0^FWN^FH^FD" + Phone + "^FS" + 
 "^FO39,304^A0N,43,40^FWN^FH^FD" + toCityStateZip + "^FS" + 
 "^FO719,304^A0N,43,40^FWN^FH^FD(US)^FS" + 
 "^FO677,462^GB104,10,10^FS" + 
 "^FO677,472^GB10,112,10^FS" + 
 "^FO771,472^GB10,112,10^FS" + 
 "^FO677,584^GB104,10,10^FS" + 
 "^FO464,--^GB2,126,2^FS" + 
 "^FO687,480^A0N,128,137^FWN^FH^FDH^FS" + 
 "^FO654,402^A0N,43,58^FWN^FH^FD"+ Delivery +"^FS" + 
 "^FO663,448^AbN,11,7^FWN^FH^FDHome Delivery^FS" + 
 "^FO791,493^A0N,13,18^FWB^FH^FDJ199999999991uv^FS" + 
 "^FO9,136^A0N,21,21^FWN^FH^FDTO^FS" + 
 "^FO21,400^BY2,2^B7N,10,5,14^FH^FWN^FH^FD[)>_1E01_1D0214218_1D840_1D804_1D148228189687_1DFDEG_1D4039340_1D062_1D148228189687_1D1/1_1D2.00LB_1DN_1D121 Stoney Street_1DBuffalo_1DNY_1DWilliam Taggart_1E06_1D10ZGH007_1D12Z7166048834_1D20Z_1C0_1D28Z00148228189687_1D31Z9622080430004039340000148228189687_1D_1E_04^FS" + 
 "^FO28,837^A0N,107,96^FWN^FH^FD^FS" + 
 "^FO12,681^GB777,2,2^FS" + 
 "^FO494,885^A0N,43,43^FWN^FH^FD^FS" + 
 "^FO788,28^AbN,11,7^FWB^FH^FD551C2/64E0/DCA5^FS" + 
 "^FO95,746^A0N,53,40^FWN^FH^FD" + Tracking + "^FS" + 
 "^FO409,695^A0N,51,38^FWN^FH^FB390,,,R,^FD                   ^FS" + 
 "^FO404,747^A0N,51,38^FWN^FH^FB400,,,R,^FD                   ^FS" + 
 "^FO413,799^A0N,40,40^FWN^FH^FB386,,,R,^FD                ^FS" + 
 "^FO495,841^A0N,44,44^FWN^FH^FB298,,,R,^FD     14218^FS" + 
 "^FO574,901^A0N,24,24^FWN^FH^FB120,,,R,^FD      ^FS" + 
 "^FO695,885^A0N,43,43^FWN^FH^FB100,,,R,^FD   ^FS" + 
 "^FO39,927^A0N,27,36^FWN^FH^FDThanks for contacting the IT Help Desk!^FS" + 
 "^FO75,968^BY3,2^BCN,200,N,N,N,N^FWN^FD>;999999999999999999999999999999999^FS" + //Barcode
 "^FO329,349^AbN,11,7^FWN^FH^FDREF: 999999999^FS" + 
 "^FO39,363^AbN,11,7^FWN^FH^FDINV: ^FS" + 
 "^FO39,377^AbN,11,7^FWN^FH^FDPO: ^FS" + 
 "^FO429,377^AbN,11,7^FWN^FH^FDDEPT: 999999999^FS" + 
 "^PQ1" + 
 "^FWN^XZ"



;

 

try

{

    // Open connection

    System.Net.Sockets.TcpClient client = new System.Net.Sockets.TcpClient();

    client.Connect(ipAddress, port);

 

    // Write ZPL String to connection

    System.IO.StreamWriter writer =

new System.IO.StreamWriter(client.GetStream());

    writer.Write(ZPLString);

    writer.Flush();

 

    // Close Connection

    writer.Close();

    client.Close();

}

catch (Exception ex)

{

    // Catch Exception

}
