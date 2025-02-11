page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = False;
    UsageCategory = Administration;
    
    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Seminar Nos.";"Seminar Nos.")
                {

                }
                field("Seminar Nos";Rec."Seminar Nos"; "Seminar Registration Nos.")
                {

                }

                field("Posted Seminar Reg.Nos."; "Posted Seminar Reg. Nos.")
                {

                }
            }
        }
    }
    
    trigger OnOpenPage();
    begin
        if not get then begin
            init;
            insert;
        end;
    end;
    
}