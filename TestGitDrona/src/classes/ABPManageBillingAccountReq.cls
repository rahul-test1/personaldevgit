public class ABPManageBillingAccountReq
{
    public manageAccountInfo ManageBillingAccount;
    public class manageAccountInfoParser
    {
        public manageAccountInfo manageBillingAccount;
        public manageAccountInfoparser(manageAccountInfo MBi)
        {
            ManageBillingAccount = MBI;
        }
    }
    public class manageAccountInfo 
    {
        public IntegrationUtilities.BillingReqStandardHeader standardHeader;
        public accountDetails accountDetails;
        public manageAccountInfo(IntegrationUtilities.BillingReqStandardHeader stdhdr,accountDetails actdtls)
        {
            standardHeader = stdhdr;
            accountDetails = actdtls;
        }
    }
    
    public class accountDetails 
    {
        public String action;   //
        public String customerId;   //
        public String accountExternalId;    //
        public String baId; //
        public AccountNameDetails accountNameDetails;
        public AccountAddressdetails accountAddressDetails;
        public accountManagement accountManagement;
        public accountBilling accountBilling;
        public billingArrangementBillInfo billingArrangementBillInfo;
        public billingArrangementNameDetails billingArrangementNameDetails;
        public billingArrangementAddressDetails billingArrangementAddressDetails;
        public paymentDetails paymentDetails;
        public activityDetails activityDetails;
        public String activityDate; //
        public baIndicatorDetails balIndicatorDetails;
        public AccountDetails(String neededAction,String custId,String accExtId,String cbaid,AccountNameDetails namedetail,AccountAddressdetails addDetail,AccountManagement accmanagement,AccountBilling accBilling, BillingArrangementBillInfo billArranfBillInfo, billingArrangementNameDetails billNameDetail,billingArrangementAddressDetails billingadddetail,PaymentDetails billpayment/*,activityDetails actdtls,String actdt*/,BaIndicatorDetails baIndicator) 
        {
            action=neededAction;
            customerId=custId;
            accountExternalId=accExtId;
            baid = cbaid;
            AccountNameDetails=namedetail;
            AccountAddressDetails=addDetail;
            accountManagement=accmanagement;
            accountBilling=accBilling;
            billingArrangementBillInfo=billArranfBillInfo;
            billingArrangementNameDetails=billNameDetail;
            billingArrangementAddressDetails=billingadddetail;
            paymentDetails=billpayment;
            /*activityDetails = actdtls;
activityDate = actdt;*/
            balIndicatorDetails=baIndicator;
        }
    }
    public class NameDetails 
    {
        public String name; //TBD
        public String value;    //TBD
        public NameDetails (String cname, String cvalue)
        {
            if(cvalue != null)
            {
                name=cname;
                value = cvalue;
            }
            else
            {
                name = null;
                value = null;
            }        
        }
    }
    public class AddressDetails 
    {
        public String name; //TBD
        public String value;    //TBD
        public AddressDetails (string cname, string cvalue)
        {
            if(cvalue != null)
            {
                name=cname;
                value = cvalue;
            }
            else
            {
                name = null;
                value = null;
            }
        }
    }
    public class AccountNameDetails
    {
        public String nameType;
        public list<NameDetails> nameDetails;
        public AccountNameDetails(String cNameType, list<NameDetails> cNameDetails)
        {
            nameType = cNameType;
            nameDetails = cNameDetails;
        }
    }
    public class AccountAddressdetails
    {
        public String addressType;
        public List<AddressDetails> addressDetails;
        public AccountAddressdetails(string cAddresstype, List<AddressDetails> cAddressDetails)
        {
            addresstype = cAddresstype;
            addressDetails = cAddressDetails;
        }
    }
    public class billingArrangementNameDetails
    {
        public string nameType;
        public list<nameDetails> nameDetails;
        public billingArrangementNameDetails(string cnametype, List<nameDetails> Namedtls)
        {
            nametype = cnametype;
            nameDetails = Namedtls;
        }
    }
    public class billingArrangementAddressDetails
    {
        public string addressType;
        public list<addressDetails> addressDetails;
        public billingArrangementAddressDetails(string caddresstype, List<addressDetails> addressdtls)
        {
            addresstype = caddresstype;
            addressDetails = addressdtls;
        }
    }
    
    public class accountManagement 
    {
        public String accountingBalancePolicy;  //
        public String documentType; //
        public String l9AutoDepositRelease;
        public String l9LatePaymentFeeWaiver;
        public String l9Language;
        public String l9CarrierId;
        public String l9BusinessType;
        public  AccountManagement(String accountBalance,String cdocumenttype,String cl9AutoDepositRelease,String cl9LatePaymentFeeWaiver,String cl9Language,String cl9CarrierId,String cl9BusinessType) 
        {
            accountingBalancePolicy='B';
            documentType='I';
            l9AutoDepositRelease= 'Y';
            l9LatePaymentFeeWaiver = 'N';
            l9Language = cl9Language;
            l9CarrierId = cl9CarrierId;
            l9BusinessType = null;
        }
    }
    public class accountBilling 
    {
        public String billingCurrency;  //
        public AccountBilling(String billcurrency) 
        {
            billingCurrency=billcurrency;
        }        
    }
    public class billingArrangementBillInfo 
    {
        public String itemizedTaxIndicator; //
        public Boolean billProductionIndicator;  //
        public String billProductionFrequency;  //
        public String l9Language;
        public String l9BillChannel;
        public String l9FormatType;
        public String l9NotCarryOver;
        public String l9PrintingCategory;
        public String l9CarrierId;
        public String l9OvtId;
        public String l9CostCenter;
        public String l9PrintCategoryDynAttr;
        public String l9Reference1;
        public String l9Reference2;
        public String l9CustomerLegalEntity;
        public String l9SourceAppl;
        public BillingArrangementBillInfo(String itemTaxInd,Boolean billProdInd,String billProdFreq, String cl9NotCarryOver, String cl9PrintingCategory,  String cl9OvtId, String cl9PrintCategoryDynAttr,String cl9CostCenter, String cl9Reference1, String cl9Reference2,  String cl9SourceAppl,String cl9Language,String cl9BillChannel, String cl9FormatType,String cl9CarrierId,String cl9CustomerLegalEntity) 
        {
            itemizedTaxIndicator=itemTaxInd;
            billProductionIndicator=billProdInd;
            billProductionFrequency=billProdFreq;
            l9Language  = cl9Language;
            l9BillChannel   = cl9BillChannel;
            l9FormatType    = cl9FormatType;
            l9CarrierId =   cl9CarrierId;
            l9CustomerLegalEntity   =   cl9CustomerLegalEntity;
            l9NotCarryOver  =   'No';
            l9PrintingCategory  =   cl9PrintingCategory;
            l9OvtId =   cl9OvtId;
            l9CostCenter    =   cl9CostCenter;
            l9PrintCategoryDynAttr  =   cl9PrintCategoryDynAttr;
            l9Reference1    =   cl9Reference1;
            l9Reference2    =   cl9Reference2;
            l9SourceAppl    =   cl9SourceAppl;
        }
    }
    /*public class billingArrangementNameDetails 
{
public String name; //TBD
public String value;    //TBD
public billingArrangementNameDetails (string cname, string cvalue)
{
name = cname;
value = cvalue;
}
}
public class billingArrangementAddressDetails 
{
public String name; //TBD
public String value;    //TBD
public billingArrangementAddressDetails (string cname, string cvalue)
{
name = cname;
value = cvalue;
}
}*/
    public class paymentDetails 
    {
        //public String payChannleExternalId; //
        public String paymentCategory;  //
        public String payChannelDesc;   //
        public payChannelPaymentMethodDetails payChannelPaymentMethodDetails;
        public PaymentDetails(/*String payChanExtId,*/String paymCateg,String payChanDesc,PayChannelPaymentMethodDetails payInst)
        {
            //payChannleExternalId=payChanExtId;
            paymentCategory=paymCateg;
            payChannelDesc=payChanDesc;
            payChannelPaymentMethodDetails=payInst;
        }
    }
    public class payChannelPaymentMethodDetails 
    {
        public String paymentMethod;    //
        public String paymentType;  //
        public String issueDate;    //
        public String bankCode; //
        public String bankAccountNo;    //
        public String bankAccountType;  //
        public String bankBranchNo; //
        public String creditCardType;   //
        public String creditCardNo; //
        public String creditCardExpirationDate; //
        public String paymentMeansOwnerDetails; //
        public String recurringFrequency;   //
        public String recurringFrequencyValue;  //
        public String recurringAmount;  //
        public PayChannelPaymentMethodDetails(String payMethod,String payType,String issuedDate,String banCode,String bankAccNo,String bankAccType,String bankBranNo,String credCardType,String credCardNo,String credCardExpDate,String paymMeansOwnerDetails,String recurFreq,String recurFreqyValue,String recurAmount) 
        {
            paymentMethod='Cash';
            paymentType='N';
            issueDate=issuedDate;
            bankCode=banCode;
            bankAccountNo=bankAccNo;
            bankAccountType=bankAccType;
            bankBranchNo=bankBranNo;
            creditCardType=credCardType;
            creditCardNo=credCardNo;
            creditCardExpirationDate=credCardExpDate;
            paymentMeansOwnerDetails=paymMeansOwnerDetails;            
            recurringFrequency='Monthly';
            recurringFrequencyValue=recurFreqyValue;
            recurringAmount=recurAmount;        
        }
    }
    public class activityDetails 
    {
        public String activityReason;   //
        public String userText; //
        public String activityPcn;  //
        public activityDetails(string actrsn,string usrtxt,string actpcn)
        {
            activityReason = actrsn;
            userText = usrtxt;
            activityPcn = actpcn;
        }
    }
    public class baIndicatorDetails 
    {
        public String entityType;   //
        public String entityId; //
        public String dueDays;  //
        public Boolean zeroBalanceIndicator; //
        public String documentProductionIndicator;  //
        public String itemizedTaxIndicator; //
        public String printingCatagoryCode; //
        public String tempCatagoryCode; //
        public String effectiveDate;    //
        public String expirationCode;   //
        public BaIndicatorDetails(String entType,String entId,String dDays, Boolean zeroBalInd,String docProdInd,String itemTaxInd,String printCatCode,String tempCatCode,String effDate,String expCode)
        {
            entityType=entType;
            entityId=entId;
            dueDays=dDays;
            zeroBalanceIndicator=zeroBalInd;
            documentProductionIndicator=docProdInd;
            itemizedTaxIndicator='Y';
            printingCatagoryCode=printCatCode;
            tempCatagoryCode=tempCatCode;
            effectiveDate=effDate;
            expirationCode=expCode;
        }
    }
    Public string generateJSON(string billaccid,string usecase)
    { 
        String JSONString;
        try
        {
            csconta__Billing_Account__c billaccnt = new csconta__Billing_Account__c();
            billaccnt = [select Zero_Balance__c, Printing__c, Bill_production__c,Addressline1_Postal__c,Addressline2_Postal__c,Postal_code_Postal__c,Post_office_name_Postal__c, Country_Postal__c,CurrencyIsoCode, csconta__Payment_Terms__c,csconta__Account__r.Parent.Id_Type__c,Bill_payer__c,csconta__Account__r.Id_Type__c,Bill_payer__r.Name,Bill_payer__r.Id_Type__c,Bill_payer__r.Master_ID_number__c,Bill_payer_additional_name__c,Billing_Account_ID__c,eOperator__c,csconta__Account__r.name, Cost_center__c,Reference_id_1__c,Reference_id_2__c, csconta__Account__r.RecordType.Name, csconta__Account__r.Parent.Master_ID_number__c, csconta__Account__r.Master_ID_number__c, Customer_Legal_Entity__c, Billing_Carrier_Id__c,Bill_Format_Type__c,csconta__Billing_Channel__c,Payment_Category__c, csconta__Billing_Language__c,Address_Type__c,Apartment__c,House__c,Staircase__c,csconta__Street__c,Postal_code__c,Post_office_name__c,csconta__City__c,POB__c,csconta__Country__c,Etype__c,Electronic_address__c,International_address__c,csconta__Billing_City__c,csconta__Billing_Country__c,csconta__Billing_Postcode__c,csconta__Billing_Street__c,csconta__Postcode__c,Billing_Currency__c, Document_Type__c, balance_policy__c,id,phone__c,Email_Address__c, Name,Integrated_with_Billing__c, csconta__Account__r.customer_Number__c,Root_Customer_ID__c,Billing_Account_Name__c from csconta__Billing_Account__c where id =: billaccid];
            if (billaccnt != null)
            {
                IntegrationUtilities.BillingReqStandardHeader StandardHeader = New IntegrationUtilities.BillingReqStandardHeader();
                List<NameDetails> namedetail = new List<NameDetails>();
                if(billaccnt.csconta__Account__r.RecordType.Name == 'Branch')
                {
                    namedetail.add(new NameDetails (General_Custom_Settings__c.getValues(billaccnt.csconta__Account__r.Parent.Id_Type__c).Value__c,billaccnt.csconta__Account__r.Parent.Master_ID_number__c));
                }
                else
                {
                    namedetail.add(new NameDetails (General_Custom_Settings__c.getValues(billaccnt.csconta__Account__r.Id_Type__c).Value__c,billaccnt.csconta__Account__r.Master_ID_number__c));
                }
                namedetail.add(new NameDetails ('Account Name',billaccnt.Billing_Account_Name__c));
                namedetail.add(new NameDetails ('Company Name',billaccnt.csconta__Account__r.name));
                namedetail.add(new NameDetails ('Phone Number',billaccnt.phone__c));
                namedetail.add(new NameDetails ('Email',billaccnt.Email_Address__c));
                namedetail.add(new NameDetails ('Contact ID',billaccnt.Id));
                AccountNameDetails accnmedtls = new AccountNameDetails('C',namedetail);
                AccountAddressDetails accadddtls;
                billingArrangementAddressDetails billadddtls;
                if(billaccnt.Country_Postal__c == 'FIN')
                {
                    List<AddressDetails> adddetail = new List<AddressDetails>();
                    List<AddressDetails> billingadddetail = new List<AddressDetails>();
                    adddetail.add(new AddressDetails('Street',billaccnt.Addressline1_Postal__c)); // Addresline 1
                    adddetail.add(new AddressDetails('Zip',billaccnt.Postal_code_Postal__c)); // Postal Code Postal
                    adddetail.add(new AddressDetails('Post office name',billaccnt.Post_office_name_Postal__c)); // post Office Name Postal
                    adddetail.add(new AddressDetails('Country Code',billaccnt.Country_Postal__c)); // Country Postal
                    accadddtls = new AccountAddressDetails('Q',addDetail);
                    //billingarangement info
                    billingadddetail.add(new AddressDetails('Street',billaccnt.Addressline1_Postal__c));
                    billingadddetail.add(new AddressDetails('Zip',billaccnt.Postal_code_Postal__c));
                    billingadddetail.add(new AddressDetails('Post office name',billaccnt.Post_office_name_Postal__c));
                    billingadddetail.add(new AddressDetails('Country Code',billaccnt.Country_Postal__c));
                    billadddtls = new billingArrangementAddressDetails('Q',billingadddetail);
                }
                else
                {
                    List<AddressDetails> adddetail = new List<AddressDetails>();
                    adddetail.add(new AddressDetails('International Address + Converted Address',billaccnt.Addressline1_Postal__c));
                    adddetail.add(new AddressDetails('International Address',billaccnt.Addressline2_Postal__c));
                    accadddtls = new AccountAddressDetails('I',addDetail);
                    List<AddressDetails> billingadddetail = new List<AddressDetails>();
                    billingadddetail.add(new AddressDetails('International Address + Converted Address',billaccnt.Addressline1_Postal__c));
                    billingadddetail.add(new AddressDetails('International Address',billaccnt.Addressline2_Postal__c));
                    billadddtls = new billingArrangementAddressDetails('I',billingadddetail);
                }
                List<NameDetails> billNameDetail = new List<NameDetails>();
              /**----- Start Defect 879 **/ 
                if(String.isNotBlank(billaccnt.Bill_payer__c))
                {
                    System.debug(General_Custom_Settings__c.getValues(billaccnt.Bill_payer__r.Id_Type__c).Value__c);
                    billNameDetail.add(new NameDetails (General_Custom_Settings__c.getValues(billaccnt.Bill_payer__r.Id_Type__c).Value__c,billaccnt.Bill_payer__r.Master_ID_number__c));
                    billNameDetail.add(new NameDetails ('Company Name',billaccnt.Bill_payer__r.name));
                }
                else
                {
                    System.debug(General_Custom_Settings__c.getValues(billaccnt.csconta__Account__r.Id_Type__c).Value__c);
                    if(billaccnt.csconta__Account__r.RecordType.Name == 'Branch')
                    {
                        billNameDetail.add(new NameDetails (General_Custom_Settings__c.getValues(billaccnt.csconta__Account__r.Id_Type__c).Value__c,billaccnt.csconta__Account__r.Parent.Master_ID_number__c));
                    }
                    else
                    {
                        billNameDetail.add(new NameDetails (General_Custom_Settings__c.getValues(billaccnt.csconta__Account__r.Id_Type__c).Value__c,billaccnt.csconta__Account__r.Master_ID_number__c));
                    }
                    billNameDetail.add(new NameDetails ('Company Name',billaccnt.csconta__Account__r.name));
                }
                /**-----End Defect 879-------**/
                billNameDetail.add(new NameDetails ('Account Name',billaccnt.Billing_Account_Name__c));
                billNameDetail.add(new NameDetails ('Additional Name',billaccnt.Bill_payer_additional_name__c)); //added by Prince--Defect 879
                billNameDetail.add(new NameDetails ('Phone Number',billaccnt.phone__c));
                billNameDetail.add(new NameDetails ('Email',billaccnt.Email_Address__c));
                billNameDetail.add(new NameDetails ('Contact ID',billaccnt.Id));
                billingArrangementNameDetails billnmedtls = new billingArrangementNameDetails('C',billNameDetail);
                String language,documentType;
                if(billaccnt.csconta__Billing_Language__c == 'English'){language = 'ENG';}
                documentType = (billaccnt.Document_Type__c == 'Invoice') ? 'I' : 'B';
                AccountManagement accmanagement = new AccountManagement(billaccnt.balance_policy__c,documentType,null,null,billaccnt.csconta__Billing_Language__c,billaccnt.Billing_Carrier_Id__c,null);
                AccountBilling accBilling = new AccountBilling(billaccnt.CurrencyIsoCode);
                BillingArrangementBillInfo billArranfBillInfo = new BillingArrangementBillInfo('Y',billaccnt.Bill_production__c,null,null,billaccnt.Printing__c,null,null,null,billaccnt.Reference_id_1__c,billaccnt.Reference_id_2__c,'ECU',billaccnt.csconta__Billing_Language__c,billaccnt.csconta__Billing_Channel__c,billaccnt.Bill_Format_Type__c,billaccnt.Billing_Carrier_Id__c,billaccnt.Customer_Legal_Entity__c);
                PayChannelPaymentMethodDetails payInst = new PayChannelPaymentMethodDetails('paymentMethod : TBD','paymentType : TBD','issueDate : TBD','bankCode : TBD','bankAccountNo : TBD','bankAccountType : TBD','bankBranchNo : TBD',null,null,'creditCardExpirationDate : TBD','paymentMeansOwnerDetails : TBD','recurringFrequency : TBD','recurringFrequencyValue : TBD','recurringAmount : TBD');
                PaymentDetails billpayment = new PaymentDetails(/*'payChannelExternalId : TBD',*/billaccnt.Payment_Category__c,'payChannelDesc : TBD',payInst);
                //activityDetails actdtls = new activityDetails('TBD','TBD','TBD');
                /*Payment terms value should be passed in baindicatorDetails*/
                BaIndicatorDetails baIndicator = new BaIndicatorDetails(null, null, billaccnt.csconta__Payment_Terms__c, billaccnt.Zero_Balance__c, null, null, null, null, null, null);
                AccountDetails accntdtls;
                if(usecase=='CreateBillingAccount'){accntdtls = new AccountDetails('Create',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,accnmedtls, accadddtls, accmanagement, accBilling, billArranfBillInfo, billnmedtls, billadddtls, billpayment/*, actdtls,'TBD'*/,baIndicator);}
                else if(usecase=='UpdateBillingAccount'){accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,accnmedtls, accadddtls, null, null, null, billnmedtls, billadddtls, null/*, actdtls,'TBD'*/,null);}
                else if(usecase=='UpdateAccountManagement'){accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,null, null, accmanagement, null, null, null, null, null/*, actdtls,'TBD'*/,null);}
                else if(usecase=='UpdateBillfrequency')
                {
                    BillingArrangementBillInfo billArranfBillInfo2 = new BillingArrangementBillInfo(null,billaccnt.Bill_production__c,null,null,billaccnt.Printing__c,null,null,null,null,billaccnt.Reference_id_1__c,billaccnt.Reference_id_2__c,null,null,null,null,'ECU');
                    accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,null, null, null, null, billArranfBillInfo, null, null, null/*, actdtls,'TBD'*/,null);
                }
                //Code change made to in-corporate the Requirement BRD - SMO 14c
                else if(usecase=='UpdateCostCenter/ContactDetail')
                {
                    BillingArrangementBillInfo billArranfBillInfo2 = new BillingArrangementBillInfo(null,null,null,null,billaccnt.Printing__c,null,null,null,null,billaccnt.Reference_id_1__c,billaccnt.Reference_id_2__c,null,null,null,null,'ECU');
                    //Please add the Name Details for the New Contact Information and then send that with the parameter whereevr required in the request. SMO 14c Implementation
                    accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,null, null, null, null, billArranfBillInfo2, null, null, null/*, actdtls,'TBD'*/,null);
                }
                //Code change made to in-corporate Defect 892
                else if(usecase=='UpdateBillingLanguage')
                {
                    BillingArrangementBillInfo billArranfBillInfo2 = new BillingArrangementBillInfo(null,null,null,null,billaccnt.Printing__c,null,null,null,null,null,null,billaccnt.csconta__Billing_Language__c,null,null,null,'ECU');
                    //Please add the Name Details for the New Contact Information and then send that with the parameter whereevr required in the request. SMO 14c Implementation
                    accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,null, null, accmanagement, null, billArranfBillInfo2, null, null, null/*, actdtls,'TBD'*/,null);                   
                }
                //Code change made to in-corporate Defect 839 - Removed extra lines of code
                else if(usecase == 'UpdateBillingAddress'){accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,null,accadddtls,null,null,null,null,billadddtls,null/*, actdtls,'TBD'*/,null);}
                //Code Change End
                //Code change for Defect 1223 - MG24072015
                else if(usecase=='UpdateBAbillinginformation')
                {
                    BillingArrangementBillInfo billArranfBillInfo2 = new BillingArrangementBillInfo(null,null,null,null,null,null,null,null,null,null,null,null,billaccnt.csconta__Billing_Channel__c,billaccnt.Bill_Format_Type__c,null,'ECU');                    
                    accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,null, null, null, null, billArranfBillInfo2, null, null, null/*, actdtls,'TBD'*/, baIndicator);
                }
                //Code change end  
                else if(usecase=='ChangePaymentMethod')
                {
                    PaymentDetails billpayment2 = new PaymentDetails(null,null,payInst);
                    accntdtls = new AccountDetails('Modify',billaccnt.csconta__Account__r.customer_Number__c,billaccnt.Billing_Account_ID__c,billaccnt.Billing_Account_ID__c,null, null, null, null, null, null, null, billpayment/*, actdtls,'TBD'*/, null);
                }
                manageAccountInfo MAI = new manageAccountInfo(standardheader,accntdtls);
                JSONString = JSON.serialize(new manageAccountInfoparser(MAI));
            }
        }
        catch(Exception e)
        {
            system.debug(e);
        }
        String JSONStringwithoutnull = IntegrationUtilities.stripJsonNulls(JSONString);
        System.debug(JSONStringwithoutnull);
        return JSONStringwithoutnull;
    }
    
    @future (callout=true)
    public static void PostHTTPRequest(String billaccid,string usecase)
    {
        try
        {
            HttpRequest req = new HttpRequest();
            Http http = new Http();
            req.setMethod('POST');
            String callouturl = IntegrationUtilities.getEndPointAddress('ManageBillingAccount'); //End point for the JSON Callout
            system.debug('callouturl >>> '+callouturl);
            req.setEndpoint(callouturl);
            //string sid = Login.login(IntegrationUtilities.getInegrationUserDetails().get('username'),IntegrationUtilities.getInegrationUserDetails().get('password'));
            //req.setHeader('Authorization', 'Bearer ' +sId); 
            req.setHeader('Content-Type', 'application/json');
            ABPManageBillingAccountReq ABPbillacc = new ABPManageBillingAccountReq();
            req.setBody(ABPbillacc.GenerateJson(billaccid,usecase));
            
            system.debug('before http callout');
            HTTPResponse httpresp = http.send(req);
            String ack = httpresp.getBody().trim();
            String strresult;
            system.debug('ack >>>' + ack);
            IntegrationUtilities.BALAcknowledgementparser abprespObj = (IntegrationUtilities.BALAcknowledgementparser)JSON.deserializeStrict(ack,IntegrationUtilities.BALAcknowledgementparser.class);
            IntegrationUtilities.InsertLogwithResponse('Request',abprespObj.balResponseVO.standardHeader.messageID,'Manage Billing Account',datetime.now(),req.getBody(),string.valueof(httpresp.getBody()));
            ABPUpdateBillingAck billack = new ABPUpdateBillingAck();
            String childaccountupdate=billack.UpdateBillingAccounts(billaccid,abprespObj.balResponseVO.standardHeader.messageid,abprespObj.balResponseVO.standardHeader.statuscode,abprespObj.balResponseVO.standardHeader.message,'ack'); //updating Billing Account
            strResult = 'Account Updated'; 
            system.debug(strResult);
        }
        catch(Exception e)
        {
            system.debug(e);
        }
    }
}