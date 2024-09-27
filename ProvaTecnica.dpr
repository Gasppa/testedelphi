program ProvaTecnica;

uses
  Vcl.Forms,
  DataModule in 'DataModule\DataModule.pas' {DM: TDataModule},
  TF_CadDepartamento in 'Forms\TF_CadDepartamento.pas',
  TF_CadEmpregado in 'Forms\TF_CadEmpregado.pas' {FRM_CadEmpregado},
  TF_Departamentos in 'Forms\TF_Departamentos.pas' {TF_Departamento},
  TF_Empregados in 'Forms\TF_Empregados.pas' {TF_Empregado},
  TF_Main in 'Forms\TF_Main.pas' {FRM_Main};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFRM_Main, FRM_Main);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
