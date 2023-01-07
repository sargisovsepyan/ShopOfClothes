unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
var login_Admin,password_Admin : string;
    login_User,password_User : string;
begin
        login_Admin:='admin';
        password_Admin:='admin';

        login_User:='user';
        password_User:='user';

        if ((Edit1.Text = login_Admin) and (Edit2.Text = password_Admin)) then
                begin
                    Form6.Visible:=False;
                    Form3.N1.Enabled:=True;
                    Form3.Show;
                end
        else if  ((Edit1.Text = login_User) and (Edit2.Text = password_User)) then
                begin
                    Form6.Visible:=False;
                    Form3.Show;
                    Form3.N1.Enabled:=False;
                end
        else
                begin
                    MessageBox(handle,'Неправильный логин или пароль!','ERROR!', MB_ICONSTOP+MB_OK);
                    Edit1.Text:='';
                    Edit2.Text:='';
                end;

                Edit1.Text:='';
                Edit2.Text:='';
                form3.DBLookupComboBox1.Enabled:=true;

end;

end.
