class charybdis::default::channel {
  charybdis::channel { 'use_invex'                 : value => 'yes', }
  charybdis::channel { 'use_except'                : value => 'yes', }
  charybdis::channel { 'use_knock'                 : value => 'yes', }
  charybdis::channel { 'use_forward'               : value => 'yes', }
  charybdis::channel { 'knock_delay'               : value => '5 minutes', }
  charybdis::channel { 'knock_delay_channel'       : value => '1 minute', }
  charybdis::channel { 'max_chans_per_user'        : value => '15', }
  charybdis::channel { 'max_bans'                  : value => '100', }
  charybdis::channel { 'max_bans_large'            : value => '500', }
  charybdis::channel { 'default_split_user_count'  : value => '0', }
  charybdis::channel { 'default_split_server_count': value => '0', }
  charybdis::channel { 'no_create_on_split'        : value => 'no', }
  charybdis::channel { 'no_join_on_split'          : value => 'no', }
  charybdis::channel { 'burst_topicwho'            : value => 'yes', }
  charybdis::channel { 'kick_on_split_riding'      : value => 'no', }
  charybdis::channel { 'only_ascii_channels'       : value => 'no', }
  charybdis::channel { 'resv_forcepart'            : value => 'yes', }
  charybdis::channel { 'channel_target_change'     : value => 'yes', }
}
