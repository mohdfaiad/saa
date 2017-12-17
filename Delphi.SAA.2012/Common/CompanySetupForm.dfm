inherited frmCompanySetup: TfrmCompanySetup
  Left = 380
  Top = 238
  Width = 741
  Height = 506
  Caption = 'Company Setup'
  PixelsPerInch = 96
  TextHeight = 13
  object Label14: TLabel [0]
    Left = 7
    Top = 254
    Width = 51
    Height = 13
    Caption = 'Telephone'
  end
  object Label15: TLabel [1]
    Left = 290
    Top = 254
    Width = 17
    Height = 13
    Caption = 'Fax'
  end
  inherited StatusBar1: TfcStatusBar
    Top = 448
    Width = 725
  end
  object wwDBNavigator1: TwwDBNavigator
    Left = 0
    Top = 0
    Width = 284
    Height = 20
    DataSource = datasource
    RepeatInterval.InitialDelay = 500
    RepeatInterval.Interval = 100
    Align = alTop
    object wwDBNavigator1First: TwwNavButton
      Left = 0
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Move to first record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1First'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 0
      Style = nbsFirst
    end
    object wwDBNavigator1PriorPage: TwwNavButton
      Left = 20
      Top = 0
      Width = 21
      Height = 20
      Hint = 'Move backward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1PriorPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 1
      Style = nbsPriorPage
    end
    object wwDBNavigator1Prior: TwwNavButton
      Left = 41
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Move to prior record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Prior'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 2
      Style = nbsPrior
    end
    object wwDBNavigator1Next: TwwNavButton
      Left = 61
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Move to next record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Next'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 3
      Style = nbsNext
    end
    object wwDBNavigator1NextPage: TwwNavButton
      Left = 81
      Top = 0
      Width = 21
      Height = 20
      Hint = 'Move forward 10 records'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1NextPage'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 4
      Style = nbsNextPage
    end
    object wwDBNavigator1Last: TwwNavButton
      Left = 102
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Move to last record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Last'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 5
      Style = nbsLast
    end
    object wwDBNavigator1Insert: TwwNavButton
      Left = 122
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Insert new record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Insert'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 6
      Style = nbsInsert
    end
    object wwDBNavigator1Delete: TwwNavButton
      Left = 142
      Top = 0
      Width = 21
      Height = 20
      Hint = 'Delete current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Delete'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 7
      Style = nbsDelete
    end
    object wwDBNavigator1Edit: TwwNavButton
      Left = 163
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Edit current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Edit'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 8
      Style = nbsEdit
    end
    object wwDBNavigator1Post: TwwNavButton
      Left = 183
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Post changes of current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Post'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 9
      Style = nbsPost
    end
    object wwDBNavigator1Cancel: TwwNavButton
      Left = 203
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Cancel changes made to current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Cancel'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 10
      Style = nbsCancel
    end
    object wwDBNavigator1Refresh: TwwNavButton
      Left = 223
      Top = 0
      Width = 21
      Height = 20
      Hint = 'Refresh the contents of the dataset'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1Refresh'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 11
      Style = nbsRefresh
    end
    object wwDBNavigator1SaveBookmark: TwwNavButton
      Left = 244
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Bookmark current record'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1SaveBookmark'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 12
      Style = nbsSaveBookmark
    end
    object wwDBNavigator1RestoreBookmark: TwwNavButton
      Left = 264
      Top = 0
      Width = 20
      Height = 20
      Hint = 'Go back to saved bookmark'
      ImageIndex = -1
      NumGlyphs = 2
      Spacing = 4
      Transparent = False
      Caption = 'wwDBNavigator1RestoreBookmark'
      Enabled = False
      DisabledTextColors.ShadeColor = clGray
      DisabledTextColors.HighlightColor = clBtnHighlight
      Index = 13
      Style = nbsRestoreBookmark
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 20
    Width = 725
    Height = 428
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 13
      Top = 20
      Width = 85
      Height = 14
      Caption = 'Company Name'
    end
    object Label2: TLabel
      Left = 13
      Top = 46
      Width = 62
      Height = 14
      Caption = 'Local Name'
    end
    object Label3: TLabel
      Left = 13
      Top = 78
      Width = 43
      Height = 14
      Caption = 'Address'
    end
    object Label4: TLabel
      Left = 13
      Top = 150
      Width = 74
      Height = 14
      Caption = 'Local Address'
    end
    object Label5: TLabel
      Left = 7
      Top = 280
      Width = 85
      Height = 14
      Caption = 'Compnay Email:'
    end
    object Label6: TLabel
      Left = 10
      Top = 305
      Width = 49
      Height = 14
      Caption = 'Website:'
    end
    object Label7: TLabel
      Left = 13
      Top = 228
      Width = 39
      Height = 14
      Caption = 'Provice'
    end
    object Label8: TLabel
      Left = 290
      Top = 228
      Width = 56
      Height = 14
      Caption = 'Post Code'
    end
    object Label9: TLabel
      Left = 7
      Top = 254
      Width = 59
      Height = 14
      Caption = 'Telephone'
    end
    object Label10: TLabel
      Left = 290
      Top = 254
      Width = 18
      Height = 14
      Caption = 'Fax'
    end
    object Image1: TImage
      Left = 619
      Top = 12
      Width = 104
      Height = 85
      Picture.Data = {
        0A544A504547496D6167654C190000FFD8FFE000104A46494600010101006000
        600000FFDB004300020101020101020202020202020203050303030303060404
        0305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E
        0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C
        0C0C0C0C0C0C0C0C0C0C0C0C0CFFC00011080076005103012200021101031101
        FFC4001F0000010501010101010100000000000000000102030405060708090A
        0BFFC400B5100002010303020403050504040000017D01020300041105122131
        410613516107227114328191A1082342B1C11552D1F02433627282090A161718
        191A25262728292A3435363738393A434445464748494A535455565758595A63
        6465666768696A737475767778797A838485868788898A92939495969798999A
        A2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6
        D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F01000301
        01010101010101010000000000000102030405060708090A0BFFC400B5110002
        0102040403040705040400010277000102031104052131061241510761711322
        328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728
        292A35363738393A434445464748494A535455565758595A636465666768696A
        737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7
        A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3
        E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FD4A
        F0A7857E257ED27FB47FC7C861F8F9F143C03A27807C6B65E1CD1F47F0E695E1
        892D20B76F0C685A8BBB3DFE917570F235CEA1704932E002A0280BCF65FF000C
        6FF11BFE8EC3F680FF00C14781FF00F99EAF9BBF690F09E95E3DF0BFED41A16B
        9A669FAD689ADFED3DF0C2C350D3EFEDD2E6D2FADE54F87492C32C4E0A491BA3
        32B230218120820D7B77C52FF827BFEC63F03BC097FE29F1B7C0FF00D987C1FE
        18D2FCBFB66AFADF83742D3EC2D3CC91628FCC9E685634DD23A20DC4659D40E4
        81401D1FFC31BFC46FFA3B0FDA03FF00051E07FF00E67A8FF8637F88DFF4761F
        B407FE0A3C0FFF00CCF57E50FC53FF0082E0FF00C128FE1FF8EAFF0048D23F65
        8F0FF8E34EB3F2FCAD6F44F839E1F86C2F7746AE7CB5BD7B6B91B198A1F3214F
        9918AEE5DACDEDFF00F04F2FDB47FE0989FF000523F899A5F817C23FB3F7C30F
        0DFC42D7EEEEADF4BF0D788FE0FE9915DEA096F68D7724EB3DAC3716891F951C
        D8124E92130B0D9CA1700FBBFF00E18DFE237FD1D87ED01FF828F03FFF0033D4
        7FC31BFC46FF00A3B0FDA03FF051E07FFE67A97FE1D3BFB2C7FD1B4FECFF00FF
        0086F348FF00E47A3FE1D3BFB2C7FD1B4FECFF00FF0086F348FF00E47A004FF8
        637F88DFF4761FB407FE0A3C0FFF00CCF51FF0C6FF0011BFE8EC3F680FFC1478
        1FFF0099EA5FF874EFECB1FF0046D3FB3FFF00E1BCD23FF91E8FF874EFECB1FF
        0046D3FB3FFF00E1BCD23FF91E8013FE18DFE237FD1D87ED01FF00828F03FF00
        F33D599FB30CFE38F00FEDA1F14FE1CF897E28F8C3E27689A2782BC2BE24D367
        F11D868D6D7761717F7DE23B7B9456D36C6CD1A364D32D4812239521B0C03115
        E43FF0533FF82667ECDFE01FF826FF00ED07AEE85FB3E7C10D175BD17E1AF88E
        FF004FD42C3C0BA5DB5DD85C45A5DCBC53452A401E3911D5595D482A4020822B
        DCBE1CFF00CA537E327FD92AF01FFE9DFC67401EFF0045145007C01F18FAFED1
        DFF6755F0ABFF79C57E687FC1ED5FB4FEABA9FC7BF837F05E21A8D9E89A1F87E
        6F1ADD94D45FEC9AA5C5E5CCB670092D4284F32D92C6E364A598E2FE550106E3
        27E97FC63EBFB477FD9D57C2AFFDE715CF7FC1773FE0DF4D0BFE0AF7FD8DE36D
        03C55FF083FC5DF0A695269567797914975A56B966BE7CD6F65731AB66DF6DD4
        CCC2E62576549A60D0CFFBA11007E0A7FC130FE027EC0DF153E026AFA87ED51F
        1BBE27FC35F883078826B7D3F4CF0E584D3DA4FA58B6B668A7664D2AEC090CED
        74A4798A711AFC833B9BF6F3FE09ABFF0006E8FECDDFB347ED0BF0C3F68DF80D
        F187C63E3AB3F0EDD6A2F0DCDC6B3A5EBDA36B76F3585FE9B3470CF650421248
        E79831903C801B792329B9B7C7F8A7FF000516FF00836D7F68DFF826AFC0BB9F
        899E2C7F87FE2CF04E95B4EB3A8F8635A793FB13CCB8B7B683CE8AEE1B6964F3
        A6B9455FB3A4BB76B97F2C6D2DBFFF0006EB7ED63E3BFD9E7C41FB4DE93E1FF0
        8F87FC77E09D4FE0B788FC4BE2BD235D4B7974A4FEC9B19E5B3B8BB81C096EED
        DE6B86B192D629137A6A6D2364439500FE9A7F623FF828F7C13FF828EF85F5CD
        63E0BF8FB4FF001AD9F866ED2CF548D2D2E6C6EEC5E44DF1B496F751C5308E40
        1C249B3CB7314AAAC5A370BEE75FCD8FFC1043E23FC78F813FF04BBF88AFF083
        C31F0C3E0FCBE20F105C6B1AD7C76F8BC4E8DE17874D686DF4CD3ACB4FBAF2DB
        EDB7916A1F6F71E6ABDA5B3831BAC925E041A1F18FFE0EBDFDA37C6DFB107C47
        B9F0E693E00D1BC61E17F1FE95E1E83E22F84B4D793447D3AEADF5299161B0D5
        9DAE56E276D2A46496581D0DBC932C915ACE90B4A01FD1F515F88369FF000546
        FF00828DFC00FDB7FE1B7ECD9E31F0DFC01F187C5DF8BBE00D2350D0E1769EDA
        C3C3B3C77176D7BA86AB242C826B8FB2DA5F7DA60B26300682D9ED01C4905CFD
        9BFF0006F77FC14F7C7FFF000561FD8C3C4FF117E22E91E10D175BD17C6B75E1
        B821F0DDADCDB5A3DBC5636170AECB3CF33990BDD48090E0602FCA0824807B97
        FC158BFE5165FB4B7FD92AF147FE9A2EA8F873FF00294DF8C9FF0064ABC07FFA
        77F19D1FF0562FF94597ED2DFF0064ABC51FFA68BAA3E1CFFCA537E327FD92AF
        01FF00E9DFC67401EFF45145007C01F18FAFED1DFF006755F0ABFF0079C57E28
        FEDDFF001DFF006DDFF8236FFC1423F686F157842EBE27FC30F87DE3EF893AE5
        FD85F5C694BA8F847583A95D35EC1343F688A6D3DEF24B5862CBA0FB422C3244
        C5364B18FDAEF8C7D7F68EFF00B3AAF855FF00BCE2BEFF00A00FE3D3F6BAFF00
        82CDFED7FF00F059ED467F85B3DCEA1AD689E2ABB86F2DFE1D7803C3AC63BB7B
        480C855523596FEE635313DD34734D2C6B220902A88A3F2FECDF83DFF0404F8E
        1FB07FFC119BF699F1AEADE1DF104DFB41FC4DD2B4CF09E8BE15F07CB71AA6AF
        A6686DAE591D4A073612C915CFDB618C3491C6B208EDADF0D26279E14FD0DFF8
        3893FE0BA7AAFF00C122FC2DE00D0BE1D59F83FC43F14BC67772DFCFA7EBD0BD
        DDA69FA3428E8D34B1417505C4724D72D1AC0E4346E2DAF0643462B03FE0DCCF
        F82EAF8FFF00E0AE9E28F8B1A17C51B3F861E1ED6FC1969A5DFE87A7F86E1B9B
        4BBD42DE67BA4BC99A2B8BA9DE48E175B252F185086E54312644A00FC83F84BF
        F04F3F8F3E139BE1DE85FB547ECE5FB577C48F85DE00F05DC6AFF0E7C19E04D2
        CC9682EEF751FB77D8B5396DE391EC23BA76BA5BBE1752881B61B42C5122F807
        C31FF8224FED3BF13FC51E0DD193E0D7C50D02F3C5FAFA6852C9AD781B5EB2B4
        F0FA3BDB226A17D706C8C31D9933B92E8F24882D27678D17CA32FF0069745007
        E306B3F037E2A7C28FF83897F6CFF8F5A37C1AF10F894F86BE0B5CEABF0E757D
        47C257979A56ABE218344D12286DACA7445F36E24DB776C63B6904CC8D711823
        2E2BD7FF00E0D32FD957E23FEC9FFF0004CCF10699F137C17E20F026B1E25F1F
        EA1ADD869BADDAB59DFB599B2D3ED44B25BBE258774D69380B2AA332AAB8051D
        19BF5028A00F00FF0082B17FCA2CBF696FFB255E28FF00D345D51F0E7FE529BF
        193FEC95780FFF004EFE33A3FE0AC5FF0028B2FDA5BFEC9578A3FF004D17547C
        39FF0094A6FC64FF00B255E03FFD3BF8CE803DFE8A28A00F803E31F5FDA3BFEC
        EABE157FEF38AFBFEBE00F8C7D7F68EFFB3AAF855FFBCE2BCFFF00E0EB5FF828
        AFFC317FFC1396EBC03A2DC88BC6FF001EFED3E19B5FDDEEFB3690A89FDAD3FC
        F0C9136E8668AD36168E41FDA1E6C6D980E003F9D3FF0082B27EDFFAAFFC14CF
        F6F0F1D7C57BD93508B44D4AEFEC1E18D3EED9D5B49D1A0252D21F28CD324323
        266699227319B89EE1D400F5F5F7FC19F9F1B34BF859FF00057E8F42D42DF509
        AF3E25782F56F0E698D6F1A34705C46D6FAA33CC5994AC7E469B3A82A18F98F1
        8DA14B32FC85FB24FED7DF0BFF00677FD97BE36F83BC4BF06750F1F78CBE2FF8
        7DFC376BE237F1A4BA5DA786EDD65B7BCB678EC62B63E7C89A85A5ADCB9927C4
        82D62882C68D319AFF00FC1153E286BDF083FE0ADBFB39EAFE1CD4069DA85E78
        FF0049D12597C98E6DF67A85CA585E45891580F32D6E678F701B977EE52AC158
        007F6B7457F3A3FB487ECBB75FF0572FF83B13E257C3F5F1CF8C26F87DE18D02
        4D3B5CD5BC29E26821BBF0E6971F87E2B3BCB1B7797CC458DF54BD7B5B9B648D
        89379781D066665F90BFE0993FB6EFC5BF8EBF073E1A7EC27E1EF13F8BE3F027
        C5CF892B6DE2A4D0EC657D674EF0D5C9B417D6B6578669921B364FED0BAB8885
        9C6A82391E49A68AE6E61500FEAABF6B0F8E67F660FD967E25FC4CFECB1AE0F8
        77E15D53C4FF00D9BF69FB2FF687D8ACE5B9F23CDD8FE5EFF2B6EFD8DB77676B
        6307C03FE08ADFF0559FF87C0FECB3AFFC4CFF00840CFC3B3A1F8AEE3C33FD9B
        FDB7FDAFE7F95676773E7F9BF67836E7ED7B766C38F2F3B8EEC0FE693FE0A1BF
        00B52FD897FE0A01F1ABC11F023C6BE20F19F80BF67DF0ACDA14BAA6AFAC58EA
        B3689A46AD043A66AF643E44847FC4CBC43776CF15BC424865B995C859124957
        DBFF00E08BFF0011F55FF829678A7E017EC3F7FE18D4345F803A2DD6AFE2FF00
        8A23C2E5EDAEBC797113DCDE5B5C6B1751461E3B3475D2EC154B024888898482
        CC5B007F45BFF0562FF94597ED2DFF0064ABC51FFA68BAA3E1CFFCA537E327FD
        92AF01FF00E9DFC675F861FF000455FDB0BE287C59FF00826EFEDFBF0BAF35EF
        17FC44F82FE02F841ACCDE18D77C497B14375E1A1FD977D6B6960B66649E58E3
        B9B480C8218AE24B7B43A7B22E4DC6F6FDCFF873FF00294DF8C9FF0064ABC07F
        FA77F19D007BFD1451401F007C63EBFB477FD9D57C2AFF00DE715F207FC15DFF
        00E0DD4FDA6BFE0AC9FF00051ABDF893ABF8F7E107863E1D45F63F0F6896FF00
        6EBDBED5746D0E0725A4F2974F8239AE1E496EAEBC979F0AF71E4FDA0C68B20F
        AFFE31F5FDA3BFECEABE157FEF38AFBFE803E6DF0AFF00C11EBF652F05F8574B
        D1ACBF66EF8213DA6936B1594125FF0082F4FBFBB748D022B4B713C4F34F2100
        169257691CE599998927F04FFE20A9FDA9FF00E87EFD9FFF00F079ABFF00F2B2
        BDBFFE0EC7FF0082CCF8FF00E1A7ED3DE1DF80DF06FE20F8BFC052F812D1358F
        18EA1E1CD56E749BBBBBFBB895ED6C9A58D2397CB86D1D663E54EF0CA6FD43A8
        92D863A1FF00833E3FE0A35E3EFDA0BE3D7C69F875F147E227C50F88DADDF681
        61E24D0A7F126BD73AC5AE976F657325BDE22B5C4CCF1492BEA364408D30E206
        DCC0A20600FA7FF618FF008227FC68FD8CBFE0A45FB5AFED2169E2BF86179ADF
        C55B5F1327C3CD1E637D7168B71A96A9FDA36D26ACE2289E18E27B7B64923B7F
        38B89A52AEA635F33F387C2BFF000489F10FFC11DFF6CDF821AA787FF6A5FD9C
        3E1F7ED1DE1AD02F3C5BAFE95F11B51BDB1F0BDC5ACB7D77A7C5F62BF92C5239
        A3B9B367825B67315D44F14F2C2E5595E0FE9B6BCFBE39FEC9FF000B3F6A06D2
        BFE165FC34F007C44FEC3F37FB37FE126F0F59EAFF00D9FE6ECF37C9FB446FE5
        EFF2A3DDB71BBCB4CE768C007F28BFB19FFC1193E3E7FC170FE29FC69F885E16
        F187C3FD4BFB37C55349ABF8C35B8F51D2B4AF16EA37934F713CD6023D3FFDD9
        9E278A07892F2DF3126F0ABFA3BF09FF00E0DA5FDA9BF605FDA5BC33F143F663
        F89DF083C2DABFFC2016BA1EB96DACEA3ABFD9935797494B3D4A44416F32DEDB
        9BE4FED2805C2A46B3F92AD6BB2DD43FEDD7C2DF84FE17F81DE03B0F0B7827C3
        5A0783FC31A5F99F63D2344D3A1D3EC2D3CC91A593CB821558D3748EEE768196
        7627924D749401F95FF06FFE0919A57FC121BFE0801FB4C7852E352B0F127C42
        F167C35F136AFE2ED72DAD1238E5B81A1DC247656F214599ECEDC6FF002FCE39
        6926B8942C5E71893ED1F873FF00294DF8C9FF0064ABC07FFA77F19D1FF0562F
        F94597ED2DFF0064ABC51FFA68BAA3E1CFFCA537E327FD92AF01FF00E9DFC674
        01EFF45145007C01F18FAFED1DFF006755F0ABFF0079C57D7BFB54FED2DE16FD
        8E3F673F1A7C52F1B5D9B4F0C781B4A9B55BCDB2C31CD75B17F776D079CF1C6D
        713485218A3675F3259634072C2BE42F8C7D7F68EFFB3AAF855FFBCE2BE10FF8
        3D1FFE0A05AAF86F4FF87DFB34E86FA8585A6BF689E38F14CE85E28B51B759E6
        B7D3ED0324C049189E0BA9E58A5888124362E8FB918000FC93F1A784BE23FF00
        C14E2D3F6A6FDA9BC5BA8803C0FF00D9FAFEB92AB35C426F356D62DAC2CB4B80
        4D70D3C56F1DBB5C988FEF9628B4E8E13B77C6C3E8EFF834B7E356ABF0ABFE0B
        43E0FD0B4EB7D3A7B4F895A06B3E1BD4DEE2376920B78ECDF545784AB28593CF
        D360525830F2DE41B431565F30F83FF033F6F2F813FB38F8F7E137863F67EF8B
        F69E02F89FB7FE128B0BAF8246FE6D5B62810EEBAB8D3A4B95F2587990EC917C
        8959A58B648CCE7C83FE094FF167FE1477FC14CBE0078A64F130F07E9FA5FC40
        D146A9ABB6A1FD9F0DA69D25EC515EF9F3965096ED6AF324BBC84313C81BE52C
        2803F533FE0E69FF00828678BBC25FF05651E03F02FED1DF143E11E89E0CF86D
        8D76DBC39AA6AF69683C402DF52D4ACED5A0B79225792F126D2E0372BB922172
        ACE4881D17E8FF00F82147FC154B4EFD8DBFE0921A6FC4CFDB13E33EBE0FC53F
        881AAFFC213A9789F55BEF13EABAB69D6D6D696D2F93145F69BA8EDE1BBB6BB5
        6DC8A88EE84E3ED11193F20BFE0E01F8E5E16F8EBFF058EFDA575BB7D2FC404D
        B6AB0F866C1A4B986D3ECBA8E9515969B753CB18497CFB77FB15E08D15E17FDF
        412B30D8F03FD1FF00F06E9FECD1E1D7FF0082B368D73F18359D41FC3BF00BE1
        041F143431E289ACA3D33444BAB7D3F518E470F2DC43059C075DB9BE89D64864
        59962B8916DE5F360500FDBCBBFF0083833F648B6F80563F149BE296A0DF0FAF
        FC413F85A3D753C17AFBDA2EA70DB4374F69211624C721827491038512059761
        6F265D9EDFFB47FEDEBF0A3F649F8A7F0C7C13F107C567C3FE26F8C9AA9D13C1
        F67FD997977FDAF7826B684C5E64113C70FEF2F2DD774CC8BFBCCE70AC47F2AD
        FB27FEC8973E3CFF0082067ED73F14F598350B4D13C2BE34F04DC7872EADEE60
        11DF6A96B35DD8DE41346434BE5C769E228A40408C348F1ED7611CA95FA5BFF0
        6CAFC2ED7BFE0A23FB4BE99FB4FF008DAC3EC9E19FD9C7E1FE89F063E1D59F9D
        1C9E55E5A6931437F73E642D148711DC5C4BE5DCC32A9FEDCDA929366A4007EA
        FF00FC158BFE5165FB4B7FD92AF147FE9A2EA8F873FF00294DF8C9FF0064ABC0
        7FFA77F19D1FF0562FF94597ED2DFF0064ABC51FFA68BAA3E1CFFCA537E327FD
        92AF01FF00E9DFC67401EFF45145007C01F18FAFED1DFF006755F0ABFF0079C5
        77FF00B51FFC105FF64FFDB47E3B6BBF133E25FC29FF008497C6FE25FB3FF696
        A5FF000936B167F69F22DE2B68BF756F771C4BB618635F950676E4E4924B7C2B
        FB3E5A7ED3DE2EFDADBC2379AF7883C31FF17A7C39ADDA6ADA27D97EDFA7DE69
        BE1AF05EA56B2C62EA09E06C5C5A45959227565DC08E723D0BFE18DFE237FD1D
        87ED01FF00828F03FF00F33D401F4057E7FF00FC42E5FB0A7FD10C3FF859F887
        FF0093ABE80FF8637F88DFF4761FB407FE0A3C0FFF00CCF51FF0C6FF0011BFE8
        EC3F680FFC14781FFF0099EA00F2DF89FF00F06F5FEC77F19FC57E32D77C4FF0
        5B4FD575BF1FF881FC4FAE6A0FAF6AD1DDDCDFBBDCBC8F1CA9741E08DDEEE667
        861290B9111642618B673FFB50FF00C1B73FB267ED5DA97816F358F01EA1A0DD
        F816D748D2239F42D62E2D64D6B49D320FB3DBE9B7CCECE678CC02289AE06DBC
        F2E08556E55500AF72FF008637F88DFF004761FB407FE0A3C0FF00FCCF51FF00
        0C6FF11BFE8EC3F680FF00C14781FF00F99EA00F9FBF6F8FD91FC77F02BF61F6
        FD9B3F637FD9E7C031F867E2DE957DE15F126B936B76FA3D878320B8B7B4D3DF
        52BC84FF00A5EA7712D9B4F99D5A59D5AD11DD6E09113FD3FF00B027EC75A17E
        C01FB1CFC3DF83BE1C98DE69FE06D296D25BCDB247FDA778ECD35E5E79724929
        8BCFBA9679BCA1232C7E6EC53B5540C1FF008637F88DFF004761FB407FE0A3C0
        FF00FCCF51FF000C6FF11BFE8EC3F680FF00C14781FF00F99EA005FF0082B17F
        CA2CBF696FFB255E28FF00D345D51F0E7FE529BF193FEC95780FFF004EFE33AE
        77E2BFFC139FC51F1C7E17789BC13E29FDA8BF680D53C33E30D2AEB44D5ECFFB
        3BC1907DAECEE6178678BCC8FC3EB226E8DD977232B0CE410706BA2F873FF294
        DF8C9FF64ABC07FF00A77F19D007BFD1451401E39F14FF00E09EFF0000FE37F8
        EEFF00C53E36F81FF083C61E27D53CB179ABEB7E0DD3B50BFBBF2E358A3F3279
        A1691F6C68883713854503800561FF00C3A77F658FFA369FD9FF00FF000DE691
        FF00C8F4514007FC3A77F658FF00A369FD9FFF00F0DE691FFC8F47FC3A77F658
        FF00A369FD9FFF00F0DE691FFC8F4514007FC3A77F658FFA369FD9FF00FF000D
        E691FF00C8F47FC3A77F658FFA369FD9FF00FF000DE691FF00C8F4514007FC3A
        77F658FF00A369FD9FFF00F0DE691FFC8F47FC3A77F658FF00A369FD9FFF00F0
        DE691FFC8F4514007FC3A77F658FFA369FD9FF00FF000DE691FF00C8F5DEFC0C
        FD943E15FECC0DAA0F869F0D3C01F0ECEBA22FED1FF8467C3D67A47F68795BFC
        AF3BECF1A799B3CD936EECEDF31F18DC7251401E8545145007FFD9}
      Stretch = True
    end
    object Label11: TLabel
      Left = 312
      Top = 25
      Width = 56
      Height = 14
      Caption = 'Tax ID/Br:'
    end
    object Label12: TLabel
      Left = 528
      Top = 25
      Width = 5
      Height = 14
      Caption = '/'
    end
    object Label13: TLabel
      Left = 9
      Top = 326
      Width = 87
      Height = 14
      Caption = 'Factory Address'
    end
    object Label16: TLabel
      Left = 22
      Top = 397
      Width = 59
      Height = 14
      Caption = 'Telephone'
    end
    object Label17: TLabel
      Left = 378
      Top = 400
      Width = 18
      Height = 14
      Caption = 'Fax'
    end
    object wwDBEdit1: TwwDBEdit
      Left = 104
      Top = 20
      Width = 202
      Height = 22
      DataField = 'ENG_NAME'
      DataSource = datasource
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit2: TwwDBEdit
      Left = 104
      Top = 46
      Width = 489
      Height = 22
      DataField = 'THAI_NAME'
      DataSource = datasource
      Font.Charset = THAI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit3: TwwDBEdit
      Left = 104
      Top = 72
      Width = 489
      Height = 22
      DataField = 'ADDRESS1'
      DataSource = datasource
      TabOrder = 2
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit4: TwwDBEdit
      Left = 104
      Top = 97
      Width = 489
      Height = 22
      DataField = 'ADDRESS2'
      DataSource = datasource
      TabOrder = 3
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit5: TwwDBEdit
      Left = 104
      Top = 121
      Width = 489
      Height = 22
      DataField = 'ADDRESS3'
      DataSource = datasource
      TabOrder = 4
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit15: TwwDBEdit
      Left = 378
      Top = 18
      Width = 143
      Height = 22
      DataField = 'TAXREGISTERED_ID'
      DataSource = datasource
      TabOrder = 5
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit16: TwwDBEdit
      Left = 544
      Top = 18
      Width = 49
      Height = 22
      DataField = 'BRANCH_CODE'
      DataSource = datasource
      TabOrder = 6
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit17: TwwDBEdit
      Left = 104
      Top = 322
      Width = 489
      Height = 22
      DataField = 'MFG_ADDRESS1'
      DataSource = datasource
      TabOrder = 7
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit18: TwwDBEdit
      Left = 104
      Top = 345
      Width = 489
      Height = 22
      DataField = 'MFG_ADDRESS2'
      DataSource = datasource
      TabOrder = 8
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object wwDBEdit19: TwwDBEdit
      Left = 103
      Top = 370
      Width = 489
      Height = 22
      DataField = 'MFG_ADDRESS3'
      DataSource = datasource
      TabOrder = 9
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
  end
  object wwDBEdit6: TwwDBEdit
    Left = 104
    Top = 167
    Width = 489
    Height = 22
    DataField = 'TH_ADDRESS1'
    DataSource = datasource
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit7: TwwDBEdit
    Left = 104
    Top = 193
    Width = 489
    Height = 22
    DataField = 'TH_ADDRESS2'
    DataSource = datasource
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit8: TwwDBEdit
    Left = 104
    Top = 218
    Width = 489
    Height = 22
    DataField = 'TH_ADDRESS3'
    DataSource = datasource
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit9: TwwDBEdit
    Left = 104
    Top = 294
    Width = 489
    Height = 22
    DataField = 'EMAIL'
    DataSource = datasource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit10: TwwDBEdit
    Left = 104
    Top = 245
    Width = 170
    Height = 22
    DataField = 'PROVINCE'
    DataSource = datasource
    Font.Charset = THAI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit11: TwwDBEdit
    Left = 422
    Top = 245
    Width = 170
    Height = 22
    DataField = 'POSTCODE'
    DataSource = datasource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit12: TwwDBEdit
    Left = 104
    Top = 320
    Width = 489
    Height = 22
    DataField = 'WEBSITE'
    DataSource = datasource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit13: TwwDBEdit
    Left = 104
    Top = 267
    Width = 170
    Height = 22
    DataField = 'TELEPHONE'
    DataSource = datasource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit14: TwwDBEdit
    Left = 422
    Top = 269
    Width = 170
    Height = 22
    DataField = 'FAX'
    DataSource = datasource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 11
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit20: TwwDBEdit
    Left = 102
    Top = 413
    Width = 170
    Height = 22
    DataField = 'MFG_TELEPHONE'
    DataSource = datasource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 12
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object wwDBEdit21: TwwDBEdit
    Left = 418
    Top = 413
    Width = 170
    Height = 22
    DataField = 'MFG_FAX'
    DataSource = datasource
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
    UnboundDataType = wwDefault
    WantReturns = False
    WordWrap = False
  end
  object datasource: TDataSource
    DataSet = CommomShareDM.tbCompany
    Left = 440
    Top = 1
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 616
    Top = 121
  end
end
