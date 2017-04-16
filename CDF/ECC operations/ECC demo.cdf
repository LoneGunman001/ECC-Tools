(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 11.1' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1064,         20]
NotebookDataLength[      6486,        167]
NotebookOptionsPosition[      6919,        161]
NotebookOutlinePosition[      7295,        177]
CellTagsIndexPosition[      7252,        174]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"Switch", "[", 
     RowBox[{"choice", "\[IndentingNewLine]", ",", "1", ",", 
      RowBox[{
       RowBox[{"a", "=", "1"}], ";", 
       RowBox[{"b", "=", "1"}], ";", 
       RowBox[{"p", "=", "23"}]}], "\[IndentingNewLine]", ",", "2", ",", 
      RowBox[{
       RowBox[{"a", "=", "2"}], ";", 
       RowBox[{"b", "=", "3"}], ";", 
       RowBox[{"p", "=", "23"}]}], "\[IndentingNewLine]", ",", "3", ",", 
      RowBox[{
       RowBox[{"a", "=", "1"}], ";", 
       RowBox[{"b", "=", "1"}], ";", 
       RowBox[{"p", "=", "17"}]}], "\[IndentingNewLine]", ",", "4", ",", 
      RowBox[{
       RowBox[{"a", "=", "2"}], ";", 
       RowBox[{"b", "=", "3"}], ";", 
       RowBox[{"p", "=", "17"}]}]}], "\[IndentingNewLine]", "]"}], ";", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"findOrder", "[", 
        RowBox[{"a", ",", "b", ",", "p"}], "]"}], "\[LeftDoubleBracket]", "2",
        "\[RightDoubleBracket]"}], ",", 
      RowBox[{"GridLines", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"Range", "[", "p", "]"}], ",", 
         RowBox[{"Range", "[", "p", "]"}]}], "}"}]}]}], "]"}]}], ",", 
   RowBox[{"Style", "[", 
    RowBox[{"\"\<Points on an ECC over a prime field\>\"", ",", 
     RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
     RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"choice", ",", "1", ",", "\"\<Choice\>\""}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"1", "\[Rule]", "\"\<a=1,b=1,p=23\>\""}], ",", 
       RowBox[{"2", "\[Rule]", "\"\<a=2,b=3,p=23\>\""}], ",", 
       RowBox[{"3", "\[Rule]", "\"\<a=1,b=1,p=17\>\""}], ",", 
       RowBox[{"4", "\[Rule]", "\"\<a=2,b=3,p=17\>\""}]}], "}"}]}], "}"}], 
   ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"a", "=", "1"}], ";", 
      RowBox[{"b", "=", "1"}], ";", 
      RowBox[{"p", "=", "23"}]}], ")"}]}]}], "]"}]], "Input",
 CellChangeTimes->CompressedData["
1:eJxTTMoPSmViYGAQBmIw/cdy0cFJrx17fOpXg+iC3L9bQPTVlqCrIPr75W23
QPTfY19vg+i8pOXfQfSkuo2/QLTKr0+Mh4D09YhiZhCtkfFRDkQXvDLVBNGT
nr01BNE815tMQXSMZZQliG55NwFMW1l124Foj12WzmB12X7uILrrn4sviM49
9jEWRF9oUYwH0X7b7bpA9JFJZb0gWsv2+iQQXfSVdT5Yv5zfBhD9Q553E4hm
/rFuG4h+sPbVdhBtsPrabhC96GLQPhB92m33DbB7NCIfgOjLy3jegujzxze/
A9FKa72/gWgXtcTfIBoAbmeyIQ==
  "],ExpressionUUID->"17c7dbc8-42ff-4f6a-a02b-178c92e273e4"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`choice$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Style[
       "Points on an ECC over a prime field", FontSize -> 14, FontWeight -> 
        Bold]], Manipulate`Dump`ThisIsNotAControl}, {{
       Hold[$CellContext`choice$$], 1, "Choice"}, {
      1 -> "a=1,b=1,p=23", 2 -> "a=2,b=3,p=23", 3 -> "a=1,b=1,p=17", 4 -> 
       "a=2,b=3,p=17"}}}, Typeset`size$$ = {540., {168., 175.}}, 
    Typeset`update$$ = 0, Typeset`initDone$$, Typeset`skipInitDone$$ = 
    False, $CellContext`choice$34820$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`choice$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`choice$$, $CellContext`choice$34820$$, False]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> (
       Switch[$CellContext`choice$$, 
         1, $CellContext`a = 1; $CellContext`b = 1; $CellContext`p = 23, 
         2, $CellContext`a = 2; $CellContext`b = 3; $CellContext`p = 23, 
         3, $CellContext`a = 1; $CellContext`b = 1; $CellContext`p = 17, 
         4, $CellContext`a = 2; $CellContext`b = 3; $CellContext`p = 17]; 
       ListPlot[
         Part[
          $CellContext`findOrder[$CellContext`a, $CellContext`b, \
$CellContext`p], 2], GridLines -> {
           Range[$CellContext`p], 
           Range[$CellContext`p]}]), "Specifications" :> {
        Style[
        "Points on an ECC over a prime field", FontSize -> 14, FontWeight -> 
         Bold], {{$CellContext`choice$$, 1, "Choice"}, {
         1 -> "a=1,b=1,p=23", 2 -> "a=2,b=3,p=23", 3 -> "a=1,b=1,p=17", 4 -> 
          "a=2,b=3,p=17"}}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{612., {249., 258.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`a = 1; $CellContext`b = 1; $CellContext`p = 
       23); Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.7008235316871014`*^9, {3.700823764548833*^9, 3.700823811560981*^9}, 
   3.700823926349537*^9, 
   3.7008240276619263`*^9},ExpressionUUID->"96d79aa2-7656-4e56-b883-\
3c4c0a9cb89d"]
}, Open  ]]
},
WindowSize->{1012, 797},
WindowMargins->{{Automatic, 233}, {-50, Automatic}},
Magnification:>1.5 Inherited,
FrontEndVersion->"11.1 for Microsoft Windows (64-bit) (March 13, 2017)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1486, 35, 2532, 62, 419, "Input", "ExpressionUUID" -> \
"17c7dbc8-42ff-4f6a-a02b-178c92e273e4"],
Cell[4021, 99, 2882, 59, 532, "Output", "ExpressionUUID" -> \
"96d79aa2-7656-4e56-b883-3c4c0a9cb89d"]
}, Open  ]]
}
]
*)

(* NotebookSignature cvDGqq0SEW@ixCgh@cN85fWx *)
