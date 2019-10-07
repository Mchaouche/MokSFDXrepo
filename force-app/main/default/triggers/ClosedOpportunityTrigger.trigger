trigger ClosedOpportunityTrigger on Opportunity (after insert, after update) {
list <task> li_task = new list <task>();
   
    for (Opportunity opty: [select id,name,StageName from Opportunity where id in:trigger.new and StageName ='Closed Won']) 
    {
              
            task tk=new task (subject='Follow Up Test Task', WhatId=opty.Id);
            li_task.add(tk);
            system.debug('new task associated to opty ' + opty.name +' is created');
        
         
    }
   insert (li_task); 
    system.debug('list of tasks was created');

    
    
}