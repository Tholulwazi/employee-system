* >Natural Source Header 000000
* :Mode S
* :CP
* <Natural Source Header
/** New Helproutine GNDRHELP.
/**
/** :author tzu
DEFINE DATA PARAMETER
1 #MARITAL (A1)
1 #S-DESCRIPTION (A10)
LOCAL
1 #SELECT (A1/1:4)
END-DEFINE

INPUT USING MAP "MARITH"
/**decide on the value of selection
DECIDE FOR FIRST CONDITION
  WHEN #SELECT(1) GT ' '
    MOVE 'W' TO #MARITAL
    MOVE 'WIDOWED' TO #S-DESCRIPTION 
  WHEN #SELECT(2) GT ' '
    MOVE 'S' TO #MARITAL 
    MOVE 'SINGLE' TO #S-DESCRIPTION 
  WHEN #SELECT(3)  GT ' '
    MOVE 'D' TO #MARITAL
    MOVE 'DIVORCED' TO #S-DESCRIPTION 
  WHEN #SELECT(4)  GT ' '
    MOVE 'M'  TO #MARITAL
    MOVE 'MARRIED' TO #S-DESCRIPTION 
  WHEN NONE
    REINPUT 'Inval value : ENTER X' 
END-DECIDE

END
