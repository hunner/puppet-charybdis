class charybdis::default::alias {
  charybdis::alias { 'NickServ':
    target => 'NickServ',
  }
  charybdis::alias { 'ChanServ':
    target => 'ChanServ',
  }
  charybdis::alias { 'OperServ':
    target => 'OperServ',
  }
  charybdis::alias { 'MemoServ':
    target => 'MemoServ',
  }
  charybdis::alias { 'NS':
    target => 'NickServ',
  }
  charybdis::alias { 'CS':
    target => 'ChanServ',
  }
  charybdis::alias { 'OS':
    target => 'OperServ',
  }
  charybdis::alias { 'MS':
    target => 'MemoServ',
  }
}
