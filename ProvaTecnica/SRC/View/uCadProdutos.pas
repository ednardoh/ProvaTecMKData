unit uCadProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Datasnap.Provider,
  System.ImageList, Vcl.ImgList, Datasnap.DBClient, Vcl.StdCtrls,
  VCLTee.TeCanvas, VCLTee.TeeEdiGrad, Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, uProdutoControl, uEnumerado, uProdutoXImagemControl;

type
  TfrmCadProdutos = class(TForm)
    pn_Clientes: TPanel;
    Panel1: TPanel;
    pn_Grid: TPanel;
    DBG_Clientes: TDBGrid;
    pn_Controls: TPanel;
    Shape1: TShape;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Shape2: TShape;
    Label9: TLabel;
    DBEdtCodigo: TDBEdit;
    DBEdtDescrProduto: TDBEdit;
    DBEdtPrcCompra: TDBEdit;
    DBEdtPrcVenda: TDBEdit;
    DBEdtQtdeEstoque: TDBEdit;
    EdtPesquisa: TEdit;
    DBButtons: TDBNavigator;
    btnConsultar: TButtonGradient;
    ds_CadProdutos: TDataSource;
    TB_Produtos: TClientDataSet;
    ImageListIco: TImageList;
    DSP_Produtos: TDataSetProvider;
    Shape3: TShape;
    Label10: TLabel;
    TB_ProdutosID: TIntegerField;
    TB_ProdutosCODIGO_BAR: TStringField;
    TB_ProdutosDESCRICAO: TStringField;
    Label11: TLabel;
    DBEditCodBarra: TDBEdit;
    TB_ProdutosPRECO_COMPRA: TBCDField;
    TB_ProdutosPRECO_VENDA: TBCDField;
    TB_ProdutosQTD_ESTOQUE: TBCDField;
    Img_Produtos: TImage;
    Shape4: TShape;
    Label5: TLabel;
    OpenDialogPRD: TOpenDialog;
    ds_ImgPRD: TDataSource;
    TB_ImagemPRD: TClientDataSet;
    DSP_ImagemPRD: TDataSetProvider;
    TB_ImagemPRDID_PRODUTO: TIntegerField;
    TB_ImagemPRDPATH_IMAGEM: TStringField;
    btnAdiciona: TButtonGradient;
    btnExcluirImagem: TButtonGradient;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure PintaEdit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TB_ProdutosBeforeEdit(DataSet: TDataSet);
    procedure TB_ProdutosBeforeInsert(DataSet: TDataSet);
    procedure TB_ProdutosBeforeDelete(DataSet: TDataSet);
    procedure TB_ProdutosBeforePost(DataSet: TDataSet);
    procedure btnConsultarClick(Sender: TObject);
    procedure btnAdicionaClick(Sender: TObject);
    procedure btnExcluirImagemClick(Sender: TObject);
    procedure TB_ProdutosAfterScroll(DataSet: TDataSet);
    procedure TB_ProdutosBeforeScroll(DataSet: TDataSet);
  private
    { Private declarations }
    Produtos: TProdutoControl;
    ProdutosXImagem: TProdutoXImagemControl;
    ATipo: TAcao;
    procedure PreencheDatasetProdutos;
    procedure PreencheDataSetProdutosImagem(AID_Produto: string);
  public
    { Public declarations }
  end;

var
  frmCadProdutos: TfrmCadProdutos;

implementation

{$R *.dfm}

procedure TfrmCadProdutos.btnAdicionaClick(Sender: TObject);
begin
  if OpenDialogPRD.Execute then
  begin
    try
      ATipo := uEnumerado.tacIncluir;
      ProdutosXImagem:= TProdutoXImagemControl.Create;
      ProdutosXImagem.ProdutoXImagemModel.Acao       := ATipo;
      ProdutosXImagem.ProdutoXImagemModel.IDProduto  := TB_ProdutosID.AsInteger;
      ProdutosXImagem.ProdutoXImagemModel.PATHImagem := OpenDialogPRD.FileName;
      ProdutosXImagem.Salvar;
    finally
      Label5.Caption := OpenDialogPRD.FileName;
      if ProdutosXImagem <> NIL then
        ProdutosXImagem.Free;
    end;
  end;
end;

procedure TfrmCadProdutos.btnConsultarClick(Sender: TObject);
begin
  if StrToIntDef(EdtPesquisa.Text, 0) = 0 then  //tem letras
  begin
    TB_Produtos.IndexFieldNames :='DESCRICAO';
    TB_Produtos.Locate('DESCRICAO',EdtPesquisa.Text,[loPartialKey, loCaseInsensitive]);
  end
  else
  begin
    TB_Produtos.IndexFieldNames :='ID';
    TB_Produtos.Locate('ID',EdtPesquisa.Text,[]);
  end;
end;

procedure TfrmCadProdutos.btnExcluirImagemClick(Sender: TObject);
begin
   try
    ATipo := uEnumerado.tacExcluir;
    ProdutosXImagem:= TProdutoXImagemControl.Create;
    ProdutosXImagem.ProdutoXImagemModel.Acao       := ATipo;
    ProdutosXImagem.ProdutoXImagemModel.IDProduto  := TB_ProdutosID.AsInteger;
    ProdutosXImagem.Salvar;
  finally
    Label5.Caption := OpenDialogPRD.FileName;
    PreencheDataSetProdutosImagem(TB_ProdutosID.AsString);
    ProdutosXImagem.Free;
  end;
end;

procedure TfrmCadProdutos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action :=cafree;
end;

procedure TfrmCadProdutos.FormCreate(Sender: TObject);
var nI: Integer;
begin
  For nI := 0 to ComponentCount-1 do
  begin
    if Components[nI] is TEdit  then
      (Components[nI] as TEdit).OnEnter := PintaEdit
    else
      if Components[nI] is TDBEdit then
        (Components[nI] as TDBEdit).OnEnter := PintaEdit;
  end;
  OpenDialogPRD.InitialDir := ExtractFilePath(Application.ExeName)+'\Imagem\produto';
  PreencheDatasetProdutos;
end;

procedure TfrmCadProdutos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
   perform(WM_NEXTDLGCTL,0,0);
end;

procedure TfrmCadProdutos.PintaEdit(Sender: TObject);
var nI: Integer;
begin
  For nI := 0 to ComponentCount-1 do
  begin
    if (Components[nI] is TEdit) then
    begin
    if TEdit(Components[nI]).Focused then
      TEdit(Components[nI]).Color := $00D7FFFF
    else
      TEdit(Components[nI]).Color := clWhite;
    end
    else
      if (Components[nI] is TDBEdit) then
      begin
        if TDBEdit(Components[nI]).Focused then
          TDBEdit(Components[nI]).Color := $00D7FFFF
        else
          TDBEdit(Components[nI]).Color := clWhite;
      end;

  end;
end;

procedure TfrmCadProdutos.PreencheDatasetProdutos;
begin
  try
    Produtos:= TProdutoControl.Create;
    DSP_Produtos.DataSet := Produtos.Obter(1,'');
    TB_Produtos.Open;
    PreencheDataSetProdutosImagem(TB_ProdutosID.AsString);
  finally
    Produtos.Free;
  end;
end;

procedure TfrmCadProdutos.PreencheDataSetProdutosImagem(AID_Produto: string);
begin
  try
    TB_ImagemPRD.close;
    ProdutosXImagem:= TProdutoXImagemControl.Create;
    DSP_ImagemPRD.DataSet := ProdutosXImagem.ObterProdutoImgID(AID_Produto);
    TB_ImagemPRD.open;
    if TB_ImagemPRDPATH_IMAGEM.AsString <> '' then
    begin
      Img_Produtos.Picture.LoadFromFile(TB_ImagemPRDPATH_IMAGEM.AsString);
      Label5.Caption := TB_ImagemPRDPATH_IMAGEM.AsString;
    end
    else
      begin
        try
          TB_ImagemPRD.Open;
          if FileExists(ExtractFilePath(Application.ExeName)+'Imagem\produto\sem_imagem.JPG') then
            Img_Produtos.Picture.LoadFromFile(ExtractFilePath(Application.ExeName)+'Imagem\produto\sem_imagem.JPG')
          else
            Img_Produtos.Picture := NIL;
          Label5.Caption := '***Imagem n�o encontrada ! ***';
        except
          TB_ImagemPRD.Open;
          Label5.Caption := '***Imagem n�o encontrada ! ***';
        end;
      end;
  finally
    ProdutosXImagem.Free;
  end;
end;

procedure TfrmCadProdutos.TB_ProdutosAfterScroll(DataSet: TDataSet);
begin
  PreencheDataSetProdutosImagem(TB_ProdutosID.AsString);
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeDelete(DataSet: TDataSet);
begin
  ATipo := uEnumerado.tacExcluir;
  if MessageDlg('Deseja realmente exluir essa informa��o ?',mtConfirmation, [mbYes,mbNo],1) = mrYes then
  begin
    try
      Produtos:= TProdutoControl.Create;
      Produtos.ProdutoModel.Acao        := ATipo;
      Produtos.ProdutoModel.Codigo      := TB_ProdutosID.AsInteger;
      Produtos.Salvar;
    finally
      messagedlg('Dado Excluido com sucesso!',mtinformation,[mbok],0);
      Produtos.Free;
      PreencheDatasetProdutos;
    end;
  end;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeEdit(DataSet: TDataSet);
begin
  TB_ProdutosID.FocusControl;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeInsert(DataSet: TDataSet);
begin
  TB_ProdutosID.FocusControl;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforePost(DataSet: TDataSet);
begin
  if TB_Produtos.State = dsInsert then  //grava no banco as inser��es ou altera��es
    begin
      ATipo := uEnumerado.tacIncluir;
      try
        Produtos:= TProdutoControl.Create;
        Produtos.ProdutoModel.Acao        := ATipo;
        TB_ProdutosID.AsInteger           := Produtos.ProdutoModel.GetId;
        Produtos.ProdutoModel.Codigo      := TB_ProdutosID.AsInteger; //gera codigo autom�tico
        Produtos.ProdutoModel.Codigobarra := TB_ProdutosCODIGO_BAR.AsString;
        Produtos.ProdutoModel.Descricao   := TB_ProdutosDESCRICAO.AsString;
        Produtos.ProdutoModel.PRECOCOMPRA := TB_ProdutosPRECO_COMPRA.AsCurrency;
        Produtos.ProdutoModel.PRECOVENDA  := TB_ProdutosPRECO_VENDA.AsCurrency;
        Produtos.ProdutoModel.QTDEESTOQUE := TB_ProdutosQTD_ESTOQUE.AsCurrency;
        Produtos.Salvar;
      finally
        messagedlg('Dados gravados com sucesso!',mtinformation,[mbok],0);
        Produtos.Free;
        PreencheDatasetProdutos;
      end;
    end
    else
    if TB_Produtos.State = dsEdit then
    begin
      ATipo := uEnumerado.tacAlterar;
      try
        Produtos:= TProdutoControl.Create;
        Produtos.ProdutoModel.Acao        := ATipo;
        Produtos.ProdutoModel.Codigo      := TB_ProdutosID.AsInteger; //gera codigo autom�tico
        Produtos.ProdutoModel.Codigobarra := TB_ProdutosCODIGO_BAR.AsString;
        Produtos.ProdutoModel.Descricao   := TB_ProdutosDESCRICAO.AsString;
        Produtos.ProdutoModel.PRECOCOMPRA := TB_ProdutosPRECO_COMPRA.AsCurrency;
        Produtos.ProdutoModel.PRECOVENDA  := TB_ProdutosPRECO_VENDA.AsCurrency;
        Produtos.ProdutoModel.QTDEESTOQUE := TB_ProdutosQTD_ESTOQUE.AsCurrency;
        Produtos.Salvar;
      finally
        messagedlg('Dados gravados com sucesso!',mtinformation,[mbok],0);
        Produtos.Free;
        PreencheDatasetProdutos;
      end;
    end;
end;

procedure TfrmCadProdutos.TB_ProdutosBeforeScroll(DataSet: TDataSet);
begin
  PreencheDataSetProdutosImagem(TB_ProdutosID.AsString);
end;

end.
