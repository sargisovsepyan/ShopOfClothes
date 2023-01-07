unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,DB, Menus;

type
  TForm1 = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Button4: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
    Button5: TButton;
    Button6: TButton;
    DBGrid2: TDBGrid;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    DBGrid3: TDBGrid;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    Label7: TLabel;
    Edit6: TEdit;
    Button14: TButton;
    Button15: TButton;
    DBGrid5: TDBGrid;
    Label8: TLabel;
    DateTimePicker1: TDateTimePicker;
    Button16: TButton;
    DBGrid4: TDBGrid;
    Label9: TLabel;
    Edit7: TEdit;
    Button17: TButton;
    Button18: TButton;
    Label10: TLabel;
    DateTimePicker2: TDateTimePicker;
    Button19: TButton;
    Label11: TLabel;
    Label12: TLabel;
    DateTimePicker3: TDateTimePicker;
    Label13: TLabel;
    DateTimePicker4: TDateTimePicker;
    Button20: TButton;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DateTimePicker5: TDateTimePicker;
    DateTimePicker6: TDateTimePicker;
    Button21: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit5, Unit4, Unit3;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='INSERT into Товар([Код бренда],Наименование,Описание,Цена)'+
' VALUES ('+IntToStr(DBLookupComboBox1.KeyValue)+',"'+Edit1.Text+'",'+'"'+Edit2.Text+'","'+Edit3.Text+'")';
DataModule1.ADOQuery1.ExecSQL;

DataModule1.ADOQuery1.SQL.Text:='select Товар.[Код товара],Бренд.[Название бренда],Товар.Наименование,Товар.Описание,Товар.Цена'+
' From Бренд,Товар '+
'Where(Бренд.[Код бренда] = Товар.[Код бренда]) ORDER BY [Код товара] ASC';


DataModule1.ADOQuery1.Open;

end;

procedure TForm1.Button2Click(Sender: TObject);
var i :string;
begin
i:=DBGrid1.Fields[0].AsString;
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:= 'DELETE * FROM Товар Where (Товар.[Код товара] = '+i+')';
DataModule1.ADOQuery1.ExecSQL;
FormShow(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='select Товар.[Код товара],Бренд.[Название бренда],Товар.Наименование,Товар.Описание,Товар.Цена'+
' From Бренд,Товар '+
'Where(Бренд.[Код бренда] = Товар.[Код бренда]) ORDER BY [Код товара] ASC';
DataModule1.ADOQuery1.Open;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
 Button4.Enabled:=True;
 Edit1.Text:=DBGrid1.Fields[2].AsString;
 Edit2.Text:=DBGrid1.Fields[3].AsString;
 Edit3.Text:=DBGrid1.Fields[4].AsString;
 DataModule1.ADOTable2.Locate('Название бренда',DBGrid1.Fields[1].AsString,[loCaseInsensitive, loPartialKey]);  // !!!ОБРАТИ Внимание!!! Для того что бы добавить в таблицу "Меню" код категории
//нам нужно получить ключевое значение это категории, но у нас есть только ее название из DBGrid1 - третье поле. Для этого используется эта строка она ищет в ADOTable нужную запись по названию категории и переводит указатель на найденную запись
 DBLookupComboBox1.KeyValue:= StrToInt(DataModule1.DataSource2.DataSet.Fields[0].AsString);

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
DBLookupComboBox1.KeyValue:=1;
DateTimePicker1.Date:=Now;
DateTimePicker2.Date:=Now;
DateTimePicker3.Date:=Now;
DateTimePicker4.Date:=Now;
DateTimePicker5.Date:=Now;
DateTimePicker6.Date:=Now;
end;

procedure TForm1.Button4Click(Sender: TObject);
var s : string;
begin
s:=DBGrid1.Fields[0].AsString;
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='UPDATE Товар SET Товар.[Код бренда] = '+IntToStr(DBLookupComboBox1.KeyValue)+', Товар.Наименование = "'+Edit1.Text+'", Товар.Описание = "'+Edit2.Text +'", Товар.Цена = "'+Edit3.Text+'" Where ((([Код товара])='+s+'))';
DataModule1.ADOQuery1.ExecSQL;
FormShow(Sender);




end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='select Товар.[Код товара],Бренд.[Название бренда],Товар.Наименование,Товар.Описание,Товар.Цена'+
' From Бренд,Товар '+
'Where((Бренд.[Код бренда] = Товар.[Код бренда]) and (Товар.Наименование like "%'+Edit4.Text+'%")) ORDER BY [Код товара] ASC';
DataModule1.ADOQuery1.Open;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='select Товар.[Код товара],Бренд.[Название бренда],Товар.Наименование,Товар.Описание,Товар.Цена'+
' From Бренд,Товар '+
'Where((Бренд.[Код бренда] = Товар.[Код бренда]) and (Товар.[Код товара] =  '+Edit5.Text+')) ORDER BY [Код товара] ASC';
DataModule1.ADOQuery1.Open;

end;

procedure TForm1.Button6Click(Sender: TObject);
begin
DataModule1.ADOQuery1.Close;
DataModule1.ADOQuery1.SQL.Text:='select Товар.[Код товара],Бренд.[Название бренда],Товар.Наименование,Товар.Описание,Товар.Цена'+
' From Бренд,Товар '+
'Where(Бренд.[Код бренда] = Товар.[Код бренда]) ORDER BY [Код товара] ASC';
DataModule1.ADOQuery1.Open;

end;

procedure TForm1.N1Click(Sender: TObject);
begin
        Form1.Show;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
        DataModule1.ADOTable2.Insert;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
        IF MessageDlg ('Подтвердите удаление записи',mtConfirmation,[mbYes, mbNo],0) = mrYes THEN
                       DataModule1.AdoTable2.Delete;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
        DataModule1.ADOTable3.Insert;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
         IF MessageDlg ('Подтвердите удаление записи',mtConfirmation,[mbYes, mbNo],0) = mrYes THEN
                       DataModule1.AdoTable3.Delete;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
         Form5.QRLabel3.Caption:=DateToStr(Form3.datetimepicker1.date);
         Form5.QuickRep1.PreviewModal;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
        DataModule1.ADOQuery4.Close;
        DataModule1.ADOQuery4.SQL.Text:='Select Продажи.[Код продажи],Продажи.[Код чека],Товар.[Наименование],Продажи.[Количество],Продажи.[Цена продажи],Продажи.[Дата] '+
                                        'From Продажи,Товар ' +
                                        'Where (Товар.[Код товара] = Продажи.[Код товара]) and (Продажи.[Код чека] = '+Edit6.Text+')' ;

        DataModule1.ADOQuery4.Open;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
        DataModule1.ADOQuery4.Close;
        DataModule1.ADOQuery4.SQL.Text:='Select Продажи.[Код продажи],Продажи.[Код чека],Товар.[Наименование],Продажи.[Количество],Продажи.[Цена продажи],Продажи.[Дата] '+
                                        'From Продажи,Товар ' +
                                        'Where (Товар.[Код товара] = Продажи.[Код товара])';

        DataModule1.ADOQuery4.Open;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
        DataModule1.ADOQuery4.Close;

        DataModule1.ADOQuery4.SQL.Text:='Select Продажи.[Код продажи],Продажи.[Код чека],Товар.[Наименование],Продажи.[Количество],Продажи.[Цена продажи],Продажи.[Дата] '+
                                        'From Продажи,Товар ' +
                                        'Where ((Товар.[Код товара] = Продажи.[Код товара]) and (Продажи.Дата = :dt))' ;
        DataModule1.ADOQuery4.Parameters.ParamByName('dt').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker1.Date);
        DataModule1.ADOQuery4.Open;


        
end;

procedure TForm1.Button17Click(Sender: TObject);
begin
        DataModule1.ADOQuery5.Close;

        DataModule1.ADOQuery5.SQL.Text:='Select Чек.[Код чека],Чек.Сумма,Кассир.ФИО,Чек.Дата '+
                                        'From Чек,Кассир '+
                                        'Where(Чек.[Код кассира] = Кассир.[Код кассира]) and (Чек.[Код чека] = '+Edit7.Text+')';

        DataModule1.ADOQuery5.Open;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
        DataModule1.ADOQuery5.Close;

        DataModule1.ADOQuery5.SQL.Text:='Select Чек.[Код чека],Чек.Сумма,Кассир.ФИО,Чек.Дата '+
                                        'From Чек,Кассир '+
                                        'Where(Чек.[Код кассира] = Кассир.[Код кассира]) '+
                                        'ORDER BY ЧЕК.[Код чека] ASC';

        DataModule1.ADOQuery5.Open;
end;

procedure TForm1.Button19Click(Sender: TObject);
begin
        DataModule1.ADOQuery5.Close;

        DataModule1.ADOQuery5.SQL.Text:='Select Чек.[Код чека],Чек.Сумма,Кассир.ФИО,Чек.Дата '+
                                        'From Чек,Кассир '+
                                        'Where((Чек.[Код кассира] = Кассир.[Код кассира]) and (Чек.Дата = :dt))' ;
        DataModule1.ADOQuery5.Parameters.ParamByName('dt').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker2.Date);
        DataModule1.ADOQuery5.Open;
end;

procedure TForm1.Button20Click(Sender: TObject);
begin
        DataModule1.ADOQuery4.Close;
        DataModule1.ADOQuery4.SQL.Text:='Select Продажи.[Код продажи],Продажи.[Код чека],Товар.[Наименование],Продажи.[Количество],Продажи.[Цена продажи],Продажи.[Дата] '+
                                        'From Продажи,Товар ' +
                                        'Where ((Товар.[Код товара] = Продажи.[Код товара]) and (Продажи.Дата BETWEEN :dt1 AND :dt2))' ;
        DataModule1.ADOQuery4.Parameters.ParamByName('dt1').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker3.Date);
        DataModule1.ADOQuery4.Parameters.ParamByName('dt2').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker4.Date);
        DataModule1.ADOQuery4.Open;
end;

procedure TForm1.Button21Click(Sender: TObject);
begin
        DataModule1.ADOQuery5.Close;

        DataModule1.ADOQuery5.SQL.Text:='Select Чек.[Код чека],Чек.Сумма,Кассир.ФИО,Чек.Дата '+
                                        'From Чек,Кассир '+
                                        'Where((Чек.[Код кассира] = Кассир.[Код кассира]) and (Чек.Дата BETWEEN :dt1 AND :dt2))' ;

        DataModule1.ADOQuery5.Parameters.ParamByName('dt1').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker5.Date);
        DataModule1.ADOQuery5.Parameters.ParamByName('dt2').Value:=FormatDateTime('dd/mm/yyyy',DateTimePicker6.Date);
        DataModule1.ADOQuery5.Open;
end;

end.
