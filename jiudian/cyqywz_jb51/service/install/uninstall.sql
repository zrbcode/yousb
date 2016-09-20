
delete from `{P}_base_pageset` where `coltype`='service';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='service';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='feedback';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='feedbacklook';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='feedbackhis';

delete from `{P}_base_adminauth` where `coltype`='service';
delete from `{P}_member_secure` where `coltype`='service';
delete from `{P}_member_centrule` where `coltype`='service';

delete from `{P}_base_plusdefault` where `coltype`='service';
delete from `{P}_base_plustemp` where `pluslable` regexp 'modService';

delete from `{P}_base_plus` where `coltype`='service';
delete from `{P}_base_plus` where `plustype`='service';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='service';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='feedback';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='feedbacklook';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='feedbackhis';

delete from `{P}_base_plusplan` where `coltype`='service';
delete from `{P}_base_plusplan` where `plustype`='service';
delete from `{P}_base_plusplanid` where `plustype`='service';

DROP TABLE IF EXISTS `{P}_service`;
DROP TABLE IF EXISTS `{P}_service_chang`;
DROP TABLE IF EXISTS `{P}_service_chat`;
DROP TABLE IF EXISTS `{P}_service_feedback`;
DROP TABLE IF EXISTS `{P}_service_group`;


delete from `{P}_base_coltype` where `coltype`='service';


