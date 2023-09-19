unit uClienteEnderecoControl;

interface

uses
  uClienteEnderecoModel, System.SysUtils, FireDAC.Comp.Client;

type
  TClienteEnderecoControl = class
    private
      FClienteEnderecoModel: TClienteEnderecoModel;
    public
      constructor Create;
      destructor Destroy; override;

      function Salvar: Boolean;
      function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
      function ObterEnderecoCLI(AValorpesquisa: string): TFDQuery;
      function GetId: Integer;

      property ClienteEnderecoModel: TClienteEnderecoModel read FClienteEnderecoModel write FClienteEnderecoModel;

  end;

implementation

{ TClienteEnderecoControl }

constructor TClienteEnderecoControl.Create;
begin
  FClienteEnderecoModel := TClienteEnderecoModel.Create;
end;

destructor TClienteEnderecoControl.Destroy;
begin
  FClienteEnderecoModel.Free;
  inherited;
end;

function TClienteEnderecoControl.GetId: Integer;
begin
  Result := FClienteEnderecoModel.GetId;
end;

function TClienteEnderecoControl.Obter(AorderBy: Integer;
  AValorparcial: string): TFDQuery;
begin
  Result := FClienteEnderecoModel.Obter(AorderBy,AValorparcial);
end;

function TClienteEnderecoControl.ObterEnderecoCLI(
  AValorpesquisa: string): TFDQuery;
begin
  Result := FClienteEnderecoModel.ObterEnderecoCLI(AValorpesquisa);
end;

function TClienteEnderecoControl.Salvar: Boolean;
begin
  Result := FClienteEnderecoModel.Salvar;
end;

end.
