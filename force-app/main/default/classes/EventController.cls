public class EventController {
    
    public List<Event> events {
        get{
            if (events == null){
                events = [SELECT Id, Subject, StartDateTime, Description FROM Event];
                eeeee = events[0];
            }
            return events;
        }
        set;
    }
    
    public Event eeeee = new Event();
    
    public Event getEEEEE() {
        return eeeee;
    }
    
    public static void displayEvents(){
        List<Event> evts = [SELECT Id 
                            FROM Event 
                           ];
    }
}