object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 304
  ClientWidth = 510
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object cxProgressBar: TcxProgressBar
    Left = 0
    Top = 283
    Align = alBottom
    TabOrder = 0
    Width = 510
  end
  object cxGroupBox1: TcxGroupBox
    AlignWithMargins = True
    Left = 3
    Top = 3
    Align = alLeft
    Caption = 'Importar CSV'
    TabOrder = 1
    Height = 277
    Width = 113
    object cxButton1: TcxButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Caption = 'PIS CST'
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 16
      Top = 55
      Width = 75
      Height = 25
      Caption = 'COFINS CST'
      TabOrder = 1
    end
    object cxButton3: TcxButton
      Left = 16
      Top = 86
      Width = 75
      Height = 25
      Caption = 'IPI CST'
      TabOrder = 2
    end
    object cxButton4: TcxButton
      Left = 16
      Top = 117
      Width = 75
      Height = 25
      Caption = 'ICMS CST'
      TabOrder = 3
    end
    object cxButton5: TcxButton
      Left = 16
      Top = 148
      Width = 75
      Height = 25
      Caption = 'CIDADES'
      TabOrder = 4
    end
    object cxButton6: TcxButton
      Left = 16
      Top = 179
      Width = 75
      Height = 25
      Caption = 'NCM'
      TabOrder = 5
    end
    object cxButton7: TcxButton
      Left = 16
      Top = 210
      Width = 75
      Height = 25
      Caption = 'CFOP'
      TabOrder = 6
    end
    object cxButton8: TcxButton
      Left = 16
      Top = 241
      Width = 75
      Height = 25
      Caption = 'CEST'
      TabOrder = 7
    end
  end
  object cxPageControl1: TcxPageControl
    AlignWithMargins = True
    Left = 122
    Top = 3
    Width = 385
    Height = 277
    Align = alClient
    TabOrder = 2
    Properties.ActivePage = cxTabSheet1
    Properties.CustomButtons.Buttons = <>
    ClientRectBottom = 273
    ClientRectLeft = 4
    ClientRectRight = 381
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = 'Importa'#231#245'es de Testes'
      ImageIndex = 0
      object cxGroupBox2: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 3
        Align = alTop
        Caption = 'MySQL'
        TabOrder = 0
        Height = 102
        Width = 371
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
      end
      object cxGroupBox3: TcxGroupBox
        AlignWithMargins = True
        Left = 3
        Top = 111
        Align = alTop
        Caption = 'Firebird'
        TabOrder = 1
        Height = 84
        Width = 371
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
    BeforeConnect = MySQLConnectionBeforeConnect
    Left = 72
    Top = 80
  end
  object FirebirdConnection: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey')
    BeforeConnect = FirebirdConnectionBeforeConnect
    Left = 64
    Top = 24
  end
  object MySQLPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    Left = 72
    Top = 128
  end
  object FirebirdPhysFBDriverLink: TFDPhysFBDriverLink
    Left = 67
    Top = 179
  end
end
