trigger CaseTriggerproject on Case (before insert) {
    for (Case c : Trigger.new) {
        if (c.Subject != null &&
           (c.Subject.containsIgnoreCase('refund') ||
            c.Subject.containsIgnoreCase('chargeback')||
            c.Subject.containsIgnoreCase('unrecognized charge'))) {
            c.Priority = 'High';
        }
    }
}
