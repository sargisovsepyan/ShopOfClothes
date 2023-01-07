object DataModule1: TDataModule1
  OldCreateOrder = False
  Left = 811
  Top = 352
  Height = 317
  Width = 539
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 184
    Top = 16
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = '['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072']'
    MasterSource = DataSource2
    TableName = #1058#1086#1074#1072#1088
    Left = 112
    Top = 192
    object ADOTable1DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076' '#1090#1086#1074#1072#1088#1072
      ReadOnly = True
    end
    object ADOTable1DSDesigner2: TIntegerField
      FieldName = #1050#1086#1076' '#1073#1088#1077#1085#1076#1072
    end
    object ADOTable1DSDesigner3: TWideStringField
      FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      Size = 50
    end
    object ADOTable1DSDesigner4: TWideStringField
      FieldName = #1054#1087#1080#1089#1072#1085#1080#1077
      Size = 50
    end
    object ADOTable1DSDesigner5: TIntegerField
      FieldName = #1062#1077#1085#1072
    end
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select '#1058#1086#1074#1072#1088'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'],'#1041#1088#1077#1085#1076'.['#1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1088#1077#1085#1076#1072'],'#1058#1086#1074#1072#1088'.'#1053#1072#1080#1084#1077#1085#1086#1074 +
        #1072#1085#1080#1077','#1058#1086#1074#1072#1088'.'#1054#1087#1080#1089#1072#1085#1080#1077','#1058#1086#1074#1072#1088'.'#1062#1077#1085#1072
      'From '#1041#1088#1077#1085#1076','#1058#1086#1074#1072#1088
      'Where('#1041#1088#1077#1085#1076'.['#1050#1086#1076' '#1073#1088#1077#1085#1076#1072'] = '#1058#1086#1074#1072#1088'.['#1050#1086#1076' '#1073#1088#1077#1085#1076#1072'])'
      'ORDER BY ['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072']  ASC')
    Left = 256
    Top = 16
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=SOshop.mdb;Persist ' +
      'Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 16
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1041#1088#1077#1085#1076
    Left = 112
    Top = 72
    object ADOTable2DSDesigner: TAutoIncField
      FieldName = #1050#1086#1076' '#1073#1088#1077#1085#1076#1072
      ReadOnly = True
    end
    object ADOTable2DSDesigner2: TWideStringField
      FieldName = #1053#1072#1079#1074#1072#1085#1080#1077' '#1073#1088#1077#1085#1076#1072
      Size = 50
    end
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 184
    Top = 72
  end
  object DataSource3: TDataSource
    DataSet = ADOTable3
    Left = 184
    Top = 128
  end
  object ADOTable3: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = #1050#1072#1089#1089#1080#1088
    Left = 112
    Top = 128
  end
  object DataSource4: TDataSource
    DataSet = ADOTable1
    Left = 184
    Top = 192
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 448
    Top = 24
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery2
    Left = 384
    Top = 24
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT '#1055#1088#1086#1076#1072#1078#1080'.['#1050#1086#1076' '#1087#1088#1086#1076#1072#1078#1080'],'#1058#1086#1074#1072#1088'.['#1050#1086#1076' '#1058#1086#1074#1072#1088#1072'],'#1058#1086#1074#1072#1088'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085 +
        #1080#1077','#1058#1086#1074#1072#1088'.'#1054#1087#1080#1089#1072#1085#1080#1077','#1058#1086#1074#1072#1088'.'#1062#1077#1085#1072','#1055#1088#1086#1076#1072#1078#1080'.'#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086','#1055#1088#1086#1076#1072#1078#1080'.['#1062#1077#1085#1072' '#1087#1088 +
        #1086#1076#1072#1078#1080']'
      'From '#1055#1088#1086#1076#1072#1078#1080','#1058#1086#1074#1072#1088','#1063#1077#1082
      
        'Where (('#1058#1086#1074#1072#1088'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'] = '#1055#1088#1086#1076#1072#1078#1080'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072']) and ('#1055#1088#1086#1076#1072#1078#1080'.' +
        '['#1050#1086#1076' '#1095#1077#1082#1072'] = '#1063#1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1072']) and ('#1063#1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1072'] = 0))')
    Left = 448
    Top = 80
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery3
    Left = 384
    Top = 80
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery4
    Left = 384
    Top = 152
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'Select '#1055#1088#1086#1076#1072#1078#1080'.['#1050#1086#1076' '#1087#1088#1086#1076#1072#1078#1080'],'#1055#1088#1086#1076#1072#1078#1080'.['#1050#1086#1076' '#1095#1077#1082#1072'],'#1058#1086#1074#1072#1088'.['#1053#1072#1080#1084#1077#1085#1086#1074#1072 +
        #1085#1080#1077'],'#1055#1088#1086#1076#1072#1078#1080'.['#1050#1086#1083#1080#1095#1077#1089#1090#1074#1086'],'#1055#1088#1086#1076#1072#1078#1080'.['#1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080'],'#1055#1088#1086#1076#1072#1078#1080'.'#1044#1072#1090#1072
      'From '#1055#1088#1086#1076#1072#1078#1080','#1058#1086#1074#1072#1088
      'Where ('#1058#1086#1074#1072#1088'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'] = '#1055#1088#1086#1076#1072#1078#1080'.['#1050#1086#1076' '#1090#1086#1074#1072#1088#1072'])'
      'ORDER BY '#1055#1088#1086#1076#1072#1078#1080'.['#1050#1086#1076' '#1087#1088#1086#1076#1072#1078#1080'] ASC')
    Left = 448
    Top = 152
  end
  object DataSource8: TDataSource
    DataSet = ADOQuery5
    Left = 376
    Top = 216
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select '#1063#1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1072'],'#1063#1077#1082'.'#1057#1091#1084#1084#1072','#1050#1072#1089#1089#1080#1088'.'#1060#1048#1054','#1063#1077#1082'.'#1044#1072#1090#1072
      'From '#1063#1077#1082','#1050#1072#1089#1089#1080#1088
      'Where('#1063#1077#1082'.['#1050#1086#1076' '#1082#1072#1089#1089#1080#1088#1072'] = '#1050#1072#1089#1089#1080#1088'.['#1050#1086#1076' '#1082#1072#1089#1089#1080#1088#1072'])'
      'ORDER BY '#1063#1077#1082'.['#1050#1086#1076' '#1095#1077#1082#1072'] ASC')
    Left = 448
    Top = 216
  end
end
