unit uClienteModel;

interface

uses
  uEnumerado, FireDAC.Comp.Client;

type
  TClienteModel = class
  private
    FAcao: TAcao;
    FCodigo: Integer;
    FNome: string;
    FTipo: string;
    FCPFCNPJ: string;
    FRG: string;
    FDataCadastro: string;
    FFLG_ATIVO: integer;

    procedure SetAcao(const Value: TAcao);
    procedure SetCodigo(const Value: Integer);
    procedure SetNome(const Value: string);
    procedure SetTipo(const Value: string);
    procedure SetCPFCNPJ(const Value: string);
    procedure SetRG(const Value: string);
    procedure SetDataCadastro(const Value: string);
    procedure SetFLG_ATIVO(const Value: Integer);
  public
    function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
    function Salvar: Boolean;
    function GetId: Integer;
    function ObterPorCPFCNPJ(AValor: string): TFDQuery;
    function ObterSoAtivos: TFDQuery;
    function ObterNomeCLI(AValorpesquisa: string): TFDQuery;

    property Codigo: Integer read FCodigo write SetCodigo;
    property Nome: string read FNome write SetNome;
    property Tipo: string read FTipo write SetTipo;
    property CPFCNPJ: string read FCPFCNPJ write SetCPFCNPJ;
    property RG: string read FRG write SetRG;
    property DataCadastro: string read  FDataCadastro write SetDataCadastro;
    property FLG_ATIVO: integer read FFLG_ATIVO write SetFLG_ATIVO;
    property Acao: TAcao read FAcao write SetAcao;
  end;

implementation

{ TClienteModel }

Uses uClienteDAO;

function TClienteModel.GetId: Integer;
var
  VClienteDao: TClienteDao;
begin
  VClienteDao := TClienteDao.Create;
  try
    Result := VClienteDao.GetId;
  finally
    VClienteDao.Free;
  end;
end;

function TClienteModel.Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
var
  VClienteDao: TClienteDao;
begin
  VClienteDao := TClienteDao.Create;
  try
    Result := VClienteDao.Obter(AorderBy,AValorparcial);
  finally
    VClienteDao.Free;
  end;
end;

function TClienteModel.ObterNomeCLI(AValorpesquisa: string): TFDQuery;
var
  VClienteDao: TClienteDao;
begin
  VClienteDao := TClienteDao.Create;
  try
    Result := VClienteDao.ObterCLIByID(AValorpesquisa);
  finally
    VClienteDao.Free;
  end;
end;

function TClienteModel.ObterPorCPFCNPJ(AValor: string): TFDQuery;
var
  VClienteDao: TClienteDao;
begin
  VClienteDao := TClienteDao.Create;
  try
    Result := VClienteDao.ObterPorCPFCNPJ(AValor);
  finally
    VClienteDao.Free;
  end;
end;

function TClienteModel.ObterSoAtivos: TFDQuery;
var
  VClienteDao: TClienteDao;
begin
  VClienteDao := TClienteDao.Create;
  try
    Result := VClienteDao.ObterSoAtivos;
  finally
    VClienteDao.Free;
  end;
end;

function TClienteModel.Salvar: Boolean;
var
  VClienteDao: TClienteDao;
begin
  Result := False;

  VClienteDao := TClienteDao.Create;
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

procedure TClienteModel.SetAcao(const Value: TAcao);
begin
  FAcao := Value;
end;

procedure TClienteModel.SetCodigo(const Value: Integer);
begin
  FCodigo := Value;
end;

procedure TClienteModel.SetCPFCNPJ(const Value: string);
begin
  FCPFCNPJ := Value;
end;

procedure TClienteModel.SetDataCadastro(const Value: string);
begin
  FDataCadastro := Value;
end;

procedure TClienteModel.SetFLG_ATIVO(const Value: Integer);
begin
  FFLG_ATIVO := Value;
end;

procedure TClienteModel.SetNome(const Value: string);
begin
  FNome := Value;
end;

procedure TClienteModel.SetRG(const Value: string);
begin
  FRG := Value;
end;

procedure TClienteModel.SetTipo(const Value: string);
begin
  FTipo := Value;
end;

end.
