
delete from `{P}_base_pageset` where `coltype`='down';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='downgl';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='downfabu';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='downmodify';
delete from `{P}_base_pageset` where `coltype`='member' and `pagename`='downcat';

delete from `{P}_base_adminauth` where `coltype`='down';
delete from `{P}_member_secure` where `coltype`='down';
delete from `{P}_member_centrule` where `coltype`='down';

delete from `{P}_comment_cat` where `coltype`='down';

delete from `{P}_base_plusdefault` where `coltype`='down';
delete from `{P}_base_plustemp` where `pluslable` regexp 'modDown';

delete from `{P}_base_plus` where `coltype`='down';
delete from `{P}_base_plus` where `plustype`='down';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='downgl';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='downfabu';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='downmodify';
delete from `{P}_base_plus` where `plustype`='member' and `pluslocat`='downcat';

delete from `{P}_base_plusplan` where `coltype`='down';
delete from `{P}_base_plusplan` where `plustype`='down';
delete from `{P}_base_plusplanid` where `plustype`='down';

DROP TABLE IF EXISTS `{P}_down_cat`;
DROP TABLE IF EXISTS `{P}_down_con`;
DROP TABLE IF EXISTS `{P}_down_config`;
DROP TABLE IF EXISTS `{P}_down_downlog`;
DROP TABLE IF EXISTS `{P}_down_pages`;
DROP TABLE IF EXISTS `{P}_down_pcat`;
DROP TABLE IF EXISTS `{P}_down_proj`;
DROP TABLE IF EXISTS `{P}_down_prop`;

delete from `{P}_base_coltype` where `coltype`='down';
