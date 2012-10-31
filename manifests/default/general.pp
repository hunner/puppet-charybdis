class charybdis::default::general {
  # Quoted values
  charybdis::general { 'default_umodes':
    value  => '+i',
    quoted => true,
  }
  charybdis::general { 'oper_snomask':
    value  => '+s',
    quoted => true,
  }
  charybdis::general { 'default_operstring':
    value  => 'is an IRC Operator',
    quoted => true,
  }
  charybdis::general { 'default_adminstring':
    value  => 'is a Server Administrator',
    quoted => true,
  }
  charybdis::general { 'servicestring':
    value  => 'is a Network Service',
    quoted => true,
  }
  charybdis::general { 'identify_service':
    value  => 'NickServ@services.int',
    quoted => true,
  }
  charybdis::general { 'identify_command':
    value  => 'IDENTIFY',
    quoted => true,
  }
  charybdis::general { 'kline_reason':
    value  => 'K-Lined',
    quoted => true,
  }

  # Unquoted values
  charybdis::general { 'hide_error_messages'        : value => 'opers', }
  charybdis::general { 'hide_spoof_ips'             : value => 'yes', }
  charybdis::general { 'disable_fake_channels'      : value => 'no', }
  charybdis::general { 'tkline_expire_notices'      : value => 'no', }
  charybdis::general { 'default_floodcount'         : value => '10', }
  charybdis::general { 'failed_oper_notice'         : value => 'yes', }
  charybdis::general { 'dots_in_ident'              : value => '2', }
  charybdis::general { 'min_nonwildcard'            : value => '4', }
  charybdis::general { 'min_nonwildcard_simple'     : value => '3', }
  charybdis::general { 'max_accept'                 : value => '100', }
  charybdis::general { 'max_monitor'                : value => '100', }
  charybdis::general { 'anti_nick_flood'            : value => 'yes', }
  charybdis::general { 'max_nick_time'              : value => '20 seconds', }
  charybdis::general { 'max_nick_changes'           : value => '5', }
  charybdis::general { 'anti_spam_exit_message_time': value => '5 minutes', }
  charybdis::general { 'ts_warn_delta'              : value => '30 seconds', }
  charybdis::general { 'ts_max_delta'               : value => '5 minutes', }
  charybdis::general { 'client_exit'                : value => 'yes', }
  charybdis::general { 'collision_fnc'              : value => 'yes', }
  charybdis::general { 'global_snotices'            : value => 'yes', }
  charybdis::general { 'dline_with_reason'          : value => 'yes', }
  charybdis::general { 'kline_delay'                : value => '0 seconds', }
  charybdis::general { 'kline_with_reason'          : value => 'yes', }
  charybdis::general { 'non_redundant_klines'       : value => 'yes', }
  charybdis::general { 'warn_no_nline'              : value => 'yes', }
  charybdis::general { 'use_propagated_bans'        : value => 'yes', }
  charybdis::general { 'stats_e_disabled'           : value => 'no', }
  charybdis::general { 'stats_c_oper_only'          : value => 'no', }
  charybdis::general { 'stats_h_oper_only'          : value => 'no', }
  charybdis::general { 'stats_y_oper_only'          : value => 'no', }
  charybdis::general { 'stats_o_oper_only'          : value => 'yes', }
  charybdis::general { 'stats_P_oper_only'          : value => 'no', }
  charybdis::general { 'stats_i_oper_only'          : value => 'masked', }
  charybdis::general { 'stats_k_oper_only'          : value => 'masked', }
  charybdis::general { 'map_oper_only'              : value => 'no', }
  charybdis::general { 'operspy_admin_only'         : value => 'no', }
  charybdis::general { 'operspy_dont_care_user_info': value => 'no', }
  charybdis::general { 'caller_id_wait'             : value => '1 minute', }
  charybdis::general { 'pace_wait_simple'           : value => '1 second', }
  charybdis::general { 'pace_wait'                  : value => '10 seconds', }
  charybdis::general { 'short_motd'                 : value => 'no', }
  charybdis::general { 'ping_cookie'                : value => 'no', }
  charybdis::general { 'connect_timeout'            : value => '30 seconds', }
  charybdis::general { 'default_ident_timeout'      : value => '5', }
  charybdis::general { 'disable_auth'               : value => 'no', }
  charybdis::general { 'no_oper_flood'              : value => 'yes', }
  charybdis::general { 'max_targets'                : value => '4', }
  charybdis::general { 'client_flood'               : value => '20', }
  charybdis::general { 'use_whois_actually'         : value => 'no', }
  charybdis::general { 'burst_away'                 : value => 'yes', }
  charybdis::general { 'nick_delay'                 : value => '0 seconds', }
  charybdis::general { 'reject_ban_time'            : value => '1 minute', }
  charybdis::general { 'reject_after_count'         : value => '3', }
  charybdis::general { 'reject_duration'            : value => '5 minutes', }
  charybdis::general { 'throttle_duration'          : value => '60', }
  charybdis::general { 'throttle_count'             : value => '4', }

  # Array values
  charybdis::general { 'oper_only_umodes':
    value => [
      'operwall',
      'locops',
      'servnotice',
    ],
  }
  charybdis::general { 'oper_umodes':
    value => [
      'locops',
      'servnotice',
      'operwall',
      'wallop',
    ],
  }
}
