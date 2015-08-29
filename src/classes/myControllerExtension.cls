public class myControllerExtension {
   private final Opportunity Opp;
   public String Name{get;set;}
   public date CloseDate{get;set;}
   public String stage{get;set;}
   
    public myControllerExtension(ApexPages.StandardController controller) {
   this.Opp = (Opportunity)controller.getRecord();
    }

}