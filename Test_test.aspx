<%@ Page Language="C#" Debug="true" %>

<!DOCTYPE html>
<%@ Import namespace="System"%>
<%@ Import namespace="System.Collections.Generic" %>
<%@ Import namespace="System.Linq" %>
<%@ Import namespace="System.Web" %>
<%@ Import namespace="System.Web.UI"%>
<%@ Import namespace="System.Web.UI.WebControls"%>
<%@ Import namespace="System.Text.RegularExpressions"%>
<%@ Import namespace="System.Net"%>
<%@ Import namespace="System.Net.Mail"%>
<%@ Import namespace="System.IO"%>
<%@ Import namespace="System.Text"%>
<%@ Import namespace="System.Xml"%>
<%@ Import namespace="Newtonsoft.Json"%>
<%@ Import namespace="Newtonsoft.Json.Linq"%>
<%@ Import namespace="System.Web.Services" %>
<%@ Import namespace="System.Configuration" %>
<%@ Import namespace="System.Data.SqlClient" %>
<%@ Import namespace="BusinessLayer.BusinessEntities.Admin" %>
<%@ Import namespace="BusinessLayer.BusinessEntities.Employee" %>
<%@ Import namespace="BusinessLayer.BusinessEntities.Transporter" %>
<%@ Import namespace="BusinessLayer.Common" %>

<script runat="server" language="C#">
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <%
            try
            {
                NewPermit np = new NewPermit();
                WeightTicketAxel wta = new WeightTicketAxel();
                WeightTicketGVM wtg = new WeightTicketGVM();
                AddComments adc = new AddComments();
                UserDetails ud = new UserDetails();
                ApplicationStatus aps = new ApplicationStatus();
                Invoice inv = new Invoice();
                PermitDays pd = new PermitDays();
                VehicleRegistration vr = new VehicleRegistration();
                EVRegistration evr = new EVRegistration();
                Surcharge sch = new Surcharge();
                Cargo car = new Cargo();
                BusinessLayer.BusinessEntities.Transporter.Registration rg = new BusinessLayer.BusinessEntities.Transporter.Registration();
                BusinessLayer.BusinessEntities.Transporter.Permit pm = new BusinessLayer.BusinessEntities.Transporter.Permit();
                //BusinessLayer.BusinessEntities.Transporter.Permit inpm = new BusinessLayer.BusinessEntities.Transporter.Permit();
                MIS_OLP olp = new MIS_OLP();
                MIS_OLPC olpc = new MIS_OLPC();
                Payment pay = new Payment();
                DollarConversion dc = new DollarConversion();
                S_SMTP smtp = new S_SMTP();

                // Delete Existing Records

                //olpc.DeleteOLPConditions_PID();
                //olp.DeleteOLP_PID();

                // End of the Delete records code

                // Inserting the Epermit Data to RFB DB
                int count = 0;
                var lstPermits = pm.GetPDetails_RFB();
                if (lstPermits != null)
                {
                    foreach (BusinessLayer.BusinessEntities.Transporter.Permit RFBpermits in lstPermits)
                    {
                        if (!olp.ValidateOLP(RFBpermits.Permit_Application_No))
                        {
                            
                            long pID = 0;
                            var getPID = np.GetTID(RFBpermits.Permit_Application_No);
                            if (getPID != null)
                            {
                                pID = getPID.Application_No;
                            }
                            var vp = np.GePDetails(pID);
                            var details = rg.GetRegDetails(vp.Transporter_ID);
                            string cname = "";
                            string add2 = "";
                            string permitfee = "";
                            string surfee = "";
                            string surtimes = "";
                            string cargoname = "";
                            string vreg = "";
                            string evreg = "";
                            long tfee = 0;
                            long vsurfee = 0;
                            long vdays = 0;
                            long nopolice = 0;
                            long novehicles = 0;
                            if (!string.IsNullOrEmpty(details.Transporter_Name))
                            {
                                cname = details.Transporter_Name;
                            }
                            else
                            {
                                cname = details.Contact_Person;
                            }
                            if (!string.IsNullOrEmpty(details.Address2))
                            {
                                add2 = ", " + details.Address2;
                            }
                            else
                            {

                            }
                            var validD = pd.GetVDays();
                            if (validD != null)
                            {
                                vdays = validD.Valid_Days;
                            }
                            nopolice = vp.No_Polices;
                            novehicles = vp.No_Vehicles;
                            var appno = np.GetAppNo((int)pID);
                            string aNo = appno.Permit_Application_No;

                            var pdetails = pm.GetPDetails(aNo);
                            var gInvoice = inv.GetIDetails(aNo);
                            var gInvoice_approve = inv.GetIDetails_Approve(aNo);
                            var stim = sch.getSurcharge();
                            if (stim != null)
                            {
                                surtimes = stim.S_Surcharge.ToString();
                            }
                            else
                            {
                                surtimes = "4";
                            }

                            var vrReg = vr.GetReg(aNo);
                            if (vrReg != null)
                            {
                                foreach (VehicleRegistration vhr in vrReg)
                                {
                                    if (String.IsNullOrEmpty(vreg))
                                    {
                                        vreg = vhr.Registration_No;
                                    }
                                    else
                                    {
                                        vreg = vreg + ", " + vhr.Registration_No;
                                    }
                                }
                            }
                            evreg = "";
                            var geEVehicles = evr.GetEReg(aNo);
                            if (geEVehicles != null)
                            {
                                foreach (EVRegistration eReg in geEVehicles)
                                {
                                    if (String.IsNullOrEmpty(evreg))
                                    {
                                        evreg = eReg.Registration_No;
                                    }
                                    else
                                    {
                                        evreg = evreg + ", " + eReg.Registration_No;
                                    }
                                }
                            }
                            var getfee = wtg.GetPFee();
                            permitfee = Convert.ToString(getfee.Permit_Fee);
                            var getwno = wtg.GetWeightNo(aNo);
                            long wtno = getwno.Weight_Ticket_SNo;
                            var getsurcharge = wta.GetTotalSurcharge(wtno);
                            //surfee = Convert.ToString(getsurcharge.Axel_GVM_Surcharge);
                            //tfee = getfee.Permit_Fee + getsurcharge.Axel_GVM_Surcharge;
                            surfee = Convert.ToString(pdetails.Surcharge_Fee);
                            tfee = pdetails.Permit_Fee;
                            var alld = wtg.GetDFHS(aNo);
                            var perdays = pd.EditDays(alld.PDays);
                            long pdays = 14;
                            long psurcharge = 4;
                            if (perdays != null)
                            {
                                pdays = perdays.Valid_Days;
                            }
                            var psurfee = sch.EditSurcharge(alld.PSurcharge);
                            if (psurfee != null)
                            {
                                psurcharge = psurfee.S_Surcharge;
                            }
                            var gCargo = car.EditCargo(vp.Cargo_Name);
                            if (gCargo != null)
                            {
                                cargoname = gCargo.Cargo_Name.ToString();
                            }
                            if (cargoname.ToLower() == "others")
                            {
                                cargoname = vp.Cargo_Details;
                            }
                            pm.Permit_Application_No = aNo;
                            var permit_fee = pm.GetPermitFees();
                            long l_fee = 0;
                            long s_fee = 0;
                            long l_s_fee = 0;
                            long tzsfee = 0;
                            var paydetails = pay.GetPaymentAppDetails(aNo);
                            var paydetails_approve = pay.GetPAppDetails_Approve(aNo);
                            if (paydetails_approve != null)
                            {
                                tzsfee = paydetails_approve.Amount;
                            }

                            l_s_fee = l_fee + s_fee;
                            decimal usamount = 0;
                            var pdc = dc.GetLatestConversion();
                            if (pdc != null)
                            {
                                usamount = decimal.Parse(pdc.Spot_Selling) / 100;
                            }
                            var acc = adc.GetFullName_ALC("Forward to ALE", pID);
                            var acc1 = adc.GetFullName_New("Forward to Applicant", pID);
                            if (acc1 == null)
                            {
                                acc1 = adc.GetFullName("DSE", (int)pID);
                            }
                            if (acc1 == null)
                            {
                                acc1 = adc.GetFullName("Acting DSE", (int)pID);
                            }
                            var fname = ud.GetEmpDetails(acc.Emp_Detail_ID);
                            var fname1 = ud.GetEmpDetails(acc1.Emp_Detail_ID);
                            long permitid = 0;
                            //if (!olp.ValidateOLP(aNo))
                            //{
                            olp.SerialNO = pdetails.Permit_No.ToString();
                            olp.MS = cname;
                            olp.IssueDate = pdetails.Permit_Fee_Date;
                            olp.POBOXNO = details.Address1;
                            olp.LetterNO = aNo;
                            olp.LetterOF = vp.Posted_Date;
                            olp.PermitMS = cname;
                            olp.EquipmentFrom = vp.Route_From;
                            olp.EquipmentTO = vp.Route_To;
                            olp.EquipmentVia = vp.Route_Via;
                            olp.ValidDays = (int)pdays;
                            olp.Trips = 1;
                            olp.OriginatingOfficer = fname.Full_Name;
                            if (fname1 != null)
                            {
                                olp.AuthorizingOfficer = fname1.Full_Name;
                            }
                            else
                            {
                                olp.AuthorizingOfficer = "Julius Chambo";
                            }
                            olp.CreatedBy = (int)fname.Emp_Details_ID;
                            olp.TruckRegNo = vreg;
                            olp.EngineHP = 0;
                            olp.Cargo = cargoname;
                            olp.AxleConfiguration = vp.Axel_Configuration;
                            olp.Dimensions = vp.Total_Length + " X " + vp.Total_Width + " X " + vp.Total_Height;
                            olp.GrossWeight = getwno.GVM_Allowed_Weight;

                            olp.AddOverLoadPermit(olp);
                            try
                            {
                                permitid = olp.GetLastInsertedId();
                            }
                            catch
                            {
                            }
                            if (permitid > 0)
                            {
                                s_fee = gInvoice_approve.Surcharge_Fee;
                                if (s_fee > 0)
                                {
                                    vsurfee = s_fee * (long)paydetails_approve.BOT;
                                    if (tzsfee > vsurfee)
                                    {
                                        tzsfee = tzsfee - vsurfee;
                                    }
                                    else
                                    {
                                        tzsfee = vsurfee - tzsfee;
                                    }
                                }
                                olpc.PermitID = permitid;
                                olpc.TrafficPolice = nopolice.ToString();
                                olpc.Vehicles = novehicles.ToString();
                                if (!String.IsNullOrEmpty(evreg))
                                {
                                    olpc.VehicleRegNo = evreg;
                                    olpc.RegNo = evreg;
                                }
                                else
                                {
                                    olpc.VehicleRegNo = "";
                                    olpc.RegNo = "";
                                }
                                //olpc.TZS = l_fee * usamount;
                                //olpc.USD = l_fee;
                                olpc.TZS = tzsfee;
                                olpc.USD = gInvoice_approve.Permit_Fee;
                                olpc.AbnormalPermitNO = (int)pdetails.Permit_No;
                                olpc.FeeOfUSD = s_fee;
                                if (s_fee > 0)
                                {
                                    olpc.FeeOfTZS = vsurfee;
                                }
                                else
                                {
                                    olpc.FeeOfTZS = 0;
                                }
                                olpc.ERVNO = (int)gInvoice.SNO;
                                olpc.ERVDate = gInvoice.Submit_Date;
                                olpc.CreatedBy = (int)fname.Emp_Details_ID;
                                olpc.AddOLPConditions(olpc);
                                cname = "";
                                add2 = "";
                                permitfee = "";
                                surfee = "";
                                surtimes = "";
                                cargoname = "";
                                vreg = "";
                                evreg = "";
                                tfee = 0;
                                vsurfee = 0;
                                vdays = 0;
                                nopolice = 0;
                                novehicles = 0;
                                l_fee = 0;
                                s_fee = 0;
                                l_s_fee = 0;
                                tzsfee = 0;
                            }
                        }
                    }
                }
            }
            catch (Exception ch)
            {
                Response.Write(ch.ToString());
                Response.End();
            }
            try
            {
                /*SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["RFBCon"].ConnectionString);
                con.Open();

                string sql = @"DELETE FROM OverLoadPermit_Conditions";
                SqlCommand cmd = new SqlCommand(sql, con);
                cmd.ExecuteNonQuery();

                string sql1 = @"DELETE FROM OverLoadPermit";
                SqlCommand cmd1 = new SqlCommand(sql1, con);
                cmd1.ExecuteNonQuery();

                con.Close();
                //HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create("http://www.webservicex.net/globalweather.asmx/GetWeather");
                /*HttpWebRequest httpReq = (HttpWebRequest)WebRequest.Create("http://196.43.230.49/Epermit/Epermit.asmx/cmvrs_veh_det");
                string result = "";
                // add the parameters as key valued pairs making
                // sure they are URL encoded where needed
                ASCIIEncoding encoding = new ASCIIEncoding();
                //byte[] postData = encoding.GetBytes("CityName=" + "hyderabad&CountryName=india");
                byte[] postData = encoding.GetBytes("RegNo=" + "T432CLL");
                httpReq.ContentType = "application/x-www-form-urlencoded";
                httpReq.Method = "POST";
                httpReq.ContentLength = postData.Length;

                // convert the request to a steeam object and send it on its way
                Stream ReqStrm = httpReq.GetRequestStream();
                ReqStrm.Write(postData, 0, postData.Length);
                ReqStrm.Close();

                // get the response from the web server and
                // read it all back into a string variable
                HttpWebResponse httpResp = (HttpWebResponse)httpReq.GetResponse();
                StreamReader respStream = new StreamReader(httpResp.GetResponseStream(), Encoding.ASCII);
                result = respStream.ReadToEnd();
                httpResp.Close();
                respStream.Close();
                XmlDocument doc = new XmlDocument();
                doc.LoadXml(result);
                //Response.Write(result);
                Response.Write(result + "<br>");
                Response.Write(doc.SelectSingleNode("//Table/RegistrationNo").InnerText);
                /*XmlDocument doc = new XmlDocument();
                doc.LoadXml(result);
                foreach (XmlNode node in doc.DocumentElement.ChildNodes)
                {
                    string text = node.InnerText;
                    string nodename = node.Value;
                    //string abc = node.SelectSingleNode("/Location").InnerText;
                    //string attr = node.Attributes["Location"].InnerText;
                    //Response.Write(abc);
                }*/

            }
            catch (Exception exe)
            {
                //string pageContent = new StreamReader(exe.Response.GetResponseStream()).ReadToEnd().ToString();
                Response.Write(exe.ToString());
                //Response.Write(pageContent);
            }
        %>
    </div>
    </form>
</body>
</html>
