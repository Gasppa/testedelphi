unit TF_Empregados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, DataModule, TF_CadEmpregado;

type
  TTF_Empregado = class(TForm)
    DBG_Empregado: TDBGrid;
    PNL_Header: TPanel;
    LBL_Title: TLabel;
    BTN_CadastrarEmpregado: TButton;
    PNL_Footer: TPanel;
    BTN_EditarEmpregado: TButton;
    BTN_ExcluirEmpregado: TButton;
    EDT_PesquisaEmpregado: TEdit;
    PesquisaIcon: TImage;
    procedure BTN_CadastrarEmpregadoClick(Sender: TObject);
    procedure BTN_EditarEmpregadoClick(Sender: TObject);
    procedure PesquisaIconClick(Sender: TObject);
    procedure BTN_ExcluirEmpregadoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TTF_Empregado.BTN_CadastrarEmpregadoClick(Sender: TObject);
var
  FormCadEmpregado: TFRM_CadEmpregado;
begin
  FormCadEmpregado := TFRM_CadEmpregado.Create(Self);
  DM.ZQ_Empregados.Append;
  try
    FormCadEmpregado.ShowModal();
  finally
    FormCadEmpregado.Free();
  end;
end;

procedure TTF_Empregado.BTN_EditarEmpregadoClick(Sender: TObject);
var
  FormCadEmpregado: TFRM_CadEmpregado;
begin
  FormCadEmpregado := TFRM_CadEmpregado.Create(Self);
  DM.ZQ_Empregados.Edit;
  try
    FormCadEmpregado.ShowModal();
  finally
    FormCadEmpregado.Free();
  end;
end;

procedure TTF_Empregado.BTN_ExcluirEmpregadoClick(Sender: TObject);
begin
  try
    if (DM.ZQ_Empregados.RecordCount > 0) and
     (DM.ZQ_Empregados.RecNo > -1) then
      DM.ZQ_Empregados.Delete;
    ShowMessage('Registro deletado com sucesso!');
  except
    on E: Exception do
    begin
      ShowMessage('Erro ao deletar registro: ' + E.Message);
    end;
  end;
end;

procedure TTF_Empregado.PesquisaIconClick(Sender: TObject);
begin
  DM.ZQ_Empregados.Close;
  DM.ZQ_Empregados.Unprepare;
  DM.ZQ_Empregados.SQL.Text := 'select * from empregados where nm_empregado like :nm_empregado';
  DM.ZQ_Empregados.ParamByName('nm_empregado').AsString := '%' + EDT_PesquisaEmpregado.Text+ '%';
  DM.ZQ_Empregados.Prepare;
  DM.ZQ_Empregados.Open;
end;

end.
