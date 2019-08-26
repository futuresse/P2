/**
 * An apex page controller that exposes the site login functionality
 */
global with sharing class SiteLoginController {
    global String username {get; set;}
    global String password {get; set;}

    global PageReference login() {
        //Need to query for account username, then see if the associated profile (or we can just use a custom field)
        //indicates that the user is an 'Event Creator' or an 'Event Participant (anything else)' by looking at account type.
        //Note: Can only use relative URLs with startURL variable, absolute URLs will throw an error.
        //
        /*
        String startUrl = '';
        if(username != null && username != '')
        {
            User u = [SELECT Name FROM User WHERE Username= :username LIMIT 1];
            if (u != null)
                return new PageReference('/s/CreatorLanding');
            else
                return new PageReference('/s/ParticipantLanding');
            //Account userAccount = [SELECT Type FROM Account WHERE Name=: username LIMIT 1];
            if(userAccount.Type == 'EventCreator')
            {
                //startUrl = 'creatorlanding';
                return Page.HomePageEventCreator;
            }
            else
            {
                //startUrl = 'participantlanding';
                return Page.HomePageParticipant;
            }
        }else
        { //in the case they didn't enter anything, just reload the page.
            //startUrl = 'login';
            return new PageReference('/s/');
        }
        */
        //*Shane* We to either add our VF pages as tabs to the VF page we see upon login 
        //Community builder pages are somewhat different than VF which is why we can see what we have done
        //in production
        //Below is the custom code that I substituted in to test if we can sub in what we want...
        //String startUrl = 'https://forcehealthhub-developer-edition.na112.force.com/SandboxHub/s/';
        //Below is the ORIGINAL CODE commented out...
        String startUrl = System.currentPageReference().getParameters().get('startURL');
        return Site.login(username, password, startUrl);
        //return Page.HomePageParticipant;
    }
    
    global SiteLoginController () {}
}