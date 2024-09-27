unit TF_CadEmpregado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.DBCtrls, DataModule, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TFRM_CadEmpregado = class(TForm)
    LBL_Nome: TLabel;
    DBE_Nome: TDBEdit;
    LBL_Funcao: TLabel;
    DBE_Funcao: TDBEdit;
    LBL_Departamento: TLabel;
    LBL_DataAdmissao: TLabel;
    DBE_Salario: TDBEdit;
    LBL_Salario: TLabel;
    DBE_Comissao: TDBEdit;
    LBL_Comissao: TLabel;
    BTN_SalvarEmpregado: TButton;
    BTN_Cancelar: TButton;
    DBE_DataAdmissao: TDBEdit;
    DBLC_Departamento: TDBLookupComboBox;
    procedure BTN_CancelarClick(Sender: TObject);
    procedure BTN_SalvarEmpregadoClick(Sender: TObject);
    procedure DBE_SalarioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFRM_CadEmpregado.BTN_CancelarClick(Sender: TObject);
begin
  if (DM.ZQ_Empregados.State in dsEditModes) then
  begin
    DM.ZQ_Empregados.Cancel;
  end;
  Close();
end;

procedure TFRM_CadEmpregado.BTN_SalvarEmpregadoClick(Sender: TObject);
begin
  DM.ZQ_Empregados.Post;
  try
    ShowMessage('Registro salvo com sucesso!');
    Close();
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao inserir registro: ' + E.Message);
      DM.ZConnection.Rollback;
    end;
  end;
end;

procedure TFRM_CadEmpregado.DBE_SalarioKeyPress(Sender: TObject; var Key: Char);
begin
  if not CharInSet(Key, ['0'..'9', #8]) then
    Key := #0;
end;

end.
