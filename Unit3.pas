unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, Grids, DBGrids, StdCtrls, DBCtrls, dbcgrids, ComCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button1: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Button2: TButton;
    Button3: TButton;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Button4: TButton;
    UpDown1: TUpDown;
    Button6: TButton;
    DBGrid1: TDBGrid;
    DateTimePicker1: TDateTimePicker;
    DBGrid2: TDBGrid;
    Button5: TButton;
    N2: TMenuItem;
    N3: TMenuItem;
    Label8: TLabel;
    Label9: TLabel;
    Edit2: TEdit;
    Label10: TLabel;
    Edit3: TEdit;
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N3Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  Cheknom : string;
  Cheksum : string;
  Cena_prod : string;
implementation

uses Unit1, Unit2, Unit4, Unit6, Unit7;

{$R *.dfm}

procedure TForm3.N1Click(Sender: TObject);
begin
        Form1.Show;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
 DateTimePicker1.Date:=Now;

end;

procedure TForm3.Button4Click(Sender: TObject);
begin
        Edit1.Enabled:=true;
        UpDown1.Enabled:=true;
        Button1.Enabled:=true;
        
        DBLookupComboBox1.Enabled:=false;

        DataModule1.ADOQuery2.Close;
        DataModule1.ADOQuery2.SQL.Text:= 'Insert INTO ��� (�����,[��� �������],����) Values(0,"'+IntToStr(DBLookupComboBox1.KeyValue)+'","'+FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date)+'")';
        DataModule1.ADOQuery2.ExecSQL;

        DataModule1.ADOQuery2.close;
        DataModule1.ADOQuery2.SQL.text:='SELECT * FROM ��� ORDER BY [��� ����]';
        DataModule1.ADOQuery2.Open;

        DataModule1.ADOQuery2.Last;
        Cheknom:=DataModule1.DataSource5.DataSet.Fields[0].AsString;
        Label3.Caption:=ChekNom;

        DataModule1.ADOQuery3.close;
        DataModule1.ADOQuery3.SQL.text:='SELECT �������.[��� �������],�����.[��� ������],�����.������������,�����.��������,�����.����,�������.����������,�������.[���� �������]'+
        ' From �������,�����,��� '+
        ' Where ((�����.[��� ������] = �������.[��� ������]) and (�������.[��� ����] = ���.[��� ����]) and (���.[��� ����] = '+Cheknom+'))';
        DataModule1.ADOQuery3.Open;
        
        Cheksum:='0';
        Label5.Caption:=Cheksum;
        Button4.Enabled:=False;

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
        Button6.Enabled:=true;
        Button2.Enabled:=true;
        Button3.Enabled:=true;
        Cena_prod:=Inttostr(DBGrid1.Fields[4].AsInteger*strtoint(Edit1.Text));

          DataModule1.ADOQuery2.Close;
          DataModule1.ADOQuery2.SQL.Text:=  'Insert into �������([��� ������],[��� ����],����������,[���� �������],����) '+
          'Values ('+ DBGrid1.Fields[0].AsString+','+Cheknom+','+Edit1.Text+','+Cena_prod+',"'+FormatDateTime('dd.mm.yyyy',DateTimePicker1.Date)+'")';
          DataModule1.ADOQuery2.ExecSQL;

          DataModule1.ADOQuery3.close;
          DataModule1.ADOQuery3.SQL.text:='SELECT �������.[��� �������],�����.[��� ������],�����.������������,�����.��������,�����.����,�������.����������,�������.[���� �������]'+
          ' From �������,�����,��� '+
          ' Where ((�����.[��� ������] = �������.[��� ������]) and (�������.[��� ����] = ���.[��� ����]) and (���.[��� ����] = '+Cheknom+'))';
          DataModule1.ADOQuery3.Open;

          DataModule1.ADOQuery2.close;
          DataModule1.ADOQuery2.Sql.Text:='Select SUM([���� �������]) From ������� Where([��� ����] = '+ChekNom+')';
          DataModule1.AdoQuery2.open;

          ChekSum:=DataModule1.ADOQuery2.Fields[0].AsString;
          label5.Caption:= ChekSum;

          DataModule1.ADOQuery2.Close;
          DataModule1.ADOQuery2.SQL.Text:='UPDATE ��� Set ����� = '+ChekSum+' Where ([��� ����] = '+ChekNom+')';
          DataModule1.ADOQuery2.ExecSQL;

          edit1.Text:='1';

end;


procedure TForm3.Button6Click(Sender: TObject);
begin
        Button4.Enabled:=True;
        Button1.Enabled:=False;
        Button3.Enabled:=false;
        Button6.Enabled:=false;

end;

procedure TForm3.Button3Click(Sender: TObject);
begin
        {DataModule2.ADOQZaprosi.Close;
        DataModule2.ADOQZaprosi.SQL.Text:='DELETE �������.[��� ������] FROM ������� WHERE �������.[��� ������]='+DBGrid1.Fields[0].AsString;
        DataModule2.ADOQZaprosi.ExecSQL;  }

        DAtaModule1.ADOQuery2.Close;
        DataModule1.ADOQuery2.SQL.Text:='Delete * From ������� Where([��� �������]='+DBGrid2.Fields[0].AsString+')';
        DataModule1.ADOQuery2.ExecSQL;

        DataModule1.ADOQuery3.close;
        DataModule1.ADOQuery3.SQL.text:='SELECT �������.[��� �������],�����.[��� ������],�����.������������,�����.��������,�����.����,�������.����������,�������.[���� �������]'+
        ' From �������,�����,��� '+
        ' Where ((�����.[��� ������] = �������.[��� ������]) and (�������.[��� ����] = ���.[��� ����]) and (���.[��� ����] = '+Cheknom+'))';
        DataModule1.ADOQuery3.Open;

        DataModule1.ADOQuery2.close;
        DataModule1.ADOQuery2.Sql.Text:='Select SUM([���� �������]) From ������� Where([��� ����] = '+ChekNom+')';
        DataModule1.AdoQuery2.open;

        ChekSum:=DataModule1.ADOQuery2.Fields[0].AsString;
        label5.Caption:= ChekSum;

        {DataModule2.ADOQZaprosi.Close;
        DataModule2.ADOQZaprosi.SQL.Text:='SELECT COUNT (*) FROM ������� WHERE �������.[��� ����]= '+ChekNom;
        DataModule2.ADOQZaprosi.Open;

        if DataModule2.ADOQZaprosi.Fields[0].AsInteger=0 then
        begin
                DataModule2.ADOQZaprosi.Close;
                DataModule2.ADOQZaprosi.SQL.Text:='UPDATE ��� SET ���.[����� ���������]=0 WHERE (((���.[��� ����])='+ChekNom+'))';
                DataModule2.ADOQZaprosi.ExecSQL;
                Button3.Enabled:=false;
                Button4.Enabled:=false;
        end
        else
        begin
                DataModule2.ADOQZaprosi.Close;
                DataModule2.ADOQZaprosi.SQL.Text:='UPDATE ��� SET ���.[����� ���������] = '+ChekSum+' WHERE (((���.[��� ����])='+ChekNom+'))';
                DataModule2.ADOQZaprosi.ExecSQL;
        end;}

        DataModule1.ADOQuery2.close;
        DataModule1.ADOQuery2.SQL.Text:='Select COUNT (*) From ������� Where [��� ����] = '+ChekNom;
        DataModule1.ADOQuery2.open;

        if DataModule1.ADOQuery2.Fields[0].AsInteger=0 then
                begin
                DataModule1.ADOQuery2.Close;
                DataModule1.ADOQuery2.SQL.Text:='UPDATE ��� Set ����� = 0 Where ([��� ����] = '+ChekNom+')';
                DataModule1.ADOQuery2.ExecSQL;
                Label5.Caption:='0';
                Button3.Enabled:=false;
                Button2.Enabled:=false;
                Button6.Enabled:=false;
                end
        else
                begin
                        DataModule1.ADOQuery2.Close;
                        DataModule1.ADOQuery2.SQL.Text:='UPDATE ��� Set ����� = '+ChekSum+' Where ([��� ����] = '+ChekNom+')';
                        DataModule1.ADOQuery2.ExecSQL;
                end;

        
end;


procedure TForm3.Button2Click(Sender: TObject);
begin
    Form4.QRLabel1.Caption:='��� � :'+ChekNom;
    Form4.QRLabel2.Caption:=DateToStr(datetimepicker1.date);
    Form4.Qrlabel10.Caption:='� ������ : '+ChekSum+' ���';
    Form4.QuickRep1.PreviewModal;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
        Halt;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
        Form3.Visible:=False;
        Form6.Visible:=True;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        Halt;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
        Form7.Show;

end;

procedure TForm3.Edit2Change(Sender: TObject);
begin
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='select �����.[��� ������],�����.[�������� ������],�����.������������,�����.��������,�����.���� '+
'From �����,����� '+
'Where(�����.[��� ������] = �����.[��� ������]) and (�����.������������ like "%'+Edit2.Text+'%")'+
'ORDER BY [��� ������]  ASC';
DataModule1.ADOQuery1.Open;
end;
procedure TForm3.Edit3Change(Sender: TObject);
begin
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='select �����.[��� ������],�����.[�������� ������],�����.������������,�����.��������,�����.���� '+
'From �����,����� '+
'Where(�����.[��� ������] = �����.[��� ������]) and (�����.[��� ������] like "%'+Edit3.Text+'%")'+
'ORDER BY [��� ������]  ASC';
DataModule1.ADOQuery1.Open;
end;

end.
