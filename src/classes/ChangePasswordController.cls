/**
 * An apex page controller that exposes the change password functionality
 * check this 1 added
 */
public with sharing class ChangePasswordController {
    public String oldPassword {get; set;}
    public String newPassword {get; set;}
    public String verifyNewPassword {get; set;}        
    
    public PageReference changePassword() {
        return Site.changePassword(newPassword, verifyNewPassword, oldpassword);    
    }     
    //test thhis change
   	public ChangePasswordController() {}
}
