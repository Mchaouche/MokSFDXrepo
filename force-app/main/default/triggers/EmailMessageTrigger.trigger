trigger EmailMessageTrigger on EmailMessage (before insert, after insert) {

for(EmailMessage m : Trigger.new){
      if(trigger.isBefore)
      {system.debug('before: m.ParentId '+m.ParentId);}
      if(trigger.isAfter)
      {system.debug('After: m.ParentId '+m.ParentId);}      


}
 
}