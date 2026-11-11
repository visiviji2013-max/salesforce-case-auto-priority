@isTest
private class CaseTriggerHandlerTest {

    @isTest
    static void refundCaseGetsHighPriority() {
        Case c = new Case(Subject = 'Need refund for my order', Status = 'New', Priority = 'Low');
        insert c;
        Case result = [SELECT Priority FROM Case WHERE Id = :c.Id];
        System.assertEquals('High', result.Priority);
    }

    @isTest
    static void chargebackGetsHighPriority() {
        Case c = new Case(Subject = 'chargeback', Status = 'New', Priority = 'Low');
        insert c;
        Case result = [SELECT Priority FROM Case WHERE Id = :c.Id];
        System.assertEquals('High', result.Priority);
    }

    @isTest
    static void OrderCancelStaysSame() {
        Case c = new Case(Subject = 'Cancel my order', Status = 'New', Priority = 'Low');
        insert c;
        Case result = [SELECT Priority FROM Case WHERE Id = :c.Id];
        System.assertEquals('Low', result.Priority);
    }
    @isTest
    static void normalCaseStaysSame() {
        Case c = new Case(Subject = 'Where is my order', Status = 'New', Priority = 'Low');
        insert c;
        Case result = [SELECT Priority FROM Case WHERE Id = :c.Id];
        System.assertEquals('Low', result.Priority);
    }

    @isTest
    static void bulkInsert200Cases() {
        List<Case> cases = new List<Case>();
        for (Integer i = 0; i < 200; i++) {
            cases.add(new Case(Subject = 'Refund request ' + i, Status = 'New', Priority = 'Low'));
        }
        insert cases;
        Integer highCount = [SELECT COUNT() FROM Case WHERE Priority = 'High'];
        System.assertEquals(200, highCount);
    }
}
