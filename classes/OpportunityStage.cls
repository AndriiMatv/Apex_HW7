public class OpportunityStage {
    public static List<Opportunity> updateOpportunityStage(String stageNew, String stageOld){
        List<Opportunity> oppOldStageList = [SELECT StageName FROM Opportunity WHERE StageName = :stageOld];
        List<Schema.PicklistEntry> opportunityStages = Opportunity.StageName.getDescribe().getPicklistValues();
        List<String>oppStagesStringList = new List<String>();

        for(Schema.PicklistEntry sp:opportunityStages){
            String oppStage = sp.getValue();
            oppStagesStringList.add(oppStage);
        }

        if(oppStagesStringList.contains(stageNew) && oppStagesStringList.contains(stageOld)){
            for(Opportunity opp : oppOldStageList){
                opp.StageName = stageNew;
            }
            update oppOldStageList;
        }

        return oppOldStageList;
    }
}
