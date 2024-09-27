object TF_Departamento: TTF_Departamento
  Left = 0
  Top = 0
  Caption = 'TF_Departamento'
  ClientHeight = 516
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object PNL_Header: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 620
    object LBL_Title: TLabel
      Left = 16
      Top = 31
      Width = 124
      Height = 23
      Caption = 'Departamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 23
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BTN_CadastrarDep: TButton
      Left = 536
      Top = 33
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cadastrar'
      TabOrder = 0
      OnClick = BTN_CadastrarDepClick
    end
  end
  object PNL_Footer: TPanel
    Left = 0
    Top = 440
    Width = 622
    Height = 76
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 432
    ExplicitWidth = 620
    object BTN_ExcluirDepartamento: TButton
      Left = 16
      Top = 24
      Width = 75
      Height = 25
      Cursor = crHandPoint
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = BTN_ExcluirDepartamentoClick
    end
    object BTN_EditarDepartamento: TButton
      Left = 128
      Top = 24
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 1
      OnClick = BTN_EditarDepartamentoClick
    end
  end
  object DBG_Departamento: TDBGrid
    Left = 0
    Top = 89
    Width = 622
    Height = 351
    Align = alClient
    DataSource = DM.DS_Departamentos
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_departamento'
        Title.Caption = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nm_departamento'
        Title.Caption = 'Nome'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'local'
        Title.Caption = 'Local'
        Visible = True
      end>
  end
end
