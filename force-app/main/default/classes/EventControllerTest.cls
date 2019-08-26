@isTest
public with sharing class EventControllerTest
{
    @IsTest(SeeAllData=true) public static void testEventController() 
    {
        // Instantiate a new controller with all parameters in the page
        EventController controller = new EventController();
        List<Event__c> testEvents = controller.events;
    }
}