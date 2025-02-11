table 50100 "CSD Seminar Setup"

{
    Caption = 'Seminar Setup';
    
    fields
    {
        field(10;"Primary key"; Code[10])
        {
            Caption = 'Primary key';
        }

        field(20;"Seminar Nos"; Code[20])
        {
            Caption = 'Seminar Nos';
            TableRelation = "No. Series";
        }

        field(30;"Seminar Registration Nos."; Code[20])
        {
            Caption = 'Seminar Registration Nos.';
            TableRelation = "No. Series";
        }

        field(40;"Posted Seminar Reg. Nos."; Code[20])
        {
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
        }
    }
    
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    
    fieldgroups
    {
        // Add changes to field groups here
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}