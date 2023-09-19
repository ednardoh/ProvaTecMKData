unit uClienteEnderecoModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client;

type
  TClienteEnderecoModel = class
    private
      FAcao: TAcao;
      FID: integer;
      FIDCODCLIENTE: integer;
      FENDERECO: string;
      FNUMERO: string;
      FCEP: string;
      FBAIRRO: string;
      FCIDADE: string;
      FESTADO: string;
      FPAIS: string;

      procedure SetAcao(const Value: TAcao);
      procedure SetID(const Value: integer);
      procedure SetIDCODCLIENTE(const Value: integer);
      procedure SetENDERECO(const Value: string);
      procedure SetNUMERO(const Value: string);
      procedure SetCEP(const Value: string);
      procedure SetBAIRRO(const Value: string);
      procedure SetCIDADE(const Value: string);
      procedure SetESTADO(const Value: string);
      procedure SetPAIS(const Value: string);
    public
      function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
      function Salvar: Boolean;
      function GetId: Integer;
      function ObterEnderecoCLI(AValorpesquisa: string): TFDQuery;

      property Acao: TAcao read FAcao write SetAcao;
      property ID: integer read FID write SetID;
      property IDCODCLIENTE: integer read FIDCODCLIENTE write SetIDCODCLIENTE;
      property ENDERECO: string read FENDERECO write SetENDERECO;
      property NUMERO: string read FNUMERO write SetNUMERO;
      property CEP: string read FCEP write SetCEP;
      property BAIRRO: string read FBAIRRO write SetBAIRRO;
      property CIDADE: string read FCIDADE write SetCIDADE;
      property ESTADO: string read FESTADO write SetESTADO;
      property PAIS: string read FPAIS write SetPAIS;
  end;

implementation

Uses uClienteEnderecoDAO;

{ TClienteEnderecoModel }

function TClienteEnderecoModel.GetId: Integer;
var
  VClienteDao: TClienteEnderecoDao;
begin
  VClienteDao := TClienteEnderecoDao.Create;
  try
    Result := VClienteDao.GetId;
  finally
    VClienteDao.Free;
  end;
end;

function TClienteEnderecoModel.Obter(AorderBy: Integer;
  AValorparcial: string): TFDQuery;
var
  VClienteDao: TClienteEnderecoDao;
begin
  VClienteDao := TClienteEnderecoDao.Create;
  try
    Result := VClienteDao.Obter(AorderBy,AValorparcial);
  finally
    VClienteDao.Free;
  end;
end;

function TClienteEnderecoModel.ObterEnderecoCLI(
  AValorpesquisa: string): TFDQuery;
var
  VClienteDao: TClienteEnderecoDao;
begin
  VClienteDao := TClienteEnderecoDao.Create;
  try
    Result := VClienteDao.ObterCLIEnderecoByID(AValorpesquisa);
  finally
    VClienteDao.Free;
  end;
end;

function TClienteEnderecoModel.Salvar: Boolean;
var
  VClienteDao: TClienteEnderecoDao;
begin
  Result := False;

  VClienteDao := TClienteEnderecoDao.Create;
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

procedure TClienteEnderecoModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TClienteEnderecoModel.SetBAIRRO(const Value: string);
begin
  FBAIRRO := Value;
end;

procedure TClienteEnderecoModel.SetCEP(const Value: string);
begin
  FCEP := Value;
end;

procedure TClienteEnderecoModel.SetCIDADE(const Value: string);
begin
  FCIDADE := Value;
end;

procedure TClienteEnderecoModel.SetENDERECO(const Value: string);
begin
  FENDERECO := Value;
end;

procedure TClienteEnderecoModel.SetESTADO(const Value: string);
begin
  FESTADO := Value;
end;

procedure TClienteEnderecoModel.SetID(const Value: integer);
begin
  FID := Value;
end;

procedure TClienteEnderecoModel.SetIDCODCLIENTE(const Value: integer);
begin
  FIDCODCLIENTE := Value;
end;

procedure TClienteEnderecoModel.SetNUMERO(const Value: string);
begin
  FNUMERO := Value;
end;

procedure TClienteEnderecoModel.SetPAIS(const Value: string);
begin
  FPAIS := Value;
end;

end.
