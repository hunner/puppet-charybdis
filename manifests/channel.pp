class charybdis::channel (
  $settings = {
    'use_invex'                  => 'yes',
    'use_except'                 => 'yes',
    'use_knock'                  => 'yes',
    'use_forward'                => 'yes',
    'knock_delay'                => '5 minutes',
    'knock_delay_channel'        => '1 minute',
    'max_chans_per_user'         => '15',
    'max_bans'                   => '100',
    'max_bans_large'             => '500',
    'default_split_user_count'   => '0',
    'default_split_server_count' => '0',
    'no_create_on_split'         => 'no',
    'no_join_on_split'           => 'no',
    'burst_topicwho'             => 'yes',
    'kick_on_split_riding'       => 'no',
    'only_ascii_channels'        => 'no',
    'resv_forcepart'             => 'yes',
    'channel_target_change'      => 'yes',
  },
  $conffile = $charybdis::conffile
) {
  concat::fragment { 'channel conf':
    target  => $conffile,
    content => template('charybdis/channel.erb'),
    order   => '080',
  }
}
