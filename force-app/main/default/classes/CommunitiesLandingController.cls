/**
 * An apex page controller that takes the user to the right start page based on credentials or lack thereof
 */
public with sharing class CommunitiesLandingController {
    
    // Code we will invoke on page load.
    public PageReference forwardToStartPage() {
        return Network.communitiesLanding();
        /*PageReference myLanding = new PageReference('/s/CreatorLanding');
        return myLanding; */
    }
    
    public CommunitiesLandingController() {}
}