object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 254
  ClientWidth = 831
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxProgressBar: TcxProgressBar
    Left = 0
    Top = 233
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 283
    ExplicitWidth = 510
    Width = 831
  end
  object cxPageControl1: TcxPageControl
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 825
    Height = 227
    Align = alClient
    TabOrder = 1
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ExplicitLeft = 35
    ExplicitWidth = 513
    ClientRectBottom = 223
    ClientRectLeft = 4
    ClientRectRight = 821
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Importa'#231#245'es de Testes'
      ImageIndex = 0
      ExplicitWidth = 377
      ExplicitHeight = 249
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Caption = 'MySQL'
        TabOrder = 0
        ExplicitWidth = 371
        Height = 102
        Width = 811
        object cxLabel1: TcxLabel
          Left = 10
          Top = 50
          Caption = 'Banco:'
          Transparent = True
        end
        object MySQLBancocxTextEdit: TcxTextEdit
          Left = 56
          Top = 49
          TabOrder = 1
          OnExit = MySQLBancocxTextEditExit
          Width = 307
        end
        object cxLabel2: TcxLabel
          Left = 6
          Top = 77
          Caption = 'Usu'#225'rio:'
          Transparent = True
        end
        object MySQLUsercxTextEdit: TcxTextEdit
          Left = 56
          Top = 76
          TabOrder = 3
          OnExit = MySQLUsercxTextEditExit
          Width = 76
        end
        object cxLabel3: TcxLabel
          Left = 138
          Top = 77
          Caption = 'Senha:'
          Transparent = True
        end
        object MySQLSenhacxTextEdit: TcxTextEdit
          Left = 182
          Top = 76
          TabOrder = 5
          OnExit = MySQLSenhacxTextEditExit
          Width = 76
        end
        object MySQLConectarcxCheckBox: TcxCheckBox
          Left = 264
          Top = 76
          Caption = 'Conectar'
          TabOrder = 6
          Transparent = True
          OnClick = MySQLConectarcxCheckBoxClick
        end
        object cxLabel7: TcxLabel
          Left = 10
          Top = 23
          Caption = 'Server:'
          Transparent = True
        end
        object MySQLServercxTextEdit: TcxTextEdit
          Left = 56
          Top = 22
          TabOrder = 8
          OnExit = MySQLServercxTextEditExit
          Width = 127
        end
        object cxMemo1: TcxMemo
          Left = 608
          Top = 13
          Lines.Strings = (
            'cxMemo1')
          Properties.ScrollBars = ssVertical
          TabOrder = 9
          Height = 89
          Width = 203
        end
      end
      object cxGroupBox3: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 111
        Align = alTop
        Caption = 'Firebird'
        TabOrder = 1
        ExplicitWidth = 371
        Height = 84
        Width = 811
        object cxLabel4: TcxLabel
          Left = 10
          Top = 21
          Caption = 'Banco:'
          Transparent = True
        end
        object FirebirBancocxTextEdit: TcxTextEdit
          Left = 53
          Top = 20
          TabOrder = 1
          OnExit = FirebirBancocxTextEditExit
          Width = 307
        end
        object cxLabel5: TcxLabel
          Left = 3
          Top = 48
          Caption = 'Usu'#225'rio:'
          Transparent = True
        end
        object FirebirUsercxTextEdit: TcxTextEdit
          Left = 53
          Top = 47
          TabOrder = 3
          OnExit = FirebirUsercxTextEditExit
          Width = 76
        end
        object cxLabel6: TcxLabel
          Left = 135
          Top = 48
          Caption = 'Senha:'
          Transparent = True
        end
        object FirebirSenhacxTextEdit: TcxTextEdit
          Left = 179
          Top = 47
          TabOrder = 5
          OnExit = FirebirSenhacxTextEditExit
          Width = 76
        end
        object FirebirConectarcxCheckBox: TcxCheckBox
          Left = 261
          Top = 47
          Caption = 'Conectar'
          TabOrder = 6
          Transparent = True
          OnClick = FirebirConectarcxCheckBoxClick
        end
      end
    end
  end
  object MySQLConnection: TFDConnection
    Params.Strings = (
      'DriverID=MySQL')
    LoginPrompt = False
    Transaction = MySQLTransaction
    BeforeConnect = MySQLConnectionBeforeConnect
    Left = 296
    Top = 8
  end
  object FirebirdConnection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    LoginPrompt = False
    BeforeConnect = FirebirdConnectionBeforeConnect
    Left = 232
    Top = 8
  end
  object MySQLPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 104
    Top = 32
  end
  object FirebirdPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 107
    Top = 83
  end
  object MySQLQuery: TFDQuery
    Connection = MySQLConnection
    Left = 416
    Top = 96
  end
  object MySQLTransaction: TFDTransaction
    Connection = MySQLConnection
    Left = 232
    Top = 136
  end
  object MainMenu: TMainMenu
    Left = 328
    Top = 80
    object ImportarCSV1: TMenuItem
      Caption = 'Importar CSV'
      object PISCOFINSCST1: TMenuItem
        Caption = 'PIS/COFINS CST'
        OnClick = PISCOFINSCST1Click
      end
      object IPICST1: TMenuItem
        Caption = 'IPI CST'
        OnClick = IPICST1Click
      end
      object ICMSORIGEM1: TMenuItem
        Caption = 'ICMS ORIGEM'
        OnClick = ICMSORIGEM1Click
      end
      object ICMSCST1: TMenuItem
        Caption = 'ICMS CST'
        OnClick = ICMSCST1Click
      end
      object CFOP1: TMenuItem
        Caption = 'CFOP'
        OnClick = CFOP1Click
      end
      object NCM1: TMenuItem
        Caption = 'NCM'
        OnClick = NCM1Click
      end
      object CEST1: TMenuItem
        Caption = 'CEST'
        OnClick = CEST1Click
      end
      object CIDADES1: TMenuItem
        Caption = 'CIDADES'
        OnClick = CIDADES1Click
      end
    end
  end
  object MySQL2Query: TFDQuery
    Connection = MySQLConnection
    Left = 416
    Top = 48
  end
end
