class charybdis::default::privset {
  charybdis::privset { 'local_op':
    order => '01',
    privs => [
      'oper:local_kill',
      'oper:operwall',
    ],
  }
  charybdis::privset { 'server_bot':
    order   => '02',
    extends => 'local_op',
    privs   => [
      'oper:kline',
      'oper:remoteban',
      'snomask:nick_changes',
    ],
  }
  charybdis::privset { 'global_op':
    order   => '03',
    extends => 'local_op',
    privs   => [
      'oper:global_kill',
      'oper:routing',
      'oper:kline',
      'oper:unkline',
      'oper:xline',
      'oper:resv',
      'oper:mass_notice',
      'oper:remoteban',
    ],
  }
  charybdis::privset { 'admin':
    order   => '04',
    extends => 'global_op',
    privs   => [
      'oper:admin',
      'oper:die',
      'oper:rehash',
      'oper:spy',
    ],
  }
}
