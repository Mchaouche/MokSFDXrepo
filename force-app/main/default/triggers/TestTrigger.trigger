trigger TestTrigger on Contact (after insert, after delete) {
    if (Trigger.isInsert) {
        Integer recordCount = Trigger.New.size();
        // Call a utility method from another class
        EmailManager.sendMail('mokrane.chaouche@gmail.com', 'Trailhead Trigger Tutorial', 
                    recordCount + ' contact(s) were inserted.');
      
    }
    else if (Trigger.isDelete) {
        // Process after delete
        list <contact> cts=  Trigger.old;  
  for (contact c:cts) system.debug('this contact was deleted '+ c.lastname);
    }
}