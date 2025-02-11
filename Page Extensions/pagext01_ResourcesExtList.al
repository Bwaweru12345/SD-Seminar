pageextension 50101 "CSD ResourceListExt" extends "Resource List"
// CSD1.00 - 2018-01-01 - D. E. Veloper

{
    layout
    {
        modify ("Type") 
        {
            Visible = ShowType;
        }

        addafter("Type") 
        {
            field("CSD Resource Type"; "CSD Resource Type");
            {
                
            }
            
            field("CSD Maximum Participants"; "CSD Maximum Participants")

            {
                visible = ShowMaxField;
            }
        }

    }
    
    
    
    trigger OnOpenPage();

    begin
        Showtype := (GetFilter(Type)= '');
        ShowMaxField := (GetFilter(Type) = format(Type::machine));      
    end;

    var
        [InDataSet]
        ShowMaxField:Boolean;

        [inDataSet]
        Showtype:Boolean;
}