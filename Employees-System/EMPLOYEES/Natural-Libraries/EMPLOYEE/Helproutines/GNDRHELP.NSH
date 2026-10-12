* >Natural Source Header 000000
* :Mode S
* :CP
* <Natural Source Header
/** New Helproutine GNDRHELP.
/**
/** :author tzu
DEFINE DATA PARAMETER
1 #GENDER (A1)
1 #MARITAL-STATUS (A1)
1 #G-DESCRIPTION (A10)
LOCAL
1 #SELECT (A1/1:4)
END-DEFINE

INPUT USING MAP "GENHELP"
/**decide on the value of selection
DECIDE FOR FIRST CONDITION
  WHEN #SELECT(1) GT ' '
  MOVE 'M' TO #GENDER
  MOVE 'MALE' TO #G-DESCRIPTION
  WHEN #SELECT(2) GT ' '
  MOVE 'F' TO #GENDER
  MOVE 'FEMALE' TO #G-DESCRIPTION
  WHEN NONE
    REINPUT 'Inval value : ENTER X' 
END-DECIDE
 
END
