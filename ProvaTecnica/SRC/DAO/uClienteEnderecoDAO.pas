unit uClienteEnderecoDAO;

interface

uses
  FireDAC.Comp.Client, uConexaoDAO, uClienteEnderecoModel, System.SysUtils, uSistemaControl;

type
  TClienteEnderecoDAO = class
    private
      FConexao: TConexao;
    public
      constructor Create;

      function Incluir(AClienteModel: TClienteEnderecoModel): Boolean;
      function Alterar(AClienteModel: TClienteEnderecoModel): Boolean;
      function Excluir(AClienteModel: TClienteEnderecoModel): Boolean;
      function GetId: Integer;
      function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
      function ObterCLIEnderecoByID(AValorpesquisa: string): TFDQuery;
  end;

implementation

{ TClienteEnderecoDAO }

constructor TClienteEnderecoDAO.Create;
begin
  FConexao := TSistemaControl.GetInstance().Conexao;
end;

function TClienteEnderecoDAO.GetId: Integer;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    VQry.Open('SELECT coalesce(MAX(ID),0)+1 AS CODIGO FROM CLIENTE_ENDERECO');
    try
      Result := VQry.Fields[0].AsInteger;
    finally
      VQry.Close;
    end;
  finally
    VQry.Free;
  end;
end;

function TClienteEnderecoDAO.Incluir(
  AClienteModel: TClienteEnderecoModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    try
      VQry.Connection.StartTransaction;  //Inicia uma trasa��o
      VQry.ExecSQL('INSERT INTO CLIENTE_ENDERECO (ID,              '+
                   '                              ID_CODCLIENTE,   '+
                   '                              ENDERECO,        '+
                   '                              NUMERO,          '+
                   '                              CEP,             '+
                   '                              BAIRRO,          '+
                   '                              CIDADE,          '+
                   '                              ESTADO,          '+
                   '                              PAIS             '+
                   '                              ) values (       '+
                   '                              :ID,             '+
                   '                              :ID_CODCLIENTE,  '+
                   '                              :ENDERECO,       '+
                   '                              :NUMERO,         '+
                   '                              :CEP,            '+
                   '                              :BAIRRO,         '+
                   '                              :CIDADE,         '+
                   '                              :ESTADO,         '+
                   '                              :PAIS)           ',
                   [AClienteModel.ID,
                    AClienteModel.IDCODCLIENTE,
                    AClienteModel.ENDERECO,
                    AClienteModel.NUMERO,
                    AClienteModel.CEP,
                    AClienteModel.BAIRRO,
                    AClienteModel.CIDADE,
                    AClienteModel.ESTADO,
                    AClienteModel.PAIS]);

      VQry.Connection.Commit;
      Result := True;
      except
      on E: Exception do
        begin
          VQry.Connection.Rollback;  //desfaz a transa��o caso ocorra erro.
        end;
    end;
  finally
    VQry.Free;
  end;
end;

function TClienteEnderecoDAO.Excluir(
  AClienteModel: TClienteEnderecoModel): Boolean;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();
  try
    try
      VQry.Connection.StartTransaction;
      VQry.ExecSQL(' DELETE FROM CLIENTE_ENDERECO WHERE ID =:ID ', [AClienteModel.ID]);

      VQry.Connection.Commit;
      Result := True;
      except
      on E: Exception do
        begin
          VQry.Connection.Rollback;  //desfaz a transa��o
        end;
    end;
  finally
    VQry.Free;
  end;
end;

function TClienteEnderecoDAO.Alterar(
  AClienteModel: TClienteEnderecoModel): Boolean;
var
  VQry: TFDQuery;
  strSQL: string;
begin
  VQry := FConexao.CriarQuery();
  try
    try
      strSQL :='';
      VQry.Connection.StartTransaction;
      VQry.Close;
      VQry.SQL.Clear;

      strSQL := ' UPDATE CLIENTE_ENDERECO SET ENDERECO=:ENDERECO, '+
                '                             NUMERO=:NUMERO,     '+
                '                             CEP=:CEP,           '+
                '                             BAIRRO=:BAIRRO,     '+
                '                             CIDADE=:CIDADE,     '+
                '                             ESTADO=:ESTADO      '+
                '                             PAIS=:PAIS          '+
                ' where ID=:ID AND ID_CODCLIENTE=:ID_CODCLIENTE   ';

      VQry.SQL.Add(strSQL);
      VQry.ParamByName('ENDERECO').AsString       := AClienteModel.ENDERECO;
      VQry.ParamByName('NUMERO').AsString         := AClienteModel.NUMERO;
      VQry.ParamByName('CEP').AsString            := AClienteModel.CEP;
      VQry.ParamByName('BAIRRO').AsString         := AClienteModel.BAIRRO;
      VQry.ParamByName('CIDADE').AsString         := AClienteModel.CIDADE;
      VQry.ParamByName('ESTADO').AsString         := AClienteModel.ESTADO;
      VQry.ParamByName('PAIS').AsString          := AClienteModel.PAIS;
      VQry.ParamByName('ID').AsInteger            := AClienteModel.ID;
      VQry.ParamByName('ID_CODCLIENTE').AsInteger := AClienteModel.IDCODCLIENTE;

      VQry.ExecSQL();
      VQry.Connection.Commit;
      except
      on E: Exception do
        begin
          VQry.Connection.Rollback;  //desfaz a transa��o
        end;
      end;
      Result := True;
  finally
    VQry.Free;
  end;
end;

//AQUI EU POSSO ORDENAR PELO INDICE DOS CAMPOS E FILTRAR PELO VALOR PARCIAL,
//� NECESS�RIO COLOCAR AS PORCENTAGEM %% NO EDIT NA TELA DE CONSULTA
function TClienteEnderecoDAO.Obter(AorderBy: Integer;
  AValorparcial: string): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  if AValorparcial = '' then
    VQry.Open('select ID, ID_CODCLIENTE, ENDERECO, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, PAIS from CLIENTE_ENDERECO order by '+AorderBy.ToString)
  else
    VQry.Open('select ID, ID_CODCLIENTE, ENDERECO, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, PAIS from CLIENTE_ENDERECO where ENDERECO like ' + quotedstr(AValorparcial) + ' order by '+AorderBy.ToString);

  Result := VQry;
end;

function TClienteEnderecoDAO.ObterCLIEnderecoByID(
  AValorpesquisa: string): TFDQuery;
var
  VQry: TFDQuery;
begin
  VQry := FConexao.CriarQuery();

  VQry.Open('select ID, ID_CODCLIENTE, ENDERECO, NUMERO, CEP, BAIRRO, CIDADE, ESTADO, PAIS from CLIENTE_ENDERECO where ID_CODCLIENTE = '+AValorpesquisa);

  Result := VQry;
end;

end.
