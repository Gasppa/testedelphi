object FRM_Main: TFRM_Main
  Left = 0
  Top = 0
  Caption = 'Prova T'#233'cnica - Hospidata'
  ClientHeight = 331
  ClientWidth = 464
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MM_Main
  TextHeight = 15
  object MM_Main: TMainMenu
    Left = 16
    Top = 64
    object MainMenu: TMenuItem
      Caption = 'Menu'
      object Item_Empregados: TMenuItem
        Caption = 'Empregados'
        OnClick = Item_EmpregadosClick
      end
      object Item_Departamentos: TMenuItem
        Caption = 'Departamentos'
        OnClick = Item_DepartamentosClick
      end
      object Separator: TMenuItem
        Caption = '-'
      end
      object Relatorios: TMenuItem
        Caption = 'Relat'#243'rios'
        object Item_RelatorioEmpregado: TMenuItem
          Caption = 'Empregados'
          OnClick = Item_RelatorioEmpregadoClick
        end
        object Item_RelatorioDepartamento: TMenuItem
          Caption = 'Departamentos'
          OnClick = Item_RelatorioDepartamentoClick
        end
      end
    end
  end
end
