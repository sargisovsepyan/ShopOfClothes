unit Unit2;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDataModule1 = class(TDataModule)
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    ADOConnection1: TADOConnection;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
    ADOTable2DSDesigner: TAutoIncField;
    ADOTable2DSDesigner2: TWideStringField;
    ADOTable1DSDesigner: TAutoIncField;
    ADOTable1DSDesigner2: TIntegerField;
    ADOTable1DSDesigner3: TWideStringField;
    ADOTable1DSDesigner4: TWideStringField;
    ADOTable1DSDesigner5: TIntegerField;
    DataSource3: TDataSource;
    ADOTable3: TADOTable;
    DataSource4: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    ADOQuery4: TADOQuery;
    DataSource8: TDataSource;
    ADOQuery5: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{$R *.dfm}

end.
