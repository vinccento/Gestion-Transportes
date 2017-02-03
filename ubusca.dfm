object f_busca: Tf_busca
  Left = 0
  Top = 0
  Caption = 'Busqueda por de Albaranes'
  ClientHeight = 712
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object ALBARANES: TPageControl
    Left = 0
    Top = 0
    Width = 1100
    Height = 712
    ActivePage = historico
    Align = alClient
    TabOrder = 0
    object historico: TTabSheet
      Caption = 'MODIFICA ALBARANES'
      object Shape1: TShape
        Left = 17
        Top = 0
        Width = 1030
        Height = 646
        Brush.Color = clSkyBlue
        DragMode = dmAutomatic
        ParentShowHint = False
        Pen.Color = clYellow
        Pen.Width = 3
        ShowHint = False
      end
      object Bevel1: TBevel
        Left = 25
        Top = 135
        Width = 312
        Height = 110
      end
      object Bevel3: TBevel
        Left = 32
        Top = 10
        Width = 982
        Height = 54
      end
      object Label2: TLabel
        Left = 40
        Top = 12
        Width = 113
        Height = 13
        Caption = 'B'#250'squeda de Albaranes'
      end
      object Shape2: TShape
        Left = 17
        Top = 70
        Width = 997
        Height = 2
      end
      object Label6: TLabel
        Left = 220
        Top = 12
        Width = 72
        Height = 13
        Caption = 'Fecha de Inicio'
      end
      object fecha_alb: TLabel
        Left = 29
        Top = 91
        Width = 72
        Height = 13
        Caption = 'Fecha Albar'#225'n '
      end
      object lexpedicion: TLabel
        Left = 473
        Top = 91
        Width = 51
        Height = 13
        Caption = 'Expedici'#243'n'
      end
      object lcliente: TLabel
        Left = 32
        Top = 156
        Width = 33
        Height = 13
        Caption = 'Cliente'
      end
      object Label10: TLabel
        Left = 257
        Top = 91
        Width = 52
        Height = 13
        Caption = 'Referencia'
      end
      object ncliente: TLabel
        Left = 33
        Top = 183
        Width = 37
        Height = 13
        Caption = 'Nombre'
      end
      object Label9: TLabel
        Left = 33
        Top = 210
        Width = 49
        Height = 13
        Caption = 'Remitente'
      end
      object Bevel2: TBevel
        Left = 362
        Top = 132
        Width = 487
        Height = 110
      end
      object Label8: TLabel
        Left = 377
        Top = 156
        Width = 66
        Height = 13
        Caption = 'Consignatario'
      end
      object Label11: TLabel
        Left = 377
        Top = 183
        Width = 43
        Height = 13
        Caption = 'Direcci'#243'n'
      end
      object Label12: TLabel
        Left = 377
        Top = 210
        Width = 43
        Height = 13
        Caption = 'C. Postal'
      end
      object Label14: TLabel
        Left = 511
        Top = 209
        Width = 45
        Height = 13
        Caption = 'Poblaci'#243'n'
      end
      object Label16: TLabel
        Left = 820
        Top = 32
        Width = 108
        Height = 13
        Caption = 'Registros encontrados'
        Color = clHotLight
        DragMode = dmAutomatic
        ParentColor = False
      end
      object Label18: TLabel
        Left = 439
        Top = 12
        Width = 54
        Height = 13
        Caption = 'Fecha Final'
      end
      object Bevel4: TBevel
        Left = 816
        Top = 25
        Width = 183
        Height = 29
      end
      object Bevel5: TBevel
        Left = 25
        Top = 260
        Width = 312
        Height = 189
      end
      object Label19: TLabel
        Left = 37
        Top = 278
        Width = 48
        Height = 13
        Caption = 'Cobramos'
      end
      object Label20: TLabel
        Left = 37
        Top = 305
        Width = 43
        Height = 13
        Caption = 'Pagamos'
      end
      object Label22: TLabel
        Left = 39
        Top = 335
        Width = 50
        Height = 13
        Caption = 'Proveedor'
      end
      object Label23: TLabel
        Left = 39
        Top = 403
        Width = 52
        Height = 13
        Caption = 'N'#186' Factura'
      end
      object Bevel7: TBevel
        Left = 353
        Top = 398
        Width = 523
        Height = 67
      end
      object Bevel8: TBevel
        Left = 362
        Top = 260
        Width = 131
        Height = 81
      end
      object Label24: TLabel
        Left = 369
        Top = 312
        Width = 23
        Height = 13
        Caption = 'Peso'
      end
      object Label26: TLabel
        Left = 369
        Top = 282
        Width = 29
        Height = 13
        Caption = 'Bultos'
      end
      object Bevel9: TBevel
        Left = 511
        Top = 267
        Width = 502
        Height = 121
      end
      object Label27: TLabel
        Left = 521
        Top = 277
        Width = 71
        Height = 13
        Caption = 'Observaciones'
      end
      object Label28: TLabel
        Left = 521
        Top = 341
        Width = 74
        Height = 13
        Caption = 'Observaciones '
      end
      object Label29: TLabel
        Left = 523
        Top = 360
        Width = 62
        Height = 13
        Caption = 'Al Proveedor'
      end
      object Label30: TLabel
        Left = 39
        Top = 376
        Width = 101
        Height = 13
        Caption = 'V'#186' B'#186' compatibl'#161'ilidad'
      end
      object BUSCA_NOMBRE: TEdit
        Left = 40
        Top = 31
        Width = 164
        Height = 21
        TabOrder = 0
      end
      object grilla_albaran: TDBGrid
        Left = 23
        Top = 471
        Width = 1011
        Height = 167
        Color = clScrollBar
        DataSource = conesiones.data_todosalb
        DrawingStyle = gdsGradient
        FixedColor = clWhite
        GradientEndColor = clSilver
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
        Columns = <
          item
            Expanded = False
            FieldName = 'FECHA_ALB'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ALBARAN'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REFERENCIA'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'REMITENTE'
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CONSIGNA'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BULTOS'
            Width = 42
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'KILOS'
            Width = 41
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cobramos'
            Width = 50
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pagamos'
            Width = 36
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PROVEEDOR'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBSERVACIONES'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CARGA GYMCOL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CARGA DESTINA VCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'puestos_costes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PAGADO_PROV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_INCIDENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIPCION_INDICENDIA2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'INCIDENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SEGUIMIENTO_INCIDENCIA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADJUNTOS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'RESUELTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'conforme'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ordenada'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OB_PROVEEDOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRAGADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FECHA_ENTREGADA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DIFEREENCIA_ENTREGA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FACTURA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'americano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_americano'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'europeo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_europeo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'homologado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_homologado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'chep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_chep'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'plastico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_plastico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fumigado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_fumigado'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'retractil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_retractil'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bases'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio_bases'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'repal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'precio repal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ADR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ONU'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Nombre_'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_CLASIFICACION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GUPO_EMBALAJE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ETIQUETAS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COD_REST_TUNEL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CAT_TTE_'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMBALAJE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_PALET'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUM_PICKIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PALTET_PICKING'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CUENTA_ALM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PALET_MANIP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ENTRADA'
            Visible = True
          end>
      end
      object boton_busca: TButton
        Left = 662
        Top = 26
        Width = 107
        Height = 27
        Caption = 'Ejecuta B'#250'squeda'
        TabOrder = 1
        OnClick = boton_buscaClick
      end
      object dbfecha: TDBEdit
        Left = 107
        Top = 88
        Width = 121
        Height = 21
        DataField = 'FECHA_ALB'
        DataSource = conesiones.data_todosalb
        TabOrder = 3
      end
      object dbexpedicion: TDBEdit
        Left = 559
        Top = 88
        Width = 121
        Height = 21
        DataField = 'ALBARAN'
        DataSource = conesiones.data_todosalb
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 5
        Visible = False
      end
      object dbcliente: TDBEdit
        Left = 88
        Top = 153
        Width = 121
        Height = 21
        DataField = 'CLIENTE'
        DataSource = conesiones.data_todosalb
        TabOrder = 6
      end
      object dbreferencia: TDBEdit
        Left = 327
        Top = 88
        Width = 121
        Height = 21
        DataField = 'REFERENCIA'
        DataSource = conesiones.data_todosalb
        TabOrder = 4
      end
      object dbnombre: TDBEdit
        Left = 88
        Top = 180
        Width = 237
        Height = 21
        DataField = 'NOMBRE'
        DataSource = conesiones.DATA_CLIENTES
        TabOrder = 7
      end
      object dbremitente: TDBEdit
        Left = 88
        Top = 207
        Width = 236
        Height = 21
        DataField = 'REMITENTE'
        DataSource = conesiones.data_todosalb
        TabOrder = 8
      end
      object dbconsignatario: TDBEdit
        Left = 449
        Top = 153
        Width = 288
        Height = 21
        DataField = 'CONSIGNA'
        DataSource = conesiones.data_todosalb
        TabOrder = 9
      end
      object dbdireccion: TDBEdit
        Left = 447
        Top = 180
        Width = 290
        Height = 21
        DataField = 'DIR_CONSIG'
        DataSource = conesiones.data_todosalb
        TabOrder = 10
      end
      object dbcp: TDBEdit
        Left = 447
        Top = 207
        Width = 58
        Height = 21
        DataField = 'CP_CONSIG'
        DataSource = conesiones.data_todosalb
        TabOrder = 11
      end
      object dbpoblacion: TDBEdit
        Left = 573
        Top = 207
        Width = 268
        Height = 21
        DataField = 'LOC_CONSIG'
        DataSource = conesiones.data_todosalb
        TabOrder = 12
      end
      object Edit3: TEdit
        Left = 384
        Top = 127
        Width = 121
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clGradientActiveCaption
        TabOrder = 20
        Text = 'Datos del Consignatario'
      end
      object Edit2: TEdit
        Left = 40
        Top = 129
        Width = 92
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clGradientActiveCaption
        TabOrder = 21
        Text = 'Datos del Cliente'
      end
      object Edit1: TEdit
        Left = 944
        Top = 31
        Width = 51
        Height = 20
        BorderStyle = bsNone
        Color = clGradientActiveCaption
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 22
      end
      object fechatimer_final: TDateTimePicker
        Left = 402
        Top = 31
        Width = 186
        Height = 21
        Date = 42184.826430115740000000
        Time = 42184.826430115740000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 23
      end
      object fechatimer: TDateTimePicker
        Left = 210
        Top = 31
        Width = 186
        Height = 21
        Date = 42182.983114363430000000
        Time = 42182.983114363430000000
        ShowCheckbox = True
        Checked = False
        TabOrder = 24
      end
      object Edit4: TEdit
        Left = 40
        Top = 251
        Width = 92
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clGradientActiveCaption
        Enabled = False
        TabOrder = 25
        Text = 'Datos Econ'#243'micos'
      end
      object dbcobramos: TDBEdit
        Left = 107
        Top = 275
        Width = 121
        Height = 21
        DataField = 'cobramos'
        DataSource = conesiones.data_todosalb
        TabOrder = 13
      end
      object dbpagamos: TDBEdit
        Left = 107
        Top = 302
        Width = 121
        Height = 21
        DataField = 'pagamos'
        DataSource = conesiones.data_todosalb
        TabOrder = 14
      end
      object DBCheckBox1: TDBCheckBox
        Left = 63
        Top = 356
        Width = 140
        Height = 17
        Caption = '   V'#186' B'#186' proveedor'
        DataField = 'PAG_PROV_2'
        DataSource = conesiones.data_todosalb
        TabOrder = 26
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object DBEdit1: TDBEdit
        Left = 107
        Top = 329
        Width = 220
        Height = 21
        DataField = 'PROVEEDOR'
        DataSource = conesiones.data_todosalb
        TabOrder = 15
      end
      object dbfactura: TDBEdit
        Left = 107
        Top = 400
        Width = 174
        Height = 21
        DataField = 'FACTURA'
        DataSource = conesiones.data_todosalb
        TabOrder = 27
      end
      object DBNavigator1: TDBNavigator
        Left = 362
        Top = 424
        Width = 504
        Height = 33
        ParentCustomHint = False
        DataSource = conesiones.data_todosalb
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbPost, nbCancel, nbRefresh]
        Ctl3D = True
        Hints.Strings = (
          'Prmer Registro'
          'Anterior'
          'Siguiente'
          #252'ltimo Registro'
          'Insertar Registro'
          'Borrar Registro'
          'Editar Registro'
          'Actualizar'
          'cancelar Edici'#243'n'
          'Refresca Consulta')
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
      end
      object chkborrar: TCheckBox
        Left = 600
        Top = 401
        Width = 169
        Height = 17
        Caption = 'Habilitar Borrado expediciones'
        TabOrder = 29
      end
      object Edit5: TEdit
        Left = 374
        Top = 255
        Width = 87
        Height = 21
        TabStop = False
        BorderStyle = bsNone
        Color = clGradientActiveCaption
        TabOrder = 30
        Text = 'Datos Mercan'#237'a'
      end
      object Edit6: TEdit
        Left = 517
        Top = 255
        Width = 68
        Height = 17
        TabStop = False
        BorderStyle = bsNone
        Color = clGradientActiveCaption
        TabOrder = 31
        Text = 'Comentarios'
      end
      object dbkilos: TDBEdit
        Left = 421
        Top = 306
        Width = 58
        Height = 21
        DataField = 'KILOS'
        DataSource = conesiones.data_todosalb
        TabOrder = 17
      end
      object dbbultos: TDBEdit
        Left = 421
        Top = 279
        Width = 58
        Height = 21
        DataField = 'BULTOS'
        DataSource = conesiones.data_todosalb
        TabOrder = 16
      end
      object dbobserva: TDBMemo
        Left = 598
        Top = 272
        Width = 405
        Height = 53
        DataField = 'OBSERVACIONES'
        DataSource = conesiones.data_todosalb
        TabOrder = 18
      end
      object dbobserva_prov: TDBMemo
        Left = 601
        Top = 331
        Width = 405
        Height = 53
        DataField = 'OB_PROVEEDOR'
        DataSource = conesiones.data_todosalb
        TabOrder = 19
      end
      object dbcuenta_alm: TDBEdit
        Left = 693
        Top = 88
        Width = 121
        Height = 21
        DataField = 'CUENTA_ALM'
        DataSource = conesiones.data_todosalb
        TabOrder = 32
        Visible = False
      end
      object DBEdit2: TDBEdit
        Left = 148
        Top = 373
        Width = 25
        Height = 21
        DataField = 'FACTURA'
        DataSource = conesiones.data_todosalb
        TabOrder = 33
      end
      object MaskEdit1: TMaskEdit
        Left = 559
        Top = 86
        Width = 121
        Height = 24
        EditMask = '###\-###\-######;0;_'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        MaxLength = 14
        ParentFont = False
        TabOrder = 34
      end
      object Panel4: TPanel
        Left = 866
        Top = 83
        Width = 137
        Height = 183
        TabOrder = 35
        object chsinprecio: TCheckBox
          Left = 16
          Top = 10
          Width = 97
          Height = 17
          Caption = 'Sin precio'
          TabOrder = 0
        end
        object rgrupo1: TRadioGroup
          Left = 8
          Top = 33
          Width = 121
          Height = 136
          Caption = 'Opciones'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = False
          TabOrder = 1
        end
        object proveedor: TRadioButton
          Left = 16
          Top = 60
          Width = 108
          Height = 17
          Caption = 'Por Proveedor'
          Checked = True
          TabOrder = 2
          TabStop = True
        end
        object RadioButton1: TRadioButton
          Left = 16
          Top = 83
          Width = 108
          Height = 17
          Caption = 'Por Referencia'
          TabOrder = 3
        end
        object RadioButton2: TRadioButton
          Left = 16
          Top = 106
          Width = 109
          Height = 17
          Caption = 'Por Poblaci'#243'n'
          TabOrder = 4
        end
        object RadioButton3: TRadioButton
          Left = 16
          Top = 129
          Width = 107
          Height = 17
          Caption = 'Por Consignatario'
          TabOrder = 5
        end
      end
    end
  end
end
