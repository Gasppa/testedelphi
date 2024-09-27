object FRM_CadDepartamento: TFRM_CadDepartamento
  Left = 0
  Top = 0
  Caption = 'Departamento'
  ClientHeight = 251
  ClientWidth = 454
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object LBL_NomeDep: TLabel
    Left = 16
    Top = 27
    Width = 36
    Height = 15
    Caption = 'Nome:'
  end
  object LBL_LocalDep: TLabel
    Left = 18
    Top = 96
    Width = 31
    Height = 15
    Caption = 'Local:'
  end
  object BTN_CancelarCadDep: TButton
    Left = 154
    Top = 192
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 0
    OnClick = BTN_CancelarCadDepClick
  end
  object BTN_SalvarDep: TButton
    Left = 18
    Top = 192
    Width = 89
    Height = 25
    Caption = 'Salvar'
    TabOrder = 1
    OnClick = BTN_SalvarDepClick
  end
  object DBE_Nome: TDBEdit
    Left = 18
    Top = 48
    Width = 335
    Height = 23
    DataField = 'nm_departamento'
    DataSource = DM.DS_Departamentos
    TabOrder = 2
  end
  object DBE_Local: TDBEdit
    Left = 18
    Top = 133
    Width = 399
    Height = 23
    DataField = 'local'
    DataSource = DM.DS_Departamentos
    TabOrder = 3
  end
end
