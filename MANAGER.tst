-- VectorCAST 6.4x (10/01/17)
-- Test Case Script
-- 
-- Environment    : MANAGER
-- Unit(s) Under Test: manager
-- 
-- Script Features
TEST.SCRIPT_FEATURE:C_DIRECT_ARRAY_INDEXING
TEST.SCRIPT_FEATURE:CPP_CLASS_OBJECT_REVISION
TEST.SCRIPT_FEATURE:MULTIPLE_UUT_SUPPORT
TEST.SCRIPT_FEATURE:MIXED_CASE_NAMES
TEST.SCRIPT_FEATURE:STATIC_HEADER_FUNCS_IN_UUTS
--

-- Unit: manager

-- Subprogram: Add_Included_Dessert

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (2) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:NO_ENTREE
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> FALSE
      (2) if ((Order->Entree == (LOBSTER) && Order->Salad == (GREEN)) && Order->Beverage == (WINE)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:GREEN
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:LOBSTER
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:WINE
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Included_Dessert
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if ((Order->Entree == (STEAK) && Order->Salad == (CAESAR)) && Order->Beverage == (MIXED_DRINK)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.Add_Included_Dessert.Order:<<malloc 1>>
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Salad:CAESAR
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Entree:STEAK
TEST.VALUE:manager.Add_Included_Dessert.Order[0].Beverage:MIXED_DRINK
TEST.END

-- Subprogram: Add_Party_To_Waiting_List

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 9>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<null>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListSize > (9)) ==> FALSE
      (2) while (Name && *Name) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MIN>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 1>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name[0]:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-003
TEST.UNIT:manager
TEST.SUBPROGRAM:Add_Party_To_Waiting_List
TEST.NEW
TEST.NAME:BASIS-PATH-003
TEST.BASIS_PATH:3 of 3
TEST.NOTES:
This is an automatically generated test case.
   Test Path 3
      (1) if (WaitingListSize > (9)) ==> TRUE
      (2) while (Name && *Name) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListSize:<<MAX>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<malloc 9>>
TEST.VALUE:manager.Add_Party_To_Waiting_List.Name:<<null>>
TEST.END

-- Subprogram: Clear_Table

-- Test Case: BASIS-PATH-001-PARTIAL
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:BASIS-PATH-001-PARTIAL
TEST.BASIS_PATH:1 of 2 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) for (Seat < 4) ==> FALSE
   Test Case Generation Notes:
      Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-002-PARTIAL
TEST.UNIT:manager
TEST.SUBPROGRAM:Clear_Table
TEST.NEW
TEST.NAME:BASIS-PATH-002-PARTIAL
TEST.BASIS_PATH:2 of 2 (partial)
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) for (Seat < 4) ==> TRUE
   Test Case Generation Notes:
      Conflict: Unable to validate expression-to-expression comparison in branch 1
TEST.END_NOTES:
TEST.VALUE:manager.Clear_Table.Table:<<MIN>>
TEST.END

-- Subprogram: Get_Check_Total

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Check_Total
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 1
TEST.NOTES:
   No branches in subprogram
TEST.END_NOTES:
TEST.VALUE:manager.Get_Check_Total.Table:<<MIN>>
TEST.END

-- Subprogram: Get_Next_Party_To_Be_Seated

-- Test Case: BASIS-PATH-001
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:BASIS-PATH-001
TEST.BASIS_PATH:1 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 1
      (1) if (WaitingListIndex > (9)) ==> FALSE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:<<MIN>>
TEST.END

-- Test Case: BASIS-PATH-002
TEST.UNIT:manager
TEST.SUBPROGRAM:Get_Next_Party_To_Be_Seated
TEST.NEW
TEST.NAME:BASIS-PATH-002
TEST.BASIS_PATH:2 of 2
TEST.NOTES:
This is an automatically generated test case.
   Test Path 2
      (1) if (WaitingListIndex > (9)) ==> TRUE
   Test Case Generation Notes:
TEST.END_NOTES:
TEST.VALUE:manager.<<GLOBAL>>.WaitingListIndex:<<MAX>>
TEST.END

-- Subprogram: Place_Order

-- Test Case: Place_Order.001
TEST.UNIT:manager
TEST.SUBPROGRAM:Place_Order
TEST.NEW
TEST.NAME:Place_Order.001
TEST.EXPECTED:manager.Place_Order.return:1
TEST.END
