/* NOTE: This script requires the _jrpBasePersonAuditTrailEmailAddress view in the Views folder. */

UPDATE       __BasePerson
SET                Email = _jrpBasePersonAuditTrailEmailAddress.OldValue
FROM            __BasePerson INNER JOIN
                         _jrpBasePersonAuditTrailEmailAddress ON __BasePerson.Id = _jrpBasePersonAuditTrailEmailAddress.ItemId