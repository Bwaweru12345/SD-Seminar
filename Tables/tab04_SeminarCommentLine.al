table 50104 "CSD Seminar Comment Line"
{
    Caption='Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";
    
    fields
    {
        field(10;"Table Name"; Option),
        {
            Caption='Table Name';
            OptionMembers= "Seminar","Seminar Registration Header","Posted Seminar Reg. Header";
            OptionCaption='Seminar,Semiar Registration,Posted Seminar Regitration';
        }

        field(20,"Document Line No.";Integer)
        {
            Caption='Document Line No.';
        }

        field(30;"No.";Code[20])
        {
            Caption='No.';
            TableRelation=if ("Table Name"=CONST(Seminar))
                                "CSD Seminar";
        }

        field(40;"Line No.";Integer)
        {
            Caption='Line No.';
        }

        field(50;Date;Date)
        {
            Caption='Date';
        }

        field(60;Code;Code[10])
        {
            Caption='Code';
        }

        field(70;Commment;Text[80])
        {
            Caption='Comment';
        }

    }
    
    keys
    {
        key(PK;"Table Name","Document Line No.","No.","Line No.")
        {
            Clustered=true;
        }
    }
       
}