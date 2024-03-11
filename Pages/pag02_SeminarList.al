page 50102 "CSD Seminar List"
{
    Caption= 'Seminar List';
    SourceTable = "CSD Seminar List";
    PageType = List;
    Editable = false;
    CardPageId = 50101;
    UsageCategory = Lists;
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("No"; "No.")
                {

                }
                
                field(Name; CompanyName)
                {

                }

                field("Seminar Duration";
                    "Seminar Duration")
                    {
                    }
                    field("Seminar Price"; "Seminar Price")
                    {
                    }
                    field("Minimum Participants";
                    "Minimum Participants")
                    {
                    }
                    field("Maximum Participants";
                    "Maximum Participants")
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
                        RunPageLink = "Tablename"=const(Seminar), "No."=field("No.");
                        Image = Comment; 
                    }
                }
            }
        }
    }
    
   
