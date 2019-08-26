public class EventController {
    
    public List<Event__c> events {
        get{
            if (events == null){
                events = [SELECT Id, Name, Event_Start_Date__c, Event_End_Date__c, Venue_Street_Address_1__c, Event_Description__c FROM Event__c ORDER BY Event_Start_Date__c];
            }
            return events;
        }
        set;
    }
    
    
    
    
    //public PageReference goToEventPage() {
    //    return eventPage;
    //}
    
    /*
     * The objective of this method was properly conducted by the above getter
    public static void displayEvents(){
        List<Event> evts = [SELECT Id 
                            FROM Event 
                           ];
    }
	*/
    
    public PageReference myMethod() {
     	eventSelected = true; 
        eventId = ApexPages.currentPage().getParameters().get('eId');
        return Page.TestPage;
    }
    
    public Boolean eventSelected {
        get {
            if (eventSelected == null) {
                eventSelected = false;
            }
            return eventSelected;
        }
        set;
    }
    
    public Id eventId {
        get {
            if (eventId == null) {
                eventId = '00U3i000001EGLREA4';
            }
            return eventId;
        }
        set;
    }
	
}