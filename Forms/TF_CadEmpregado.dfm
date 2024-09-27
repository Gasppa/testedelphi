object FRM_CadEmpregado: TFRM_CadEmpregado
  Left = 0
  Top = 0
  Caption = 'Empregado'
  ClientHeight = 392
  ClientWidth = 513
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LBL_Nome: TLabel
    Left = 31
    Top = 24
    Width = 37
    Height = 15
    Caption = 'Nome:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_Funcao: TLabel
    Left = 32
    Top = 96
    Width = 42
    Height = 15
    Caption = 'Fun'#231#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_Departamento: TLabel
    Left = 32
    Top = 168
    Width = 85
    Height = 15
    Caption = 'Departamento:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_DataAdmissao: TLabel
    Left = 32
    Top = 235
    Width = 101
    Height = 15
    Caption = 'Data de Admiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_Salario: TLabel
    Left = 296
    Top = 168
    Width = 40
    Height = 15
    Caption = 'Sal'#225'rio:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object LBL_Comissao: TLabel
    Left = 296
    Top = 235
    Width = 52
    Height = 15
    Caption = 'Comiss'#227'o:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBE_Nome: TDBEdit
    Left = 32
    Top = 45
    Width = 425
    Height = 23
    DataField = 'nm_empregado'
    DataSource = DM.DS_Empregados
    TabOrder = 0
  end
  object DBE_Funcao: TDBEdit
    Left = 32
    Top = 117
    Width = 425
    Height = 23
    DataField = 'nm_funcao'
    DataSource = DM.DS_Empregados
    TabOrder = 1
  end
  object DBE_Salario: TDBEdit
    Left = 296
    Top = 189
    Width = 161
    Height = 23
    DataField = 'salario'
    DataSource = DM.DS_Empregados
    TabOrder = 2
    OnKeyPress = DBE_SalarioKeyPress
  end
  object DBE_Comissao: TDBEdit
    Left = 296
    Top = 256
    Width = 161
    Height = 23
    DataField = 'comissao'
    DataSource = DM.DS_Empregados
    TabOrder = 3
  end
  object BTN_SalvarEmpregado: TButton
    Left = 144
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 4
    OnClick = BTN_SalvarEmpregadoClick
  end
  object BTN_Cancelar: TButton
    Left = 296
    Top = 328
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 5
    OnClick = BTN_CancelarClick
  end
  object DBE_DataAdmissao: TDBEdit
    Left = 32
    Top = 256
    Width = 217
    Height = 23
    DataField = 'data_admissao'
    DataSource = DM.DS_Empregados
    MaxLength = 10
    TabOrder = 6
  end
  object DBLC_Departamento: TDBLookupComboBox
    Left = 32
    Top = 189
    Width = 217
    Height = 23
    DataField = 'cod_departamento'
    DataSource = DM.DS_Empregados
    KeyField = 'id_departamento'
    ListField = 'nm_departamento'
    ListSource = DM.DS_Departamentos
    TabOrder = 7
  end
end
