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
  dxSkinVisualStudio2013Light, System.Types, System.IOUtils, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, System.StrUtils,
  cxMemo;

type
  TMainForm = class(TForm)
    cxProgressBar: TcxProgressBar;
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
    MySQLQuery: TFDQuery;
    MySQLTransaction: TFDTransaction;
    MainMenu: TMainMenu;
    ImportarCSV1: TMenuItem;
    PISCOFINSCST1: TMenuItem;
    IPICST1: TMenuItem;
    ICMSORIGEM1: TMenuItem;
    ICMSCST1: TMenuItem;
    CFOP1: TMenuItem;
    NCM1: TMenuItem;
    CEST1: TMenuItem;
    CIDADES1: TMenuItem;
    MySQL2Query: TFDQuery;
    cxMemo1: TcxMemo;
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
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure PISCOFINSCST1Click(Sender: TObject);
    procedure IPICST1Click(Sender: TObject);
    procedure ICMSCST1Click(Sender: TObject);
    procedure ICMSORIGEM1Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure NCM1Click(Sender: TObject);
    procedure CEST1Click(Sender: TObject);
    procedure CIDADES1Click(Sender: TObject);
  private
    { Private declarations }
    IniFile: TIniFile;
    ResourceStream: TResourceStream;
    ArquivoNome: TFileName;
    Linhas:      TStringList;
    Valores:     TStrings;
    procedure ImportPISCOFINS;
    procedure ImportIPI;
    procedure ImportICMS;
    procedure ImportICMSORIGEM;
    procedure ImportNCM;
    procedure ImportCEST;
    procedure ImportCFOP;
    procedure ImportCIDADES;
    function GetUF(UF: string): string;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.CEST1Click(Sender: TObject);
begin
  ImportCEST;
end;

procedure TMainForm.CFOP1Click(Sender: TObject);
begin
  ImportCFOP;
end;

procedure TMainForm.CIDADES1Click(Sender: TObject);
begin
  ImportCIDADES;
end;

procedure TMainForm.cxButton1Click(Sender: TObject);
begin
  ImportPISCOFINS;
end;

procedure TMainForm.cxButton3Click(Sender: TObject);
begin
  ImportIPI;
end;

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

function TMainForm.GetUF(UF: string): string;
begin
  if UF = '11' then
    Result := 'RO'
  else if UF = '12' then
    Result := 'AC'
  else if UF = '13' then
    Result := 'AM'
  else if UF = '14' then
    Result := 'RR'
  else if UF = '15' then
    Result := 'PA'
  else if UF = '16' then
    Result := 'AP'
  else if UF = '17' then
    Result := 'TO'
  else if UF = '21' then
    Result := 'MA'
  else if UF = '22' then
    Result := 'PI'
  else if UF = '23' then
    Result := 'CE'
  else if UF = '24' then
    Result := 'RN'
  else if UF = '25' then
    Result := 'PB'
  else if UF = '26' then
    Result := 'PE'
  else if UF = '27' then
    Result := 'AL'
  else if UF = '28' then
    Result := 'SE'
  else if UF = '29' then
    Result := 'BH'
  else if UF = '31' then
    Result := 'MG'
  else if UF = '32' then
    Result := 'ES'
  else if UF = '33' then
    Result := 'RJ'
  else if UF = '35' then
    Result := 'SP'
  else if UF = '41' then
    Result := 'PR'
  else if UF = '42' then
    Result := 'SC'
  else if UF = '43' then
    Result := 'RS'
  else if UF = '50' then
    Result := 'MS'
  else if UF = '51' then
    Result := 'MT'
  else if UF = '52' then
    Result := 'GO'
  else if UF = '53' then
    Result := 'DF'
end;

procedure TMainForm.ICMSCST1Click(Sender: TObject);
begin
  ImportICMS;
end;

procedure TMainForm.ICMSORIGEM1Click(Sender: TObject);
begin
  ImportICMSORIGEM;
end;

procedure TMainForm.ImportCEST;
var
  I, Count_Ncm: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'CEST', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 1 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        if Valores[1] <> '' then
        begin
          MySQLQuery.Close;
          MySQLQuery.SQL.Text := 'INSERT INTO Cest (cest, descricao, created_at, updated_at)VALUES(:CEST, :DESCRICAO, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                                 'ON DUPLICATE KEY UPDATE cest=:CEST';
          MySQLQuery.Prepare;
          MySQLQuery.ParamByName('CEST').AsString      := Valores[0];
          MySQLQuery.ParamByName('DESCRICAO').AsString := Valores[2];
          MySQLQuery.ExecSQL;

          MySQL2Query.Close;
          MySQL2Query.SQL.Text := 'SELECT ncm FROM Ncm WHERE ncm LIKE :NCM';
          MySQL2Query.Prepare;
          MySQL2Query.ParamByName('NCM').AsString := Valores[1]+'%';
          MySQL2Query.Open;

          MySQL2Query.First;
          Count_Ncm := 0;
          MySQLQuery.Close;
          MySQLQuery.SQL.Text := 'INSERT INTO Ncm_Cest (cest, ncm, created_at, updated_at)VALUES(:CEST, :NCM, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                                 'ON DUPLICATE KEY UPDATE cest=:CEST, ncm=:NCM';
          while not MySQL2Query.Eof do
          begin
            cxMemo1.Lines.Add('CEST: '+Valores[0]+'NCM: '+MySQL2Query.FieldByName('ncm').AsString);
            MySQLQuery.Prepare;
            MySQLQuery.ParamByName('CEST').AsString  := Valores[0];
            MySQLQuery.ParamByName('NCM').AsString   := MySQL2Query.FieldByName('ncm').AsString;
            MySQLQuery.ExecSQL;
            Inc(Count_Ncm);
            MySQL2Query.Next;
          end;

          if Count_Ncm = 0 then
          begin
            MySQLQuery.Close;
            MySQLQuery.SQL.Text := 'INSERT INTO Ncm(ncm, descricao, created_at, updated_at)VALUES(:NCM,:NCM, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                                   'ON DUPLICATE KEY UPDATE ncm=:NCM';
            MySQLQuery.Prepare;
            MySQLQuery.ParamByName('NCM').AsString      := Valores[1];
            MySQLQuery.ExecSQL;

            MySQLQuery.Close;
            MySQLQuery.SQL.Text := 'INSERT INTO Ncm_Cest (cest, ncm, created_at, updated_at)VALUES(:CEST, :NCM, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                                   'ON DUPLICATE KEY UPDATE cest=:CEST, ncm=:NCM';
            MySQLQuery.Prepare;
            MySQLQuery.ParamByName('CEST').AsString  := Valores[0];
            MySQLQuery.ParamByName('NCM').AsString   := Valores[1];
            MySQLQuery.ExecSQL;
          end;
        end
        else
        begin
          MySQLQuery.Close;
          MySQLQuery.SQL.Text := 'INSERT INTO Cest (cest, descricao, created_at, updated_at)VALUES(:CEST, :DESCRICAO, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                                 'ON DUPLICATE KEY UPDATE cest=:CEST';
          MySQLQuery.Prepare;
          MySQLQuery.ParamByName('CEST').AsString      := Valores[0];
          MySQLQuery.ParamByName('DESCRICAO').AsString := Valores[2];
          MySQLQuery.ExecSQL;
        end;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabela CEST importada com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.ImportCFOP;
var
  I: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'CFOP', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 0 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        MySQLQuery.Close;
        MySQLQuery.SQL.Text := 'INSERT INTO Cfop(cfop, descricao, created_at, updated_at)VALUES '+
                               '(:cfop, :descricao, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE cfop=:cfop';
        MySQLQuery.Prepare;
        MySQLQuery.ParamByName('cfop').AsInteger     := StrToInt(Valores[0]);
        MySQLQuery.ParamByName('descricao').AsString := Valores[1];
        MySQLQuery.ExecSQL;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabela CFOP importada com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.ImportCIDADES;
var
  I: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'CIDADES', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 1 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        MySQLQuery.Close;
        MySQLQuery.SQL.Text := 'INSERT INTO Estados(id, nome, uf, created_at, updated_at)VALUES '+
                               '(:estado_id, :estado_nome, :uf, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE id=:estado_id; '+
                               'INSERT INTO Cidades(id, nome, estado_id, created_at, updated_at)VALUES '+
                               '(:cidade_id, :cidade_nome, :estado_id, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE id=:cidade_id;';
        MySQLQuery.Prepare;
        MySQLQuery.ParamByName('estado_id').AsInteger  := StrToInt(Valores[0]);
        MySQLQuery.ParamByName('uf').AsString          := GetUF(Valores[0]);
        MySQLQuery.ParamByName('estado_nome').AsString := Valores[1];

        MySQLQuery.ParamByName('cidade_id').AsString   := Valores[7];
        MySQLQuery.ParamByName('cidade_nome').AsString        := Valores[8];
        MySQLQuery.ParamByName('estado_id').AsInteger  := StrToInt(Valores[0]);
        MySQLQuery.ExecSQL;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabela ESTADOS e CIDADES importadas com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.ImportICMS;
var
  I: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'ICMS', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 0 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        MySQLQuery.Close;
        MySQLQuery.SQL.Text := 'INSERT INTO Icms_Csts(cst, descricao, created_at, updated_at)VALUES '+
                               '(:icms_cst, :icms_descricao, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE cst=:icms_cst';
        MySQLQuery.Prepare;
        MySQLQuery.ParamByName('icms_cst').AsString := Valores[0];
        MySQLQuery.ParamByName('icms_descricao').AsString := Valores[1];
        MySQLQuery.ExecSQL;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabela ICMS CST importada com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.ImportICMSORIGEM;
var
  I: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'ICMSORIGEM', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 0 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        MySQLQuery.Close;
        MySQLQuery.SQL.Text := 'INSERT INTO Icms_Origens(origem, descricao, created_at, updated_at)VALUES '+
                               '(:icms_origem, :origem_descricao, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE origem=:icms_origem';
        MySQLQuery.Prepare;
        MySQLQuery.ParamByName('icms_origem').AsString := Valores[0];
        MySQLQuery.ParamByName('origem_descricao').AsString := Valores[1];
        MySQLQuery.ExecSQL;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabela ICMS ORIGEM importada com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.ImportIPI;
var
  I: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'IPI', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 0 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        MySQLQuery.Close;
        MySQLQuery.SQL.Text := 'INSERT INTO Ipi_Csts(cst, descricao, created_at, updated_at)VALUES '+
                               '(:ipi_cst, :ipi_descricao, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE cst=:ipi_cst';
        MySQLQuery.Prepare;
        MySQLQuery.ParamByName('ipi_cst').AsString := Valores[0];
        MySQLQuery.ParamByName('ipi_descricao').AsString := Valores[1];
        MySQLQuery.ExecSQL;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabelas IPI importada com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.ImportNCM;
var
  I: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'NCM', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 1 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        MySQLQuery.Close;
        MySQLQuery.SQL.Text := 'INSERT INTO Ncm(ncm, descricao, created_at, updated_at, trib_med_aprox_estadual, trib_med_aprox_fed_imp, trib_med_aprox_fed_nac, trib_med_aprox_municipal)VALUES '+
                               '(:ncm, :descricao, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP, :trib_med_aprox_estadual, :trib_med_aprox_fed_imp, :trib_med_aprox_fed_nac, :trib_med_aprox_municipal) '+
                               'ON DUPLICATE KEY UPDATE ncm=:ncm; ';
        MySQLQuery.Prepare;
        MySQLQuery.ParamByName('ncm').AsString       := Valores[0];
        MySQLQuery.ParamByName('descricao').AsString := Valores[3];
        MySQLQuery.ParamByName('trib_med_aprox_fed_nac').AsCurrency   := StrToCurr(ReplaceStr(Valores[4], '.', ','));
        MySQLQuery.ParamByName('trib_med_aprox_fed_imp').AsCurrency   := StrToCurr(ReplaceStr(Valores[5], '.', ','));
        MySQLQuery.ParamByName('trib_med_aprox_estadual').AsCurrency  := StrToCurr(ReplaceStr(Valores[6], '.', ','));
        MySQLQuery.ParamByName('trib_med_aprox_municipal').AsCurrency := StrToCurr(ReplaceStr(Valores[7], '.', ','));
        MySQLQuery.ExecSQL;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabela NCM importada com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.ImportPISCOFINS;
var
  I: Integer;
begin
  ResourceStream := TResourceStream.Create(HInstance, 'PISCOFINS', RT_RCDATA);

  Valores                 := TStringList.Create;
  Valores.StrictDelimiter := True; // Indica que o delimitador � somente este definido abaixo
  Valores.Delimiter       := ';';

  try
    Linhas := TStringList.Create;
    Linhas.LoadFromStream(ResourceStream);

    cxProgressBar.Properties.Max := Linhas.Count;
    cxProgressBar.Position       := 0;
    cxProgressBar.Visible        := True;

    try
      MySQLConnection.StartTransaction;
      for I := 0 to Linhas.Count - 1 do
      begin
        Valores.Clear;
        Valores.DelimitedText := Linhas[I];

        MySQLQuery.Close;
        MySQLQuery.SQL.Text := 'INSERT INTO Pis_Csts(cst, descricao, created_at, updated_at)VALUES '+
                               '(:pis_cst, :pis_descricao, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE cst=:pis_cst; '+
                               'INSERT INTO Cofins_Csts(cst, descricao, created_at, updated_at)VALUES '+
                               '(:cofins_cst, :cofins_descricao, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP) '+
                               'ON DUPLICATE KEY UPDATE cst=:cofins_cst;';
        MySQLQuery.Prepare;
        MySQLQuery.ParamByName('pis_cst').AsString := Valores[0];
        MySQLQuery.ParamByName('pis_descricao').AsString := Valores[1];

        MySQLQuery.ParamByName('cofins_cst').AsString := Valores[0];
        MySQLQuery.ParamByName('cofins_descricao').AsString := Valores[1];
        MySQLQuery.ExecSQL;

        cxProgressBar.Position := I + 1;
        Application.ProcessMessages;
      end;

      MySQLConnection.Commit;

      MessageDlg('Tabelas PIS e COFINS importada com sucesso.',
                 mtInformation, [mbOK], 0);
    except
      MySQLConnection.Rollback;
      raise;
    end;
  finally
    Linhas.Free;
    Valores.Free;
    ResourceStream.Free;
    cxProgressBar.Visible := False;
  end;
end;

procedure TMainForm.IPICST1Click(Sender: TObject);
begin
  ImportIPI;
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

procedure TMainForm.NCM1Click(Sender: TObject);
begin
  ImportNCM;
end;

procedure TMainForm.PISCOFINSCST1Click(Sender: TObject);
begin
  ImportPISCOFINS;
end;

procedure TMainForm.MySQLServercxTextEditExit(Sender: TObject);
begin
  IniFile.WriteString('MYSQL', 'Server', Trim(MySQLServercxTextEdit.Text));
end;

end.
