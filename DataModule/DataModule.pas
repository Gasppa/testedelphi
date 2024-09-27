unit DataModule;

interface

uses
  System.SysUtils, System.Classes, frxSmartMemo, Data.DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ZAbstractConnection, ZConnection, frxClass,
  frxDBSet, frCoreClasses, Vcl.Dialogs;

type
  TDM = class(TDataModule)
    RL_Departamentos: TfrxReport;
    RLDS_Empregados: TfrxDBDataset;
    RLDS_Departamentos: TfrxDBDataset;
    ZConnection: TZConnection;
    ZQ_Empregados: TZQuery;
    ZQ_Empregadosid_empregado: TZIntegerField;
    ZQ_Empregadoscod_departamento: TZIntegerField;
    ZQ_Empregadosnm_empregado: TZUnicodeStringField;
    ZQ_Empregadosnm_funcao: TZUnicodeStringField;
    ZQ_Empregadosdata_admissao: TZDateField;
    ZQ_Empregadossalario: TZFMTBCDField;
    ZQ_Empregadoscomissao: TZFMTBCDField;
    DS_Empregados: TDataSource;
    DS_Departamentos: TDataSource;
    ZQ_Departamentos: TZQuery;
    ZQ_Departamentosid_departamento: TZIntegerField;
    ZQ_Departamentosnm_departamento: TZUnicodeStringField;
    ZQ_Departamentoslocal: TZUnicodeStringField;
    ZQ_RptDepartamentos: TZQuery;
    ZIntegerField1: TZIntegerField;
    ZUnicodeStringField1: TZUnicodeStringField;
    ZUnicodeStringField2: TZUnicodeStringField;
    ZQ_RptEmpregados: TZQuery;
    ZIntegerField2: TZIntegerField;
    ZIntegerField3: TZIntegerField;
    ZUnicodeStringField3: TZUnicodeStringField;
    ZUnicodeStringField4: TZUnicodeStringField;
    ZDateField1: TZDateField;
    ZFMTBCDField1: TZFMTBCDField;
    ZFMTBCDField2: TZFMTBCDField;
    RL_Empregados: TfrxReport;
    procedure ZQ_EmpregadosBeforePost(DataSet: TDataSet);
    procedure ZQ_Empregadosdata_admissaoSetText(Sender: TField;
      const Text: string);
    procedure ZQ_DepartamentosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AbrirDepartamentos;
    procedure AbrirEmpregados;
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDM.AbrirDepartamentos;
begin
  if ZQ_Departamentos.Active then
    ZQ_Departamentos.Close;
  ZQ_Departamentos.Open;
end;

procedure TDM.AbrirEmpregados;
begin
  if ZQ_Empregados.Active then
    ZQ_Empregados.Close;
  ZQ_Empregados.Open;
end;

procedure TDM.ZQ_DepartamentosBeforePost(DataSet: TDataSet);
begin
  if (ZQ_Departamentos.FieldByName('nm_departamento').AsString = EmptyStr)
  then
  begin
    ShowMessage('Nome � um campo obrigat�rio. Por favor informe.');
    Abort;
  end;
end;

procedure TDM.ZQ_EmpregadosBeforePost(DataSet: TDataSet);
begin
  if (ZQ_Empregados.FieldByName('nm_empregado').AsString = EmptyStr) or
     (ZQ_Empregados.FieldByName('nm_funcao').AsString = EmptyStr) or
      (ZQ_Empregados.FieldByName('cod_departamento').AsString = EmptyStr)
  then
  begin
    ShowMessage('Nome, Departamento e Fun��o s�o campos obrigat�rios. Por favor informe.');
    Abort;
  end;
end;

procedure TDM.ZQ_Empregadosdata_admissaoSetText(Sender: TField;
  const Text: string);
var
  data: TDateTime;
begin
  if not TryStrToDate(Text, data, TFormatSettings.Create('pt-BR')) then
  begin
    ShowMessage('Data inv�lida! Digite novamente.');
    Abort
  end
  else
    Sender.AsString := Text;
end;

end.
