unit uClienteTelefoneControl;

interface

uses
  uClienteTelefoneModel, System.SysUtils, FireDAC.Comp.Client;

type
  TClienteTelefoneControl = class
    private
      FClienteTelefoneModel: TClienteTelefoneModel;

    public
      constructor Create;
      destructor Destroy; override;

      function Salvar: Boolean;
      function Obter(AorderBy: Integer;AValorparcial: string): TFDQuery;
      function ObterTelefone(AValorpesquisa: string): TFDQuery;
      function GetId: Integer;

      property ClienteTelefoneModel: TClienteTelefoneModel read FClienteTelefoneModel write FClienteTelefoneModel;

  end;

implementation

{ TClienteTelefoneControl }

constructor TClienteTelefoneControl.Create;
begin
  FClienteTelefoneModel := TClienteTelefoneModel.Create;
end;

destructor TClienteTelefoneControl.Destroy;
begin
  FClienteTelefoneModel.Free;
  inherited;
end;

function TClienteTelefoneControl.GetId: Integer;
begin
  Result := FClienteTelefoneModel.GetId;
end;

function TClienteTelefoneControl.Obter(AorderBy: Integer;
  AValorparcial: string): TFDQuery;
begin
  Result := FClienteTelefoneModel.Obter(AorderBy,AValorparcial);
end;

function TClienteTelefoneControl.ObterTelefone(
  AValorpesquisa: string): TFDQuery;
begin
  Result := FClienteTelefoneModel.ObterTelefone(AValorpesquisa);
end;

function TClienteTelefoneControl.Salvar: Boolean;
begin
  Result := FClienteTelefoneModel.Salvar;
end;

end.
