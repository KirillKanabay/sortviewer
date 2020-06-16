object SortInfoForm: TSortInfoForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = '$'#1053#1072#1079#1074#1072#1085#1080#1077'_'#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
  ClientHeight = 544
  ClientWidth = 999
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 120
  TextHeight = 16
  object SortName: TLabel
    Left = 304
    Top = 8
    Width = 442
    Height = 50
    Caption = #1053#1072#1079#1074#1072#1085#1080#1077'_'#1089#1086#1088#1090#1080#1088#1086#1074#1082#1080
    Font.Charset = DEFAULT_CHARSET
    Font.Color = 3881787
    Font.Height = 50
    Font.Name = 'Gilroy Bold'
    Font.Style = []
    Font.Quality = fqAntialiased
    ParentFont = False
  end
  object Menu: TPanel
    Left = -165
    Top = 0
    Width = 230
    Height = 560
    Align = alCustom
    BevelOuter = bvNone
    Color = 8410376
    ParentBackground = False
    TabOrder = 0
    object MenuTitle: TPanel
      Left = 0
      Top = -6
      Width = 230
      Height = 70
      BevelOuter = bvNone
      Color = 8410376
      ParentBackground = False
      TabOrder = 0
      OnMouseLeave = MenuTitleMouseLeave
      OnMouseMove = MenuTitleMouseMove
      object HomeIcon: TImage
        Left = 165
        Top = 6
        Width = 65
        Height = 75
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E406040A122C06980825000001894944415478DAED94CF2B44
          5114C7BF2786487E6D3433292B1B36948DCDEC288961A128B12199FC2889FC03
          C8C6BC304D2C94052561416433D95A4C626761A18685C98F34D2348E6BDE33BD
          79BD77CD1B2BF2DDDCF3CE8F4FEF9E73BA04A9D80550449641D2F2612C8A639C
          56B202F014E634739EA6C5B71B8DA9E03B4214950038074B18D239D631208A14
          F8529E036AB504701E36D06570EEA39B5E757F754A1E0B001761074D26DC10BC
          F4C4FD5845AE04C0153844BD455B2ED14C116EC7260A2C005C8563544B06732D
          1057EC11173A3701702D8EE0865C7768A1B0C89CA11E0320C92DC1F77A41279D
          7021C5D200DC862D71B3CCF4865EDA564D0DC07D584BF6365325E0A3600A20A6
          3B2B5F6A5325F79398B08009DBC5AA96314A1C485B59BB0A10C7326E9D99EE89
          8318FC01C02F5AC79570A018619BA57578469C6EBEC6588A079B80327AFC3CFE
          38E04CAC98AA49346403D8A30E2DBA0BEF3FE037001CE2B52D37A42834A64515
          8C1862513829AE038824275C6929095C50428BE5A3C6F0E445E856353E008DBD
          9E308D2D03FE0000002574455874646174653A63726561746500323032302D30
          362D30345431303A31383A34342B30303A30307A2275CD000000257445587464
          6174653A6D6F6469667900323032302D30362D30345431303A31383A34342B30
          303A30300B7FCD710000001974455874536F667477617265007777772E696E6B
          73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = HomeIconClick
        OnMouseLeave = MenuTitleMouseLeave
        OnMouseMove = MenuTitleMouseMove
      end
    end
    object HelpPanel: TPanel
      Left = 0
      Top = 480
      Width = 230
      Height = 79
      BevelOuter = bvNone
      Color = 8410376
      ParentBackground = False
      TabOrder = 1
      OnClick = HelpPanelClick
      OnMouseLeave = HelpPanelMouseLeave
      OnMouseMove = HelpPanelMouseMove
      object HelpIcon: TImage
        Left = 165
        Top = 0
        Width = 64
        Height = 64
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E406020F1E08B58E3ECF000002354944415478DAA5954D6C4C
          5114C77F274154100B31B52B351199D2268DA036AC88AF050B8C88AF768B8456
          574C63D592B0556D340D765828890D2B1F95345A0D89747CAD6A6A23D24C7548
          AEF3665EDBF7715F6732F35FBCDCF7CE39BFFBCEBDE79E2B586496B39F1DD453
          C30A7DFDC5374678CE13F91DF69550F07ADA384A95853BC57D3A656C1E80A9E2
          2A675948B4FE7293CBF2C70A30EB78441DC5F59E83F23904300D3C6355C0F515
          03FADC4753E07B86DD32EC03E8EC2F43E15DB48B519BE8E86208B1BDF017E2E6
          3EC8C6804B9A0DF2CFC52FE0136B43896C95A919C0752E8432ED97139EF5E9E7
          78C8E39AB4E501BA71A396957F2C073C8001F65A762421630EA097D396B59EA4
          4EBEBBE1353AC5528B4FAF348B56DD0F6BD9A0D597948F1A9ED002DA64F5C852
          2DE618778992C1A9BB78B85E677544CC6D9A295FDD62DEB2D96278A027624EE7
          B4C0ED1A14F3939516439F9CF26492E24A0460424C2EF2F07448AA28605ACC34
          8B2A03D85328153011B588A502DE88E9A6A502C02D3149EE550038EC94F2384B
          CA0464893987A9873365027AA4C501C4F960AD8562809C1EE774A1A174D11A30
          BEA68F211972018D3472926D019F4E699FE9488B35A0C167F49572DEE78E22BC
          1A65CB6C4B5373AD36D598C73CAE69F99560B5E72D43937C7106736DBD5EDB7A
          8CD29461978C1486DE8BA59687119DC7AF610E15660F00F2EDBD83F3F35E6D39
          6E908AB8DA5C489C4B24AD5D329BBF5CD3FE8FD66E6796B1879DBA2F6BDCEBFD
          2BEF78C153990CFBFE076852BB5DC70810EA0000002574455874646174653A63
          726561746500323032302D30362D30325431353A33303A30382B30303A30303C
          CD32810000002574455874646174653A6D6F6469667900323032302D30362D30
          325431353A33303A30382B30303A30304D908A3D0000001974455874536F6674
          77617265007777772E696E6B73636170652E6F72679BEE3C1A0000000049454E
          44AE426082}
        OnClick = HelpPanelClick
        OnMouseLeave = HelpPanelMouseLeave
        OnMouseMove = HelpPanelMouseMove
      end
    end
    object BubbleSortPanel: TPanel
      Left = 1
      Top = 70
      Width = 230
      Height = 70
      Alignment = taLeftJustify
      BevelOuter = bvNone
      BevelWidth = 3
      Color = 12681740
      ParentBackground = False
      TabOrder = 2
      OnClick = BubbleSortPanelClick
      OnMouseLeave = BubbleSortPanelMouseLeave
      OnMouseMove = BubbleSortPanelMouseMove
      object BorderBottomBS: TShape
        Left = 0
        Top = 65
        Width = 230
        Height = 5
        Align = alBottom
        Brush.Color = 6702342
        Pen.Color = 11761163
        Pen.Style = psClear
        OnMouseLeave = BubbleSortPanelMouseLeave
        OnMouseMove = BubbleSortPanelMouseMove
        ExplicitTop = 56
      end
      object SelectIndBS: TShape
        Left = 225
        Top = 0
        Width = 5
        Height = 65
        Align = alRight
        Brush.Color = 4252656
        Pen.Style = psClear
        Visible = False
        OnMouseLeave = BubbleSortPanelMouseLeave
        OnMouseMove = BubbleSortPanelMouseMove
        ExplicitHeight = 70
      end
      object BubbleSortIcon: TImage
        Left = 165
        Top = 0
        Width = 64
        Height = 64
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E40602113131EE2F00D0000003904944415478DA95956D6895
          6518C77F97059AC5AC88205710319DCC51AECCB43C923ACD3EE82874962F6554
          33131D3508AB4F15F4823A156D38CBBEB8699EF44354AE48D7CCB6744DB217D6
          0805F1652815B4364AA1BAFB3FF7397BCEFD7476049F2FCF73DDCF73FFCE755D
          F7F5FF1F23BEDC64A6E8D66147B88CCBB29BAF6527A5ECD7E32CBA596C7D970B
          D8C7399EB50BAE860F79931B6CAE5F1DC622DD9ACDF9E84AA6733B8E1FF8C2FE
          4E00947C33E3ED829E76A88CFBF89A47AC53D1125ED0EBB7AC59CF29DEE317BD
          31EEE57A9EB0F61050C7585B9ECDA58983DC4D8FD58700378D34CBEC53ADD5F0
          3965823D641D39C0F3940E027CBC8D9F6C83EEA6121CBB18460FABADC5BF6BA4
          8A35FCCA3ACAA34232807BD4425F828F46A88D0BED9B0058C96B36258E6EA35D
          65BCCF4B7620D7C48F55DF0ADF85116CE53AAB72B3A826C5CDFAF5B3FCC9317B
          3C0036D2C538CE46650E0246D1C4F8EC317ECF2B6C50A3DE557C522BB752C953
          4AFA693B1E40D6D36BEB63805F9AA4FE3BA577951AF62A5BED5FBF3AC0CF7CC2
          DBCCE76516D857F1D79DBC18941060C6F2258BAC358EAFA69C252CE419FA9465
          2A93859BC75ACAEC9F5C092926D26587F47490DDD690879DC047D452ACC39BA1
          A88A461E0E8FB19695FA602E9B755CF54C88C879880A3ED31CEEE7A8A6A04883
          D4110E52AF523BE1C6D0C63E7EB44D434FBDDBC26FFCCE329EA32DD39F1030CD
          8E7B40BF52EB2E00984C038FB1D74AF3C4E456B3CA97B08937B8C9060A00AEA1
          575D386F23DD70B5159AEC62AE895335FF9DD6EEFA196DFD14BC5C11A76D94DB
          C370EDFCCB167880BCA05AEF76471EE07A0A97E001E5A4AD4C3F53AC9DA7AD48
          006DEF9248918CEFB23EC9A8DB365E02504789AD701F30528001AB8E00CB996A
          4B3332B677249B8DDC31D431FAED5768CC5759AB7AB05833BBD3F740FA4EE500
          BAB7B1C7B61400D432CF6626D732251C56429398E8BB308643F2C403436CAF64
          87B23DF13F805762D4C4F4A0916AACD3BC4E435888FC70A56CC48B29E9DEA11A
          4B906531472355C2366E64BBCCEB24919C67F3A44CB746D39AE7DE21A08E0A01
          8F4636A168A637945BF4784A45A533FACC77EF64062DEAED83C92ADD9DDC2F1B
          FF363BCCF9EE9DF8381675BC522179ED92B5CEB16305DC3B71485951DBE6A0AC
          D156E7EA39E36D7E28F70EC258D4561C64D0A20C1EE501FBAE807B27005951E7
          00DE8BA6D31A6DF7519E7B878058D4852631CFBD97DA1FC9266645CD25AF41F7
          CEFCF5FC07EA53837A0A7BAC560000002574455874646174653A637265617465
          00323032302D30362D30325431373A34393A34392B30303A3030AB82BCCD0000
          002574455874646174653A6D6F6469667900323032302D30362D30325431373A
          34393A34392B30303A3030DADF04710000001974455874536F66747761726500
          7777772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = BubbleSortPanelClick
        OnMouseLeave = BubbleSortPanelMouseLeave
        OnMouseMove = BubbleSortPanelMouseMove
      end
    end
    object ShakeSortPanel: TPanel
      Left = 1
      Top = 139
      Width = 230
      Height = 70
      BevelOuter = bvNone
      Color = 12681740
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 3
      OnClick = ShakeSortPanelClick
      OnMouseLeave = ShakeSortPanelMouseLeave
      OnMouseMove = ShakeSortPanelMouseMove
      object BorderBottomSkS: TShape
        Left = 0
        Top = 65
        Width = 230
        Height = 5
        Align = alBottom
        Brush.Color = 6702342
        Pen.Color = 11761163
        Pen.Style = psClear
        OnMouseLeave = ShakeSortPanelMouseLeave
        OnMouseMove = ShakeSortPanelMouseMove
        ExplicitTop = 57
      end
      object ShakeSortIcon: TImage
        Left = 165
        Top = 0
        Width = 64
        Height = 64
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E40602113305FDAD96E7000002464944415478DAA5954B4855
          511486BF5F332D2A28B1BC83A234CB08A4701286646442A1848D0AA590661585
          09953D4841BC93502822087A519041118881A02685BD26514625F6841029EC41
          82955ABB55189C4EF75E8FBA27679F7FAFF39DF5DA7B8B090E455F72B55430D9
          26831CD5C1F100BE13D2477B26D3A3A4F1009CE49F8D11E0311B1F60021EB8DD
          EC23E4117A09EB786080CBE534EBF4D2A3A4D34C993A82022A99AE033EAD967E
          8583022E52E293AAE967B94A0301DC6ACE92A52F3E75069D16447B10409555ED
          4804BD1AA7AA608095B446882C9FDBC100D9DCA52E02600F2BF420082085A74A
          89A0F791A9BE5100EE12B7683257E7F9F456B670CF422B22579BA3025C221F98
          CF34DAB5C007784101EDE432C06B9235180D10CF3BFBCB102D4AF701BAD860BD
          9847121DA4EA47F410C2C4738A662DF4E96F58C50DABC3768655192B073506A8
          E38966FBF4F72CA58B0CF61AE0502CC04DC2B4F095295E375D9CC53E8BCF1640
          01FB95170B70824195FB0BE6E6581B67F148A9AE9E04ED8C050899A321EE53A2
          4E8F9A6D79D9C67972EC5C58ACDE5880243E31930B5C5583472D653DD729A4EC
          F7AABEC5022CA24D736D37C4EBB047ADB6D24E654035EE2D6BD41D0B10C743AB
          423FA52AF6A88938AE70C67C2B67997EC60098710EE7586B590869E45476A2E7
          4F11B3AD17B7EACEBFF6FF0396D0A80CF79C8D7AECC94C260DCAB4862ED2B3D1
          006914EA983B49B7EA3D6A0569DAE176D1A457A300463E28B67B31FF6FBECD83
          36BB1FAF45B28C0648E0B26DDD4923AFC334B249436300041FBF00F73FCA214C
          A0FE960000002574455874646174653A63726561746500323032302D30362D30
          325431373A35313A30352B30303A30303A314777000000257445587464617465
          3A6D6F6469667900323032302D30362D30325431373A35313A30352B30303A30
          304B6CFFCB0000001974455874536F667477617265007777772E696E6B736361
          70652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = ShakeSortPanelClick
        OnMouseLeave = ShakeSortPanelMouseLeave
        OnMouseMove = ShakeSortPanelMouseMove
      end
      object SelectIndSkS: TShape
        Left = 225
        Top = 0
        Width = 5
        Height = 65
        Align = alRight
        Brush.Color = 4252656
        Pen.Style = psClear
        Visible = False
        OnMouseLeave = ShakeSortPanelMouseLeave
        OnMouseMove = ShakeSortPanelMouseMove
        ExplicitTop = 5
      end
    end
    object InsertionSortPanel: TPanel
      Left = 1
      Top = 208
      Width = 230
      Height = 70
      BevelOuter = bvNone
      Color = 12681740
      ParentBackground = False
      TabOrder = 4
      OnClick = InsertionSortPanelClick
      OnMouseLeave = InsertionSortPanelMouseLeave
      OnMouseMove = InsertionSortPanelMouseMove
      object BorderBottomIS: TShape
        Left = 0
        Top = 65
        Width = 230
        Height = 5
        Align = alBottom
        Brush.Color = 6702342
        Pen.Color = 11761163
        Pen.Style = psClear
        OnMouseLeave = InsertionSortPanelMouseLeave
        OnMouseMove = InsertionSortPanelMouseMove
        ExplicitTop = 57
      end
      object InsertionSortIcon: TImage
        Left = 165
        Top = 0
        Width = 64
        Height = 64
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E40602121F11DC00976D000001CE4944415478DAEDD53B485C
          4114C6F1FF5188114923DAA4D1DA47C02285451A252622E29B68C04AC14044B0
          50219536825A2C8842E2A310C5B789C188AE20368284906661EBB5B251B4F215
          30E3D9BBF75EAF2FB2CB222AE46C313B3BF3FD987B76E00A71963C74C0D46364
          221EE08F0249F1007F754BC27FE07E00534C065FC44400237C605B5662018264
          31400B673A49A49F668292130B50C4779E2AF15127831A3FA14CD662EA8179C3
          A212913AA15CFCB7F4C00C93677F3FA25902763C4DF6F4148B24EBE4946AF911
          FEC55E7BA1674AB633BFC584C874B93D0AC384A9629E2619526255CF58AAF126
          3E5329DFACF83A696E2224E619E9F6C3F8288D10A68D5E7AA543B797E8C2B28E
          3DB4D32E7D767C89568C95DAF5F4C03C6196320E784D8103B86B1680DF8AAF50
          21A73736D125C6F50FBC0EF8A8BF1AB701934A0F63B2E912C7DAA4EBC021294E
          DCBC52AC430E1CA09A3926D9A0482709E4F35CC75169F4002334E8B0C3167A37
          F5510A784F8DCC3BC03BA6F593AFD7F7A2FCF2D603AC69672E2AC44F6AA99599
          CB4017B9F68644B2F1C9BE0748D5BE07AD8B1DAE009D37005247D465A6EE00F8
          C548F4008DBCF402952CC41076AA4ABE3A400A9F3CF73BBADAA55B8E1EC1BBF1
          DF750E0BE1B5A28441DD090000002574455874646174653A6372656174650032
          3032302D30362D30325431383A33313A31372B30303A3030AEC149B600000025
          74455874646174653A6D6F6469667900323032302D30362D30325431383A3331
          3A31372B30303A3030DF9CF10A0000001974455874536F667477617265007777
          772E696E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = InsertionSortPanelClick
        OnMouseLeave = InsertionSortPanelMouseLeave
        OnMouseMove = InsertionSortPanelMouseMove
      end
      object SelectIndIS: TShape
        Left = 225
        Top = 0
        Width = 5
        Height = 65
        Align = alRight
        Brush.Color = 4252656
        Pen.Style = psClear
        Visible = False
        OnMouseLeave = InsertionSortPanelMouseLeave
        OnMouseMove = InsertionSortPanelMouseMove
        ExplicitTop = 5
      end
    end
    object SelectionSortPanel: TPanel
      Left = 1
      Top = 277
      Width = 230
      Height = 70
      BevelOuter = bvNone
      Caption = 'SelectionSort'
      Color = 12681740
      ParentBackground = False
      ShowCaption = False
      TabOrder = 5
      OnClick = SelectionSortPanelClick
      OnMouseLeave = SelectionSortPanelMouseLeave
      OnMouseMove = SelectionSortPanelMouseMove
      object BorderBottomSS: TShape
        Left = 0
        Top = 65
        Width = 230
        Height = 5
        Align = alBottom
        Brush.Color = 6702342
        Pen.Color = 11761163
        Pen.Style = psClear
        Pen.Width = 0
        OnMouseLeave = SelectionSortPanelMouseLeave
        OnMouseMove = SelectionSortPanelMouseMove
        ExplicitTop = 57
      end
      object SelectionSortIcon: TImage
        Left = 165
        Top = -1
        Width = 64
        Height = 64
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E4060211350F4B22D87F000002BD4944415478DAA5957F4C8D
          6114C73F47CD66F9431BADB5901F21CBCCAAC98CAD9666D34C1BA9D52693341B
          AD19153634A3C53F8C31D384B434A3D1A5B89644C3B446E5E784B1617E6F527F
          A8C7D9E5A66EEFBD5E79FF79DFF73CE7F9EC9CEF73CE73048BC7E41124852693
          5CA6F19E2A8A98CA4E168A19EC2B16DB4378CC6C32594E3EB709653321C4719D
          BD52660FB091688AA96726CB48A39D3C4E738B076449BC3D40956E0E662C151C
          259B557CE63C7B48A08300E9B503A8A19228BAF9C414596D1235FB1C4544F241
          FCED45709837BC560D6A98286B4C82A6534E225B7048883DC01276114B2B9D34
          BA006504A81AF3192D6BED01FC68E1047554E374011CAC93232696B7F2C21640
          11D3D922E926FF770AFB35A22F9A80B1F2B504FCC6B80157B8ACD5502B1B860A
          3824E16602F769600CDBA4F6DF01C5126D02F55037F18E038C95AF4305F849AF
          79AEC7FB4A3A2C0166198BB4E28FB9C5F20488FA9A675AA1DFB9C962E9F10098
          78ADBF7DDA402FC9F815A417C076EDCE66F2C5E10948D55A8BD6FFE3AA78A274
          F601A2D8214966046D32C905489166ED16A71CF104F86BE93C951C7D9FC68F64
          31A68030C9F1D025836AF96609D0C520EEB1526ACD48BD05CA65B729A1470A2D
          E5B506E8429A765EA47499709AF42B5B4FFDCCA0CD3378C2492F005DAEE79294
          E87B8EF6601BEBDD5AF7F3B84381B6B757408C2A31593EF9A88EBB0AC8F60A50
          8773B448D1FF0062B47DC74B9757408526B7D507405D1AA99483F87834CA1A29
          F50E58A0C51431B065FAD6846BACE59456629D5780BA55AA3DD5EA023173F5AE
          8AE321E3E4A32FC0286E70C1AA88CC3046E89C889264B7C54B3B9B50EDB8122B
          25340607F3A4F52F00758CA451075C07113A9B02097319BBA5DD5CE56C7FB0AF
          0BA5944738753E25914296CBD4A5C8060AC4690F90ABE36C0503A51CAE53325D
          9AEC0182B9C82C0F638FCEABA5F2E38FE12751511E308E7BD6FB000000257445
          5874646174653A63726561746500323032302D30362D30325431373A35333A31
          352B30303A3030F26E97D40000002574455874646174653A6D6F646966790032
          3032302D30362D30325431373A35333A31352B30303A303083332F6800000019
          74455874536F667477617265007777772E696E6B73636170652E6F72679BEE3C
          1A0000000049454E44AE426082}
        OnClick = SelectionSortPanelClick
        OnMouseLeave = SelectionSortPanelMouseLeave
        OnMouseMove = SelectionSortPanelMouseMove
      end
      object SelectIndSS: TShape
        Left = 225
        Top = 0
        Width = 5
        Height = 65
        Align = alRight
        Brush.Color = 4252656
        Pen.Style = psClear
        Visible = False
        OnMouseLeave = SelectionSortPanelMouseLeave
        OnMouseMove = SelectionSortPanelMouseMove
        ExplicitTop = 5
      end
    end
    object ShellSortPanel: TPanel
      Left = 0
      Top = 346
      Width = 230
      Height = 70
      BevelOuter = bvNone
      Color = 12681740
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 6
      OnClick = ShellSortPanelClick
      OnMouseLeave = ShellSortPanelMouseLeave
      OnMouseMove = ShellSortPanelMouseMove
      object BorderBottomShS: TShape
        Left = 0
        Top = 65
        Width = 230
        Height = 5
        Align = alBottom
        Brush.Color = 6702342
        Pen.Color = 11761163
        Pen.Style = psClear
        OnMouseLeave = ShellSortPanelMouseLeave
        OnMouseMove = ShellSortPanelMouseMove
        ExplicitTop = 57
      end
      object ShellSortIcon: TImage
        Left = 165
        Top = 0
        Width = 64
        Height = 64
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E4060211362A2B0B5FFB0000010B4944415478DA6364A01030
          8E1A400503FEA7330800E9B58C773025FFBB321801A9738CBBB1C8A9300403A9
          0F8CFFBF333430B8306C659C8045D176867B404A89D1138B5C018337C31E8606
          C6FFEF1905FF37004DC26E402390AAC7618000630350F7401BE04FA9015E8C40
          333652E60577C69D540A83FFEC0CF50C758C7F8092DA0CD68CB3500DF8CF0694
          6D60FC0D646932D833CEC030806122C3660643864960E3F919CA188A1827A118
          B091C18C01E24A3EA06C19C37F6C065830CC811A90CE90CF3819CD005B865950
          03D2194A300C007BA10EA898B01734181CB0786190A6442B860B0C7A9418E0CA
          7092416B9067A6F75428502045DA1AC6BB58C3805091F67E1094CAA306300000
          E1C002826E0BBE7D0000002574455874646174653A6372656174650032303230
          2D30362D30325431373A35343A34322B30303A30309DF5BC4700000025744558
          74646174653A6D6F6469667900323032302D30362D30325431373A35343A3432
          2B30303A3030ECA804FB0000001974455874536F667477617265007777772E69
          6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = ShellSortPanelClick
        OnMouseLeave = ShellSortPanelMouseLeave
        OnMouseMove = ShellSortPanelMouseMove
      end
      object SelectIndShS: TShape
        Left = 226
        Top = 0
        Width = 5
        Height = 65
        Brush.Color = 4252656
        Pen.Style = psClear
        Visible = False
        OnMouseLeave = ShellSortPanelMouseLeave
        OnMouseMove = ShellSortPanelMouseMove
      end
    end
    object QuickSortPanel: TPanel
      Left = 0
      Top = 415
      Width = 230
      Height = 65
      BevelOuter = bvNone
      Color = 12681740
      Ctl3D = False
      ParentBackground = False
      ParentCtl3D = False
      TabOrder = 7
      OnClick = QuickSortPanelClick
      OnMouseLeave = QuickSortPanelMouseLeave
      OnMouseMove = QuickSortPanelMouseMove
      object QuickSortIcon: TImage
        Left = 165
        Top = 0
        Width = 64
        Height = 64
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000200000
          00200804000000D973B27F0000000467414D410000B18F0BFC61050000000262
          4B47440000AA8D2332000000097048597300000EC400000EC401952B0E1B0000
          000774494D4507E40602121E0DD11AFA63000001AB4944415478DAED954B2845
          511486BF753D065E25F24A490913A4CC2EC923614844C2806462626666646A60
          A2A49072071892090A33454AA194E4D12D19780DDC38D679B8CE807B750C0C58
          75DA67EDBDFE6FEDB5F6E96CC131A38576BA2544543362986145166C4FC2F200
          71F4CADC37003DCC12A24396C300473E2EC3D1E556FC1823BCE87E172C8023DF
          61947B827216459C4F06C91AEBB77721461DAB2AFFB01BF5A764EB136935FD34
          91E69A0AD12446122B54A973C40599E43801AB0CCAB94B9CC7248D4E826B82E4
          52ACEF5B349B25D8882B6AE558BD523A1922915B5A65D391D7B2482A0F4C1090
          03F58B58D754A6FCC16EE23BA2464E2C3F4BFBDCC0130DB2A35E256B24E8D32B
          416BB5908D77F9C7319A8872AD68DBF16399A6874B9D13F6C956609FBC386B95
          5AE09E2D0F032C44B1ECBAAA8ED76DFAB5721F039AAD5E9E5D6B151CD97217E0
          93AE97681EC38A2993C3AFA2220014B1448B0E8BD2F6754C644017F33A744AC0
          2BA0103D580AE4D42B2011B35549F2E815E0C33CBA1879FD07FC71C08D0EE99E
          01DFB12800234543EE3C037EDE03D1FF222488F18B3DD02B27F285FBFB1FD21B
          7214A56E334B0A220000002574455874646174653A6372656174650032303230
          2D30362D30325431383A33303A31332B30303A3030B54C069B00000025744558
          74646174653A6D6F6469667900323032302D30362D30325431383A33303A3133
          2B30303A3030C411BE270000001974455874536F667477617265007777772E69
          6E6B73636170652E6F72679BEE3C1A0000000049454E44AE426082}
        OnClick = QuickSortPanelClick
        OnMouseLeave = QuickSortPanelMouseLeave
        OnMouseMove = QuickSortPanelMouseMove
      end
      object SelectIndQS: TShape
        Left = 226
        Top = 0
        Width = 5
        Height = 70
        Brush.Color = 4252656
        Pen.Style = psClear
        Visible = False
        OnMouseLeave = QuickSortPanelMouseLeave
        OnMouseMove = QuickSortPanelMouseMove
      end
    end
  end
  object SortDescription: TWebBrowser
    Left = 96
    Top = 72
    Width = 681
    Height = 449
    TabOrder = 1
    ControlData = {
      4C0000004F380000202500000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126209000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object ShowCodeButton: TPanel
    Left = 801
    Top = 280
    Width = 190
    Height = 45
    BevelOuter = bvNone
    Color = 12681740
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = 22
    Font.Name = 'Gilroy'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    OnClick = ShowCodeButtonClick
    OnMouseLeave = ShowCodeButtonMouseLeave
    OnMouseMove = ShowCodeButtonMouseMove
    object ButtonLabel1: TLabel
      Left = 0
      Top = 0
      Width = 190
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = #1055#1086#1082#1072#1079#1072#1090#1100' '#1080#1089#1093#1086#1076#1085#1099#1081' '#1082#1086#1076
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = 22
      Font.Name = 'Gilroy'
      Font.Style = []
      Font.Quality = fqAntialiased
      ParentFont = False
      WordWrap = True
      OnClick = ShowCodeButtonClick
      OnMouseMove = ShowCodeButtonMouseMove
      OnMouseLeave = ShowCodeButtonMouseLeave
    end
  end
  object ShowDemoButton: TPanel
    Left = 801
    Top = 215
    Width = 190
    Height = 45
    BevelOuter = bvNone
    Color = 12681740
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = 22
    Font.Name = 'Gilroy'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
    OnClick = ShowDemoButtonClick
    OnMouseLeave = ShowDemoButtonMouseLeave
    OnMouseMove = ShowDemoButtonMouseMove
    object ButtonLabel2: TLabel
      Left = 0
      Top = 0
      Width = 190
      Height = 45
      Align = alClient
      Alignment = taCenter
      Caption = #1044#1077#1084#1086#1085#1089#1090#1088#1072#1094#1080#1103' '#1088#1072#1073#1086#1090#1099' '#1072#1083#1075#1086#1088#1080#1090#1084#1072
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = 22
      Font.Name = 'Gilroy'
      Font.Style = []
      Font.Quality = fqAntialiased
      ParentFont = False
      WordWrap = True
      OnClick = ShowDemoButtonClick
      OnMouseMove = ShowDemoButtonMouseMove
      OnMouseLeave = ShowDemoButtonMouseLeave
    end
  end
end
