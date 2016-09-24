unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxProgressBar, Vcl.Menus, Vcl.StdCtrls,
  cxButtons, cxGroupBox, dxSkinscxPCPainter, dxBarBuiltInMenu, cxPC,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, cxLabel,
  cxTextEdit, cxCheckBox, System.IniFiles, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL, FireDAC.Phys.FBDef, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  dxSkinLilian, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light;

type
  TMainForm = class(TForm)
    cxProgressBar: TcxProgressBar;
    cxGroupBox1: TcxGroupBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    MySQLConnection: TFDConnection;
    FirebirdConnection: TFDConnection;
    cxGroupBox2: TcxGroupBox;
    cxLabel1: TcxLabel;
    MySQLBancocxTextEdit: TcxTextEdit;
    cxLabel2: TcxLabel;
    MySQLUsercxTextEdit: TcxTextEdit;
    cxLabel3: TcxLabel;
    MySQLSenhacxTextEdit: TcxTextEdit;
    cxGroupBox3: TcxGroupBox;
    cxLabel4: TcxLabel;
    FirebirBancocxTextEdit: TcxTextEdit;
    cxLabel5: TcxLabel;
    FirebirUsercxTextEdit: TcxTextEdit;
    cxLabel6: TcxLabel;
    FirebirSenhacxTextEdit: TcxTextEdit;
    FirebirConectarcxCheckBox: TcxCheckBox;
    MySQLConectarcxCheckBox: TcxCheckBox;
    MySQLPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    FirebirdPhysFBDriverLink: TFDPhysFBDriverLink;
    cxLabel7: TcxLabel;
    MySQLServercxTextEdit: TcxTextEdit;
    procedure FormCreate(Sender: TObject);
    procedure MySQLBancocxTextEditExit(Sender: TObject);
    procedure MySQLUsercxTextEditExit(Sender: TObject);
    procedure MySQLSenhacxTextEditExit(Sender: TObject);
    procedure FirebirBancocxTextEditExit(Sender: TObject);
    procedure FirebirUsercxTextEditExit(Sender: TObject);
    procedure FirebirSenhacxTextEditExit(Sender: TObject);
    procedure MySQLConnectionBeforeConnect(Sender: TObject);
    procedure FirebirdConnectionBeforeConnect(Sender: TObject);
    procedure MySQLConectarcxCheckBoxClick(Sender: TObject);
    procedure FirebirConectarcxCheckBoxClick(Sender: TObject);
    procedure MySQLServercxTextEditExit(Sender: TObject);
  private
    { Private declarations }
    IniFile: TIniFile;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FirebirBancocxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('FIREBIRD', 'Banco', Trim(FirebirBancocxTextEdit.Text));
end;

procedure TMainForm.FirebirConectarcxCheckBoxClick(Sender: TObject);
begin
  FirebirdConnection.Connected := FirebirConectarcxCheckBox.Checked;
end;

procedure TMainForm.FirebirdConnectionBeforeConnect(Sender: TObject);
begin
  FirebirdConnection.Params.Values['Database']  := FirebirBancocxTextEdit.Text;
  FirebirdConnection.Params.Values['User_Name'] := FirebirUsercxTextEdit.Text;
  FirebirdConnection.Params.Values['Password']  := FirebirSenhacxTextEdit.Text;
end;

procedure TMainForm.FirebirSenhacxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('FIREBIRD', 'Senha', Trim(FirebirSenhacxTextEdit.Text));
end;

procedure TMainForm.FirebirUsercxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('FIREBIRD', 'Usuario', Trim(FirebirUsercxTextEdit.Text));
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  IniFile := TIniFile.Create(ChangeFileExt(Application.ExeName, '.ini'));

  if IniFile.ValueExists('MYSQL', 'Banco') then
    MySQLBancocxTextEdit.Text := IniFile.ReadString('MYSQL', 'Banco', '');

  if IniFile.ValueExists('MYSQL', 'Usuario') then
    MySQLUsercxTextEdit.Text := IniFile.ReadString('MYSQL', 'Usuario', '');

  if IniFile.ValueExists('MYSQL', 'Senha') then
    MySQLSenhacxTextEdit.Text := IniFile.ReadString('MYSQL', 'Senha', '');

  if IniFile.ValueExists('MYSQL', 'Server') then
    MySQLServercxTextEdit.Text := IniFile.ReadString('MYSQL', 'Server', '');

  if IniFile.ValueExists('FIREBIRD', 'Banco') then
    FirebirBancocxTextEdit.Text := IniFile.ReadString('FIREBIRD', 'Banco', '');

  if IniFile.ValueExists('FIREBIRD', 'Senha') then
    FirebirSenhacxTextEdit.Text := IniFile.ReadString('FIREBIRD', 'Senha', '');

  if IniFile.ValueExists('FIREBIRD', 'Usuario') then
    FirebirUsercxTextEdit.Text := IniFile.ReadString('FIREBIRD', 'Usuario', '');
end;

procedure TMainForm.MySQLBancocxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('MYSQL', 'Banco', Trim(MySQLBancocxTextEdit.Text));
end;

procedure TMainForm.MySQLConectarcxCheckBoxClick(Sender: TObject);
begin
  MySQLConnection.Connected := MySQLConectarcxCheckBox.Checked;
end;

procedure TMainForm.MySQLConnectionBeforeConnect(Sender: TObject);
begin
  MySQLConnection.Params.Values['Server']    := MySQLServercxTextEdit.Text;
  MySQLConnection.Params.Values['Database']  := MySQLBancocxTextEdit.Text;
  MySQLConnection.Params.Values['User_Name'] := MySQLUsercxTextEdit.Text;
  MySQLConnection.Params.Values['Password']  := MySQLSenhacxTextEdit.Text;
end;

procedure TMainForm.MySQLSenhacxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('MYSQL', 'Senha', Trim(MySQLSenhacxTextEdit.Text));
end;

procedure TMainForm.MySQLUsercxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('MYSQL', 'Usuario', Trim(MySQLUsercxTextEdit.Text));
end;

procedure TMainForm.MySQLServercxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('MYSQL', 'Server', Trim(MySQLServercxTextEdit.Text));
end;

end.
