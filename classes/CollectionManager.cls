public class CollectionManager {

    //Task1: Get unique values in list.
    public static List<Integer> getListUniqueInt (List<Integer> num){
        Set<Integer>resultSet = new Set<Integer>(num);
        List<Integer>resultList = new List<Integer>(resultSet);
        return resultList;
    }

    //Task2: Get Contact by Name.
    public static List<Contact> getContactByName(String FirstName){
        List<Contact> result = new List<Contact>();
        List<Contact> contactList = [SELECT Id,FirstName FROM Contact];
        for(Contact cntct:contactList){
            if(cntct.FirstName == FirstName){
                result.add(cntct);
            }
        }
        return result;
    }

    //Task3: Get Opportunity with the biggest amount
    public static Opportunity getOppWithBiggestAmount(){
        Decimal maxAmount = 0;
        Opportunity resultOpp;
        List<Opportunity> opportunities = [SELECT Id, Amount FROM Opportunity];
        for(Opportunity opp:opportunities){
            if(opp.Amount > maxAmount){
                maxAmount = opp.Amount;
                resultOpp = opp;
            }
        }
        return resultOpp;
    }

    //Task4 : Write a function that takes a number and returns a list of its digits.
    public static List<Integer> getNumberDigits(Integer inputNumber){
        String stringInputNumber = String.valueOf(inputNumber);
        List<Integer> digitList = new List<Integer>();
        for(Integer i = 0; i < stringInputNumber.length(); i++){
            String digitString = stringInputNumber.substring(i, i+1);
            Integer digitNumber = Integer.valueOf(digitString);
            digitList.add(digitNumber);
        }
        return digitList;
    }
}