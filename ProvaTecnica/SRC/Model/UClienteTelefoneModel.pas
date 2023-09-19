unit uClienteTelefoneModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client;

type
  TClienteTelefoneModel = class
  private
    FAcao: TAcao;
    FID: integer;
    FIDCodCliente: integer;
    FTelefoneCliente: string;

    procedure SetAcao(const Value: TAcao);
    procedure SetID(const Value: integer);
    procedure SetIDCodCliente(const Value: integer);
    procedure SetTelefoneCliente(const Value: string);
  public
    function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
    function Salvar: Boolean;
    function GetId: Integer;
    function ObterTelefone(AValorpesquisa: string): TFDQuery;

    property Acao: TAcao read FAcao write SetAcao;
    property ID: integer read FID write SetID;
    property IDCodCliente: integer read FIDCodCliente write SetIDCodCliente;
    property TelefoneCliente: string read FTelefoneCliente write SetTelefoneCliente;
  end;

implementation

Uses uClienteTelefoneDAO;

{ TClienteTelefoneModel }

function TClienteTelefoneModel.GetId: Integer;
var
  VClienteDao: TClienteTelefoneDAO;
begin
  VClienteDao := TClienteTelefoneDAO.Create;
  try
    Result := VClienteDao.GetId;
  finally
    VClienteDao.Free;
  end;
end;

function TClienteTelefoneModel.Obter(AorderBy: Integer;
  AValorparcial: string): TFDQuery;
var
  VClienteDao: TClienteTelefoneDAO;
begin
  VClienteDao := TClienteTelefoneDAO.Create;
  try
    Result := VClienteDao.Obter(AorderBy,AValorparcial);
  finally
    VClienteDao.Free;
  end;
end;

function TClienteTelefoneModel.ObterTelefone(AValorpesquisa: string): TFDQuery;
var
  VClienteDao: TClienteTelefoneDAO;
begin
  VClienteDao := TClienteTelefoneDAO.Create;
  try
    Result := VClienteDao.ObterCLIByID(AValorpesquisa);
  finally
    VClienteDao.Free;
  end;
end;

function TClienteTelefoneModel.Salvar: Boolean;
var
  VClienteDao: TClienteTelefoneDAO;
begin
  Result := False;

  VClienteDao := TClienteTelefoneDAO.Create;
  try
    case FAcao of
      uEnumerado.tacIncluir: Result := VClienteDao.Incluir(Self);
      uEnumerado.tacAlterar: Result := VClienteDao.Alterar(Self);
      uEnumerado.tacExcluir: Result := VClienteDao.Excluir(Self);
    end;
  finally
    VClienteDao.Free;
  end;
end;

procedure TClienteTelefoneModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TClienteTelefoneModel.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TClienteTelefoneModel.SetIDCodCliente(const Value: integer);
begin
  FIDCodCliente := Value;
end;

procedure TClienteTelefoneModel.SetTelefoneCliente(const Value: string);
begin
  FTelefoneCliente := Value;
end;

end.
