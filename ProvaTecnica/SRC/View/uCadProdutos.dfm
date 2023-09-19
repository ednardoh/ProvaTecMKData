object frmCadProdutos: TfrmCadProdutos
  Left = 0
  Top = 0
  ActiveControl = DBEdtCodigo
  BorderStyle = bsSingle
  Caption = 'Cadastro de Produtos'
  ClientHeight = 625
  ClientWidth = 1159
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object pn_Clientes: TPanel
    Left = 0
    Top = 0
    Width = 1159
    Height = 625
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object Panel1: TPanel
      Left = 0
      Top = 0
      Width = 1159
      Height = 57
      Align = alTop
      Alignment = taLeftJustify
      BevelOuter = bvNone
      Caption = '  Cadastro de Produtos'
      Color = 16735067
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object pn_Grid: TPanel
      Left = 0
      Top = 344
      Width = 1159
      Height = 281
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 1
      object DBG_Clientes: TDBGrid
        Left = 0
        Top = 0
        Width = 1159
        Height = 281
        Align = alClient
        BorderStyle = bsNone
        DataSource = ds_CadProdutos
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'ID'
            Width = 59
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_BAR'
            Title.Caption = 'C'#243'digo Barra'
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRICAO'
            Title.Caption = 'Descri'#231#227'o'
            Width = 498
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_COMPRA'
            Title.Caption = 'Pre'#231'o Compra'
            Width = 99
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_VENDA'
            Title.Caption = 'Pre'#231'o Venda'
            Width = 105
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_ESTOQUE'
            Title.Caption = 'Qtde. Estoque'
            Visible = True
          end>
      end
    end
    object pn_Controls: TPanel
      Left = 0
      Top = 57
      Width = 1159
      Height = 287
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 2
      object Shape3: TShape
        Left = 839
        Top = 6
        Width = 289
        Height = 250
        Brush.Color = 16770736
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Shape4: TShape
        Left = 861
        Top = 22
        Width = 241
        Height = 158
        Pen.Color = clWhite
      end
      object Shape1: TShape
        Left = 11
        Top = 4
        Width = 822
        Height = 183
        Brush.Color = 16770736
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Label1: TLabel
        Left = 36
        Top = 18
        Width = 74
        Height = 16
        Caption = 'ID. Produto'
        FocusControl = DBEdtCodigo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 297
        Top = 16
        Width = 119
        Height = 16
        Caption = 'Descri'#231#227'o Produto'
        FocusControl = DBEdtDescrProduto
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 36
        Top = 66
        Width = 110
        Height = 16
        Caption = 'Pre'#231'o de Compra'
        FocusControl = DBEdtPrcCompra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 341
        Top = 65
        Width = 102
        Height = 16
        Caption = 'Pre'#231'o de Venda'
        FocusControl = DBEdtPrcVenda
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 651
        Top = 65
        Width = 91
        Height = 16
        Caption = 'Qtde. Estoque'
        FocusControl = DBEdtQtdeEstoque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Shape2: TShape
        Left = 11
        Top = 193
        Width = 822
        Height = 65
        Brush.Color = 16770736
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object Label9: TLabel
        Left = 25
        Top = 205
        Width = 72
        Height = 16
        Caption = 'Pesquisar :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 932
        Top = 260
        Width = 127
        Height = 16
        Caption = 'Imagem do Produto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 119
        Top = 18
        Width = 103
        Height = 16
        Caption = 'C'#243'digo de Barra'
        FocusControl = DBEditCodBarra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Img_Produtos: TImage
        Left = 861
        Top = 27
        Width = 241
        Height = 153
        Center = True
        Proportional = True
        Stretch = True
      end
      object Label5: TLabel
        Left = 848
        Top = 211
        Width = 265
        Height = 36
        Alignment = taCenter
        AutoSize = False
        Caption = '***Imagem n'#227'o encontrada ! ***'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        WordWrap = True
      end
      object DBEdtCodigo: TDBEdit
        Left = 38
        Top = 40
        Width = 73
        Height = 21
        DataField = 'ID'
        DataSource = ds_CadProdutos
        ReadOnly = True
        TabOrder = 0
      end
      object DBEdtDescrProduto: TDBEdit
        Left = 296
        Top = 38
        Width = 508
        Height = 21
        DataField = 'DESCRICAO'
        DataSource = ds_CadProdutos
        TabOrder = 2
      end
      object DBEdtPrcCompra: TDBEdit
        Left = 38
        Top = 87
        Width = 138
        Height = 21
        DataField = 'PRECO_COMPRA'
        DataSource = ds_CadProdutos
        TabOrder = 3
      end
      object DBEdtPrcVenda: TDBEdit
        Left = 341
        Top = 87
        Width = 151
        Height = 21
        DataField = 'PRECO_VENDA'
        DataSource = ds_CadProdutos
        TabOrder = 4
      end
      object DBEdtQtdeEstoque: TDBEdit
        Left = 651
        Top = 87
        Width = 152
        Height = 21
        DataField = 'QTD_ESTOQUE'
        DataSource = ds_CadProdutos
        TabOrder = 5
      end
      object EdtPesquisa: TEdit
        Left = 24
        Top = 227
        Width = 425
        Height = 21
        TabOrder = 6
      end
      object DBButtons: TDBNavigator
        Left = 519
        Top = 205
        Width = 261
        Height = 40
        DataSource = ds_CadProdutos
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        Flat = True
        Ctl3D = True
        Hints.Strings = (
          'Primeiro registro'
          'Registro anterior'
          'Pr'#243'ximo registro'
          'Ultimo registro'
          'Inserir registro'
          'Deletar registro'
          'Editar registro'
          'Grava registro'
          'Cencela edi'#231#227'o'
          '')
        ParentCtl3D = False
        ParentShowHint = False
        ConfirmDelete = False
        ShowHint = True
        TabOrder = 7
      end
      object btnConsultar: TButtonGradient
        Left = 455
        Top = 227
        Width = 24
        Height = 24
        ImageIndex = 2
        Images = ImageListIco
        TabOrder = 8
        OnClick = btnConsultarClick
      end
      object DBEditCodBarra: TDBEdit
        Left = 117
        Top = 39
        Width = 173
        Height = 21
        DataField = 'CODIGO_BAR'
        DataSource = ds_CadProdutos
        TabOrder = 1
      end
      object btnAdiciona: TButtonGradient
        Left = 885
        Top = 186
        Width = 101
        Caption = 'Adiciona Imagem'
        TabOrder = 9
        OnClick = btnAdicionaClick
      end
      object btnExcluirImagem: TButtonGradient
        Left = 992
        Top = 185
        Width = 101
        Caption = 'Exclui Imagem'
        TabOrder = 10
        OnClick = btnExcluirImagemClick
      end
    end
  end
  object ds_CadProdutos: TDataSource
    DataSet = TB_Produtos
    Left = 624
    Top = 456
  end
  object TB_Produtos: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'DSP_Produtos'
    StoreDefs = True
    BeforeInsert = TB_ProdutosBeforeInsert
    BeforeEdit = TB_ProdutosBeforeEdit
    BeforePost = TB_ProdutosBeforePost
    BeforeDelete = TB_ProdutosBeforeDelete
    BeforeScroll = TB_ProdutosBeforeScroll
    AfterScroll = TB_ProdutosAfterScroll
    Left = 688
    Top = 456
    object TB_ProdutosID: TIntegerField
      FieldName = 'ID'
    end
    object TB_ProdutosCODIGO_BAR: TStringField
      FieldName = 'CODIGO_BAR'
      Size = 13
    end
    object TB_ProdutosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object TB_ProdutosPRECO_COMPRA: TBCDField
      FieldName = 'PRECO_COMPRA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Size = 2
    end
    object TB_ProdutosPRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Size = 2
    end
    object TB_ProdutosQTD_ESTOQUE: TBCDField
      FieldName = 'QTD_ESTOQUE'
      DisplayFormat = ',0.00'
      EditFormat = ',0.00'
      Size = 2
    end
  end
  object ImageListIco: TImageList
    Left = 864
    Top = 401
    Bitmap = {
      494C010104002400400010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008CD1AB004FC0870050C0870050C087004FBE8400FEFFFE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000B3B4CE005A5C9A00353683003C3D86007173A300DADADE000000
      000000000000000000000000000000000000000000000000000000000000FCFD
      FC00F8FBFA00F3F8F600F0F7F400EEF6F300EEF6F300EFF6F300F2F8F500F7FB
      F900FBFDFC00FEFEFE000000000000000000FDFDFD00F9F9F900F4F4F400F1F1
      F100EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EDED
      ED00F1F1F100F7F7F700FBFBFB00FFFFFF000000000000000000000000000000
      00000000000030E7AD0002F2B00002F3B30002F3B20002F0AC0082CCA2000000
      0000000000000000000000000000000000000000000000000000FEFEFE003D3E
      92001212800012127E001212800010117A000D0F6C000E1073000E1073001618
      7600C8C8C800FEFEFE00000000000000000000000000FEFEFE00ECF5F100C4E0
      D400A6D0BE0094C7B1008AC2AA0086BFA70085BFA60088C1A90091C6AF00A0CD
      BA00BADBCD00E0EFE800FCFDFD0000000000E9E9E90080B3CD0049A2D20049A2
      D20049A2D20049A2D20049A2D20049A2D20049A2D20049A2D20049A2D20049A2
      D20049A2D2004CA3D000DCDEDE00F9F9F9000000000000000000000000000000
      00000000000046E4AD0004EAA30003EBA40003EBA40003E89F0081CDA2000000
      00000000000000000000000000000000000000000000F6F6F80015148A001715
      91001917940027259F001715910015148A0011117900101176000F1073002123
      7E00BDBEC300DCDCDC00FCFCFC000000000000000000FDFDFD00D2E7DE0087C0
      A80062AD8D0053A8860030916900298C63002F906800439E79005FAE8D005BA8
      880077B89C00BDDCCF00F7FBF90000000000EDF6FA0049A2D200A5C0CE00A9BF
      CC00A6BDC900AFC5D100AAC0CC009AB1BD004DA3D2004CA3D2004AA2D20049A2
      D20049A2D20049A2D2004AA2D200FFFFFF000000000000000000000000000000
      00000000000055E0A90005E0910005E1930005E0920005DE8E0081CDA2000000
      000000000000000000000000000000000000000000008D8DC000191693001A17
      95002926A900423FA600403DA8001A1799001715900022218F0012127E002223
      7E00E7E7E700FAFAFA0000000000000000000000000000000000F4F9F700A2D1
      BE000C7D4E000A8454000F8E5F0018966900259D7200299D73002D9A72003A9D
      7600C3E0D400EDF6F200FEFEFE0000000000D2E8F40049A2D200A4A5A600898C
      8D007A7C7E00AEAFB0008F9192004B4F510056A8D50055A8D40053A7D40050A5
      D3004CA3D20049A2D20049A2D200FFFFFF000000000000000000000000000000
      00000000000056DBA20008D6840008D7860008D7850007D4820081CDA2000000
      00000000000000000000000000000000000000000000C9C9E2001B179800221E
      A3003833B600E2E1E1002923BE004642B5001D18A2003835940017158F002020
      8600FEFEFE00FEFEFE0000000000000000000000000000000000B7DCCE00047F
      4D00058D5C0006976700079C6C00079E6E00079E6E00079E6D0015A173002DA3
      7A0032997200ECF5F1000000000000000000D2E8F4004CA3D200C2C3C400B5B6
      B700ACAEAF00C9CACA00B8B9BA008D8F910060ACD7005FACD7005DABD60059A9
      D50055A8D40050A5D3004BA2D200FFFFFF00BEE5CF00A3DBBC00A3DBBC00A3DB
      BC00A3DBBC004BD396000BCC7B000BCE7C000BCD7C000BCB780054BB8100A3DB
      BC00A3DBBC00A3DBBC00A3DBBC00FEFEFE000000000000000000211BAC003630
      CC004541C200ABCBFC006077C200312BCD002F28BE0017137D001B1885004B4C
      9D000000000000000000000000000000000000000000FEFFFE00088654000794
      620009A06F000AA373000AA373000AA373000AA373000AA3730010916700E4E4
      E300E6E5E4003FAA84000000000000000000D3E9F40054A7D4005AAAD5005FAC
      D70063AED70066AFD80068B0D90069B1D90069B1D90068B0D90065AFD80062AD
      D7005EABD60058A9D50052A6D400FFFFFF001BB566000DB460000EB866000EBC
      6A000FC06F0010C4730010C6760010C677000FC676000FC473000EC170000EBD
      6A000DB966000DB461000DB05D0023AB610000000000F2F2F200100F3E00201C
      9A00524DD1006A98E1008BB7F9003836B4000F0F0F001A1A1A00131313008888
      8800000000000000000000000000000000000000000076C3A700099562000CA4
      73000DA878000EA676000FA7780010AA7A000FA7770078B5A100EEEDED00EEED
      ED0050B2920014A57500D0ECE20000000000D5EAF5005BAAD60061ADD70066AF
      D8006BB2D9006EB3DA0070B4DB0071B5DB0071B5DB0070B4DA006DB3DA006AB1
      D90065AFD80060ACD7005AAAD500FFFFFF0027B56C0010B2610013B5660014BA
      6B0016BD6F0017C0730017C1750017C2760017C1750016C0730015BD6F0013BA
      6B0011B565000FB261000EAE5B0027AC640000000000C0C0C000101010000A0A
      1E004F4BC8004975BB00598DE100242A33000D0D0D001515150011111100A5A5
      A500F4F4F40000000000000000000000000000000000189C6B000DA4720019AC
      7F00AECFC400EBEBEB00ECEBEB004FA18600E4E7E600EEEEEE00E4EAE8001AAB
      7E0019B1830010AC7B0058BF9D0000000000D7EAF50062ADD70068B0D9006DB3
      DA0072B5DB0060A3CB0078B8DC003C80AD0079B8DD0077B7DC0075B6DC0071B5
      DB006CB2DA0067B0D80060ADD700FFFFFF003EBE7C0016B2640019B66A001CBA
      6F001EBD740020C0780022C17A0022C27B0021C17A001FC077001DBD73001AB9
      6E0017B5680014B1630011AE5D0035B16D000000000000000000D6D6D6000B0B
      0B0074A7F20077AAF4007BAAF100415678001B1A1A001110100023232300FCFC
      FC00000000000000000000000000000000000000000011A16D0028B68A00C8D7
      D2007BC1AB0029B98E0035BB9300D6DDDB00DEDEDE0081C2AD0029BA8F0029BB
      900029BB900029BB8F002FB88C0000000000D8EBF50067B0D9006EB3DA0074B6
      DB0079B8DC005496BF002C72A100145D8F00226999007FBBDE007CBADD0078B8
      DC0072B5DB006CB2DA0066AFD800FFFFFF0054C58D001DB56A0021B9700027BD
      77002BC17E002EC3830031C5860031C686002FC485002DC2810029C07C0024BC
      74001EB86E001AB3680016AF620045B778000000000000000000171719001E27
      38008CB8F9008DB9FA0086B3F8003B3A3A002C2C2C001C1C1C0014141400BFBF
      BF00000000000000000000000000000000000000000037B88B0037BE9500D6D5
      D6003DC59C0057CEAA0057CEAA0056C6A400D5DAD80057CEAA0057CEAA0039C5
      9B0039C59B0039C59B0053CAA50000000000D9EBF6006CB2DA0073B5DB0079B8
      DD007EBBDE005C9BC3001F669800206899001F67980085BEDF0082BCDF007DBA
      DE0078B8DC0072B5DB006AB1D900FFFFFF009DDBBB00A2E0C200A5E3C6008ADB
      B7005ECF9F0046CA950046CB960046CB970044CA95003FC890005CCF9D0086DA
      B400A5E2C500A3E0C20095DAB80057BD85000000000000000000838384006886
      B500A1C7FE00A3C8FE0098C1FC00424141004342420031303000FEFEFE000000
      0000000000000000000000000000000000000000000055CAA20047CAA200DFDE
      DF0071D8B90072D9BA0072D9BA006FD0B300DFE2E10072D9BA0072D9BA0071D9
      BA0049CFA80049CFA80083DCC10000000000DAECF60070B4DA0077B7DC007EBA
      DE0083BDDF0063A0C7002A71A1002C73A3002B71A2008BC0E10087BFE00082BC
      DF007CBADD0076B7DC006EB3DA00FFFFFF000000000000000000000000000000
      00000000000060CFA30060D3AA0061D3AA005ED3A80057D0A30081CDA2000000
      0000000000000000000000000000000000000000000000000000BFBFBF0090AC
      D900BAD5FF00B6D2FF00A7CAFF005F5E5D004D4C4C0046454500000000000000
      00000000000000000000000000000000000000000000AAE8D30058D6B000E3ED
      EA00ABD8CA0089DFC60088DDC400E3EBE800A0DBCA008AE3C9008AE3C9008AE3
      C90059D8B40059D8B400E1F5EF0000000000DBECF60073B5DB007AB9DD0081BC
      DE0087BFE00069A5CB00357BAA00387DAD00367CAB008FC3E2008BC1E10086BE
      DF007FBBDE0079B8DC0071B4DB00FFFFFF000000000000000000000000000000
      00000000000082D8B60082DBBC0083DCBC007FDBBB0075D8B50081CDA2000000
      0000000000000000000000000000000000000000000000000000E1E1E1008BA1
      C500C8DDFF00CBDFFF00B0CFFE0076757400555453004C4A4A00000000000000
      00000000000000000000000000000000000000000000000000006CDFBB0069E0
      BE00EAF7F300FAFAFA00FAFAFA00C1EBDF009FECD6009FECD6009FECD6009FEC
      D60069E1BF007EE5C7000000000000000000DCEDF60075B7DC007CBADD0083BD
      DF0089C0E0006EA9CE004084B3004488B6004185B40092C4E2008DC2E10088BF
      E00081BCDF007AB9DD007DBADE00FFFFFF000000000000000000000000000000
      000000000000A4E1C800A1E3CB00A3E4CD009EE2CA0093E0C50080CDA2000000
      0000000000000000000000000000000000000000000000000000000000007E8F
      AB00BCD6FF00BDD7FF00778BAA006A686700605E5D005E5D5C00000000000000
      0000000000000000000000000000000000000000000000000000E4F9F10077E7
      C600B2F2E000B2F2E000B2F2E000B2F2E000B2F2E000B2F2E000B2F2E000A9F1
      DD007DE9CA00FBFDFC000000000000000000FFFFFF008AC0E0007EBBDE0083BD
      DF008AC0E10071ABD000488BB9004F92BF004A8EBC0093C4E3008EC2E20088BF
      E00082BCDF0098C7E400B9DAED00FFFFFF000000000000000000000000000000
      000000000000BCE7D400B9E9D800BAEAD800B6E9D600ACE6D10080CCA2000000
      0000000000000000000000000000000000000000000000000000000000004342
      43003B3C41002E2D3000434143006361600078767400E9E9E800000000000000
      000000000000000000000000000000000000000000000000000000000000E9FB
      F5008BEED200C1F6E700C1F6E700C1F6E700C1F6E700C1F6E700BEF6E60092F0
      D600FBFEFD00000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      000000000000AFE1C700D7F2E800D8F3E900D5F2E800D2F1E50095D5B1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000504F51001E1D1F00201F23003F3E4000E1E1E10000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000D4F9ED00ACF4E000BEF7E700BDF7E700ADF5E100E2FBF3000000
      000000000000000000000000000000000000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000F81FF81FE0030000F81FC00380010000
      F81F800180010000F81F8003C0010000F81F8003C00300000000C00F80030000
      0000800F8001000000008007800100000000C00F800100000000C00F80010000
      0000C01F80010000F81FC03F80010000F81FC03FC0030000F81FE03FC0030000
      F81FE03FE0070000F81FF07FF81F000000000000000000000000000000000000
      000000000000}
  end
  object DSP_Produtos: TDataSetProvider
    Left = 744
    Top = 456
  end
  object OpenDialogPRD: TOpenDialog
    Left = 912
    Top = 104
  end
  object ds_ImgPRD: TDataSource
    DataSet = TB_ImagemPRD
    Left = 888
    Top = 168
  end
  object TB_ImagemPRD: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DSP_ImagemPRD'
    Left = 920
    Top = 168
    object TB_ImagemPRDID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
    end
    object TB_ImagemPRDPATH_IMAGEM: TStringField
      FieldName = 'PATH_IMAGEM'
      Size = 100
    end
  end
  object DSP_ImagemPRD: TDataSetProvider
    Left = 952
    Top = 168
  end
end
