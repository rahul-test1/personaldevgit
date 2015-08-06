@isTest
Public Class ABPCreateCustomerHierarchyReq_test{
    
    static String jsontoparse= '{"balResponseVO":{"standardHeader":{"user":"User","messageID":"MSE001","status":"OK","requestedDateTime":"2014-09-26T14:02:20","responseDateTime":"2014-09-29T14:02:20","statusCode":"STatus","errorMsg":"Errormsg"},"paramList":""}}';
     
    public class ABPMockHttpResponseGenerator implements HttpCalloutMock 
    {                
        public  HTTPResponse respond(HTTPRequest req) 
        {
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setBody(jsontoparse);
            res.setStatusCode(200);
            return res;
        }
    }
    
    public class ABPMockHttpResponseGenerator1 implements HttpCalloutMock 
    {                
        public  HTTPResponse respond(HTTPRequest req) 
        {
            HttpResponse res = new HttpResponse();
            res.setHeader('Content-Type', 'application/json');
            res.setBody(jsontoparse);
            res.setStatusCode(500);
            return res;
        }
    }
    
    @testSetup 
    Public static void SetupData(){
        Id RecordTypeBranchId = [Select Id, Name From RecordType Where DeveloperName='Branch' And SobjectType = 'Account' Limit 1].Id;
        Id RecordTypeSubsidiaryId = [Select Id, Name From RecordType Where DeveloperName='Subsidiary' And SobjectType = 'Account' Limit 1].Id;
        
        List<Account> acc = TestDataClass.createTestAccounts(4);
        
        acc[0].Customer_Carrier_Id__c='Elisa PO';
        acc[0].RegularAddress__c = true;
        acc[0].IntegratedwithInformatica__c = true;   
             
        acc[1].Customer_Carrier_Id__c='Elisa PO';
        acc[1].Id_Type__c = 'Business Id';
        acc[1].Customer_Identifier__c='0109862-8';
        acc[1].RegularAddress__c = false;
        acc[1].PoBox__c = true;
        acc[1].IntegratedwithInformatica__c = true;
                        
        acc[2].Customer_Carrier_Id__c='Elisa PO';
        acc[2].Id_Type__c = 'Registration Number';
        acc[2].Customer_Identifier__c='1.111-111.111';
        acc[2].RegularAddress__c = false;
        acc[2].PoBox__c = false;
        acc[2].International__c = true;
        acc[2].RecordTypeId = RecordTypeSubsidiaryId;
        acc[2].IntegratedwithInformatica__c = true;
        
        acc[3].Customer_Carrier_Id__c='Elisa PO';
        acc[3].RegularAddress__c = false;
        acc[3].PoBox__c = false;
        acc[3].RecordTypeId = RecordTypeBranchId;
        acc[3].IntegratedwithInformatica__c = true;
        acc[3].International__c = false;
        
        insert acc;
        
        acc[3].ParentId = acc[0].Id;
        update acc[3];
        
        List<Contact> con = TestDataClass.createTestContact(4);
        for(integer i=0; i<4; i++){
            con[i].AccountId = acc[i].Id;
        }
        insert con;
        
        List<csconta__Billing_Account__c> billAccList = new List<csconta__Billing_Account__c>(); 
        for(integer i=0; i<4; i++){
            csconta__Billing_Account__c billAcc = TestDataClass.createTestBillingAccount(acc[i].Id, con[i].Id, 1)[0];
            billAccList.add(billAcc);
        } 
        
        billAccList[1].Address_Type__c = 'P.O Box';     
        billAccList[1].phone__c = null;                  
        billAccList[2].Address_Type__c = 'International';        
        insert billAccList;            
         
        List<csord__Order_Request__c> csorderReq = TestDataClass.createTestCsOrderReq(4);
        insert csorderReq;
        
        List<csord__Order__c> csorderList = new List<csord__Order__c>();
        for(integer i=0; i<4; i++){
            csord__Order__c csorder = TestDataClass.createTestCsOrder(acc[i].Id, con[i].Id, csorderReq[i].Id, 1)[0];
            csorderList.add(csorder);
        }
        insert csorderList;
        
        IntegrationUser__c IU =  new IntegrationUser__c(Name='IntegrationUserDetails', UserName__c='integrationuser@elisa.prototype', Password__c='elisa@2014wOSNERgTAjoR24PMNsUxtvSYD');
        insert IU;
        
        IntegrationEndpoints__c IE = new IntegrationEndpoints__c(Name='CreateCustomerHir',Server_Name__c='BAL', Service_Address__c='/bal-web/bal/createCustomerHierarchy');
        insert IE;
        
        IntegrationServerAddresses__c ISA = new IntegrationServerAddresses__c(Name='BAL', Server_Name__c='BAL', Server_Address__c='http://193.229.18.74:8443');
        insert ISA;
        
        Customer_Type_Sub_Type_Mapping__c customerTypeMapping = new Customer_Type_Sub_Type_Mapping__c(Name= 'abc');
        insert customerTypeMapping ;
        
    }



    @isTest
    Public static void PostHttpRequestTest(){
        Test.setMock(HttpCalloutMock.class, new ABPMockHttpResponseGenerator());
        Test.startTest();
            List<csord__Order__c> csorder = [Select Id From csord__Order__c];
            System.assertEquals(4, csorder.size()); 
            for(integer i=0; i<4; i++){   
                ABPCreateCustomerHierarchyReq.PostHttpRequest(csorder[i].Id);
            }
        Test.stopTest();    
    }
        
    @isTest
    Public static void CreateClassObjTest(){        
        Test.startTest();
           //List<ABPCreateCustomerHierarchyReq.ListOfDepartments> listDept = new List<ABPCreateCustomerHierarchyReq.ListOfDepartments>();
           //List<ABPCreateCustomerHierarchyReq.ListOfAccounts> lisdacc = new List<ABPCreateCustomerHierarchyReq.ListOfAccounts>();
        
            ABPCreateCustomerHierarchyReq.UnitIdInfo uInfo = new ABPCreateCustomerHierarchyReq.UnitIdInfo(null,null,null,null,null,null,null,null);
            ABPCreateCustomerHierarchyReq.ListOfDepartments lDep = new ABPCreateCustomerHierarchyReq.ListOfDepartments(uInfo);
            ABPCreateCustomerHierarchyReq.activityDetails actDtl = new ABPCreateCustomerHierarchyReq.activityDetails(null,null,null,null);
            //listDept.add(lDep);
            //ABPCreateCustomerHierarchyReq.Customer cuslist= new ABPCreateCustomerHierarchyReq.Customer(null,null,null,null,actDtl ,null,null,null,listDept,lisdacc , null);
            
            //ABPCreateCustomerHierarchyReq.ListOfAccounts accList= new ABPCreateCustomerHierarchyReq.ListOfAccounts(null,null,null,null);
           

            ABPCreateCustomerHierarchyReq ABPReq = new ABPCreateCustomerHierarchyReq();
            ABPReq.updateAccount(null,null,null,null);
            Test.setMock(HttpCalloutMock.class, new ABPMockHttpResponseGenerator1());
                 Id csorderId = [Select Id From csord__Order__c Limit 1].Id;
                 ABPCreateCustomerHierarchyReq.PostHttpRequest(csorderId);
                 ABPCreateCustomerHierarchyReq.PostHTTPRequestNF(csorderId);
        Test.stopTest();    
    }

}