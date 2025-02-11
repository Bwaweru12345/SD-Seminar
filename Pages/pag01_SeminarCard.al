page 50101 "CSD Seminar Card"
{
    PageType = Card;
    SourceTable = "CSD Seminar";
    Caption = 'Seminar Card';
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    AssisteEdit = true;
                    trigger OnAssistEdit();
                    begin
                        if AssistEdit then
                            CurrPage.Update;
                    end;
                    
                }

                field(Name; Name)
                {

                }

                field("Search Name"; "Search Name")
                {

                }

                field("Seminar Duration"; "Seminar Duration")
                {

                }

                field("Minimum Participants"; "Minimum Participants")
                {

                }

                field("Maximum Participants"; "Minimum Participants")
                {

                }

                field(Blocked; Blocked)
                {

                }

                field("Last Date Modified"; "Last Date Modified")
                {

                }
            }

            group(Invoicing)
            {
                field("Gen. Prod. Posting Group"; "Gen. Prod. Posting Group")
                {

                }

                field("Seminar Price"; "Seminar Price")
                {

                }
            }
        }

        area(FactBoxes)
        {
            systempart("Links"; Links)
            {

            }
            systempart("Notes"; Notes)
            {

            }
        }
    }
    
    actions
    {
        area(Navigation)
        {
            group("&Seminar")
            {
                action("Co&mments")
                {
                    RunObject=page "CSD Seminar Comment Sheet";
                    RunPageLink = "Table Name"=const(Seminar), "No."=field("No.");
                    Image = Comment;
                    Promoted = true;
                    PromotedIsBig = true;
                    PromotedOnly = true;
                }
                
                
            }
        }
    }
}