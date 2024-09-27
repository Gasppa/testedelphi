unit TF_CadDepartamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Character,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, DataModule;

type
  TFRM_CadDepartamento = class(TForm)
    LBL_NomeDep: TLabel;
    LBL_LocalDep: TLabel;
    BTN_CancelarCadDep: TButton;
    BTN_SalvarDep: TButton;
    DBE_Nome: TDBEdit;
    DBE_Local: TDBEdit;
    procedure BTN_CancelarCadDepClick(Sender: TObject);
    procedure BTN_SalvarDepClick(Sender: TObject);
    procedure EDT_NomeDepKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

procedure TFRM_CadDepartamento.BTN_CancelarCadDepClick(Sender: TObject);
begin
  Close();
end;

procedure TFRM_CadDepartamento.BTN_SalvarDepClick(Sender: TObject);
begin
  DM.ZQ_Departamentos.Post;
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

function ApenasLetrasPermitidas(Key: Char): Boolean;
begin
  Result := (CharInSet(Key, [#8, #32])) or
            CharInSet(Key, ['�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�',
                            '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�', '�']) or
            Key.IsLetter;
end;

procedure TFRM_CadDepartamento.EDT_NomeDepKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not ApenasLetrasPermitidas(Key) then
    Key := #0;
end;

end.
