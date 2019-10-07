trigger AccountAddressTrigger on Account (before insert, before update) {

    List <account> accnt =trigger.new;
    for (account c:accnt) 
    {if (c.Match_Billing_Address__c==true && c.BillingPostalCode != Null) 
                                          {c.ShippingPostalCode= C.BillingPostalCode; 
                                           system.debug('The account: ' + C.name +' has been updated');
                                           }
        
        }
    
}