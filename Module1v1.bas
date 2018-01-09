Attribute VB_Name = "Module1"
Sub Zmiany()
Attribute Zmiany.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Zmiany Makro
'

'
    
    'Application.ScreenUpdating = False
    
    Columns("E:I").Select
    Selection.Delete Shift:=xlToLeft
    Columns("C:C").Select
    Selection.Delete Shift:=xlToLeft
    
    
    a = ActiveSheet.Name
    ActiveWorkbook.Worksheets(a).Sort.SortFields.Clear
    
    ActiveWorkbook.Worksheets(a).Sort.SortFields.Add Key:=Range( _
        "C1"), SortOn:=xlSortOnValues, Order:=xlAscending, DataOption:= _
        xlSortTextAsNumbers
    
    Range("a1").Select
    Selection.End(xlDown).Select
    r = ActiveCell.Row
        
    With ActiveWorkbook.Worksheets(a).Sort
        .SetRange Range("A2:C" & r)
        .Header = xlNo
        .MatchCase = False
        .Orientation = xlTopToBottom
        .SortMethod = xlPinYin
        .Apply
    End With
    
    ActiveSheet.Range("$A$1:$C$" & r).RemoveDuplicates Columns:=Array(1, 3), _
        Header:=xlYes
        
    Range("a1").Select
    Selection.End(xlDown).Select
    r = ActiveCell.Row
    
    ActiveSheet.Range("$A$1:$C$" & r).AutoFilter Field:=3, Criteria1:="="
    
    
    Range("A2:A" & r).Select
    On Error GoTo dalej
    Selection.SpecialCells(xlCellTypeVisible).Select
    Selection.EntireRow.Delete
dalej:
    ActiveSheet.ShowAllData
    Selection.AutoFilter
    
    Range("a1").Select
    Selection.End(xlDown).Select
    r = ActiveCell.Row
    
    Columns("C:C").Select
    
    Selection.TextToColumns Destination:=Range("C1"), DataType:=xlDelimited, _
        TextQualifier:=xlDoubleQuote, ConsecutiveDelimiter:=False, Tab:=True, _
        Semicolon:=True, Comma:=True, Space:=False, Other:=True, OtherChar:= _
        "-", FieldInfo:=Array(Array(1, 1), Array(2, 1)), TrailingMinusNumbers:=True
        
    Columns("D:XFD").Select
    Range(Selection, Selection.End(xlToRight)).Select
    Selection.ClearContents
    
    Columns("A:B").Select
    Selection.Replace What:=" ", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:=" ", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
        ReplaceFormat:=False
        
    Columns("C:C").Select
    Selection.Replace What:="  ", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
        ReplaceFormat:=False
        
    Selection.Replace What:="  ", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=False, SearchFormat:=False, _
        ReplaceFormat:=False
        
    
    Selection.Replace What:="ę", Replacement:="e", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ę", Replacement:="E", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ó", Replacement:="o", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ó", Replacement:="O", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ą", Replacement:="a", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ą", Replacement:="A", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ś", Replacement:="s", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ś", Replacement:="S", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ł", Replacement:="l", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ł", Replacement:="L", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ż", Replacement:="z", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ź", Replacement:="z", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ż", Replacement:="Z", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ź", Replacement:="Z", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ć", Replacement:="c", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ć", Replacement:="C", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="ń", Replacement:="n", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="Ń", Replacement:="N", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:=" - ", Replacement:="-", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        
    
    Columns("B:B").Select
    Selection.Replace What:=":", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:=",", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="+", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="-", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="!", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="/", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        
    Columns("A:A").Select
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    Selection.Insert Shift:=xlToRight, CopyOrigin:=xlFormatFromLeftOrAbove
    
    Range("B1").Value = "srednik"
    
    Range("B2").Value = ";"
    
    Range("B2").Select
    Selection.AutoFill Destination:=Range("B2:B" & r)
    
    
    Range("A1").Select
    ActiveCell.FormulaR1C1 = "justsend"
    
    Range("A2").Select
    ActiveCell.FormulaR1C1 = "=RC[2]&RC[1]&RC[5]"
    Range("A2").Select
    Selection.AutoFill Destination:=Range("A2:A" & r)
    
    Range("C1").Value = "numer telefonu"
    Range("A1").Select
    
    
    Columns("D:D").Select
    Selection.Replace What:="1.", Replacement:="1", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
    Selection.Replace What:="2.", Replacement:="2", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
            Selection.Replace What:="3.", Replacement:="3", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
            Selection.Replace What:="4.", Replacement:="4", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
            Selection.Replace What:="5.", Replacement:="5", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
            Selection.Replace What:="6.", Replacement:="6", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
            Selection.Replace What:="7.", Replacement:="7", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
            Selection.Replace What:="8.", Replacement:="8", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
            Selection.Replace What:="9.", Replacement:="9", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:="0.", Replacement:="0", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:=":", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:="(", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:=")", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:="/", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:="@", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:="&", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:="!", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        Selection.Replace What:="#", Replacement:="", LookAt:=xlPart, _
        SearchOrder:=xlByRows, MatchCase:=True, SearchFormat:=False, _
        ReplaceFormat:=False
        
        
        
        Range("d2:D" & r).Select
        For Each cell In Selection
        If Not cell.HasFormula Then
            cell.Value = UCase(cell.Value)
        End If
    Next cell

        
    'Application.ScreenUpdating = True
    
End Sub
