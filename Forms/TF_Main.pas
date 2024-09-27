unit TF_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, Vcl.DBCtrls, Vcl.ComCtrls,
  ZAbstractConnection, ZConnection, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, Vcl.Mask, frxSmartMemo, frxClass, frxDBSet, frCoreClasses, DataModule,
  Vcl.Menus, TF_Empregados, TF_Departamentos;

type
  TFRM_Main = class(TForm)
    MM_Main: TMainMenu;
    MainMenu: TMenuItem;
    Item_Empregados: TMenuItem;
    Item_Departamentos: TMenuItem;
    Separator: TMenuItem;
    Relatorios: TMenuItem;
    Item_RelatorioEmpregado: TMenuItem;
    Item_RelatorioDepartamento: TMenuItem;
    procedure Item_EmpregadosClick(Sender: TObject);
    procedure Item_DepartamentosClick(Sender: TObject);
    procedure Item_RelatorioEmpregadoClick(Sender: TObject);
    procedure Item_RelatorioDepartamentoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_Main: TFRM_Main;

implementation

{$R *.dfm}

procedure TFRM_Main.Item_DepartamentosClick(Sender: TObject);
var
  FormDepartamentos: TTF_Departamento;

begin
  FormDepartamentos := TTF_Departamento.Create(Self);

  try
    FormDepartamentos.ShowModal();
  finally
    FormDepartamentos.Free();
  end;
end;

procedure TFRM_Main.Item_EmpregadosClick(Sender: TObject);
var
  FormEmpregados: TTF_Empregado;
begin
  FormEmpregados := TTF_Empregado.Create(Self);

  try
    FormEmpregados.ShowModal();
  finally
    FormEmpregados.Free();
  end;

end;

procedure TFRM_Main.Item_RelatorioDepartamentoClick(Sender: TObject);
begin
  DM.RL_Departamentos.ShowReport();
end;

procedure TFRM_Main.Item_RelatorioEmpregadoClick(Sender: TObject);
begin
  DM.RL_Empregados.ShowReport();
end;

end.
