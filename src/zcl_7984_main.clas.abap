CLASS zcl_7984_main DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_7984_main IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

*===============================================================================
    IF 1 = 1. "select cds with input parameter
      SELECT
           FROM Z7984_C_EmployeeQueryP(
                  p_target_curr = 'USD',
                  p_date        = @sy-datum )
         FIELDS employeeid,
                firstname,
                lastname,
                departmentid,

                departmentdescription,
                assistantname,
                \_department\_head-lastname AS headname,

                MonthlySalaryConverted,
                CurrencyCode,
                CompanyAffiliation

          INTO TABLE @DATA(result).
    ENDIF.


  ENDMETHOD.
ENDCLASS.
