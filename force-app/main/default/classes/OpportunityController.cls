public class OpportunityController {

    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getAllOpportunityServ() {
       List<Opportunity> oppLst = new List<Opportunity>([SELECT Id, Name, Amount, StageName 
                                                         FROM Opportunity]);
        return oppLst;
    }
    //Method to get all the WON Opportunity
    @AuraEnabled(cacheable=true)
    public static List<Opportunity> getWonOpportunityServ() {
       List<Opportunity> oppLst = new List<Opportunity>([SELECT Id, Name, Amount, StageName 
                                                         FROM Opportunity 
                                                         WHERE StageName = 'Closed Won']);
        return oppLst;
    }
    
}