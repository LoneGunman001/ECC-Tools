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
NotebookDataLength[      6937,        188]
NotebookOptionsPosition[      7168,        178]
NotebookOutlinePosition[      7542,        194]
CellTagsIndexPosition[      7499,        191]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{"processOrder", "[", "s0_", "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"s", "=", 
       RowBox[{"Characters", "[", "s0", "]"}]}], ",", 
      RowBox[{"k", "=", "0"}], ",", 
      RowBox[{"powerof2", "=", "2"}]}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"Assert", "[", 
      RowBox[{"StringMatchQ", "[", 
       RowBox[{"s0", ",", 
        RowBox[{"RegularExpression", "[", "\"\<[AD]+\>\"", "]"}]}], "]"}], 
      "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{"While", "[", 
      RowBox[{
       RowBox[{"s", "\[NotEqual]", 
        RowBox[{"{", "}"}]}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
           "s", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
           "\[Equal]", "\"\<A\>\""}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"k", "=", "1"}], ";", 
           RowBox[{"s", "=", 
            RowBox[{"Delete", "[", 
             RowBox[{"s", ",", "1"}], "]"}]}]}], ",", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Assert", "[", 
            RowBox[{
             RowBox[{"Length", "[", "s", "]"}], ">", "1"}], "]"}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
              "s", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
              "\[Equal]", "\"\<D\>\""}], ",", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"powerof2", "*=", "2"}], ";", "\[IndentingNewLine]", 
              RowBox[{"s", "=", 
               RowBox[{"Delete", "[", 
                RowBox[{"s", ",", "1"}], "]"}]}]}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{"k", "+=", "powerof2"}], ";", "\[IndentingNewLine]", 
              RowBox[{"powerof2", "*=", "2"}], ";", "\[IndentingNewLine]", 
              RowBox[{"s", "=", 
               RowBox[{"Delete", "[", 
                RowBox[{"s", ",", "1"}], "]"}]}], ";", "\[IndentingNewLine]", 
              RowBox[{"s", "=", 
               RowBox[{"Delete", "[", 
                RowBox[{"s", ",", "1"}], "]"}]}]}]}], "]"}]}]}], 
         "\[IndentingNewLine]", "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], 
     ";", "\[IndentingNewLine]", "k"}]}], "\[IndentingNewLine]", 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.7003908673461924`*^9, 3.700390966395625*^9}, {
  3.7003910361963415`*^9, 3.7003911015049076`*^9}, {3.7003912246314955`*^9, 
  3.7003913289916778`*^9}, {3.700391494528904*^9, 3.7003917186595592`*^9}, {
  3.700391939301931*^9, 3.700391943415391*^9}, {3.7003920283926773`*^9, 
  3.700392057005275*^9}, {3.700392096865711*^9, 
  3.700392136076545*^9}},ExpressionUUID->"3db45f89-fa4b-440b-b9aa-\
a9a098d0aa21"],

Cell[BoxData[
 RowBox[{
  RowBox[{"On", "[", "Assert", "]"}], ";"}]], "Input",ExpressionUUID->\
"99054cc9-46a4-4f15-98ad-7fd2ec6694ea"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Panel", "[", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"string", "=", "\"\<ADDA\>\""}], "}"}], ",", 
    RowBox[{"Column", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<Simple Power Analysis\>\"", ",", 
        "\"\<Letter A for addition, D for doubling\>\"", ",", 
        RowBox[{"Grid", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"\"\<Order of operations is \>\"", ",", 
            RowBox[{"InputField", "[", 
             RowBox[{
              RowBox[{"Dynamic", "[", "string", "]"}], ",", "String"}], 
             "]"}]}], "}"}], "\[IndentingNewLine]", "}"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<k = \>\"", ",", 
           RowBox[{"Dynamic", "[", 
            RowBox[{"processOrder", "[", "string", "]"}], "]"}]}], "}"}], 
         "]"}]}], "}"}], ",", "Center"}], "]"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.700391724927745*^9, 3.7003917299942684`*^9}, 
   3.7003921915298996`*^9, 3.700392253945305*^9, 3.700392286201706*^9, {
   3.700392341854086*^9, 3.7003924294958153`*^9}, {3.7003924805414715`*^9, 
   3.7003924869463425`*^9}, {3.7005232471903505`*^9, 
   3.700523306762243*^9}},ExpressionUUID->"b977c27c-10eb-4a81-95d9-\
3121ccc5aa4b"],

Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`string$$ = "ADADDDDDA"}, 
   TagBox[GridBox[{
      {"\<\"Simple Power Analysis\"\>"},
      {"\<\"Letter A for addition, D for doubling\"\>"},
      {
       TagBox[GridBox[{
          {"\<\"Order of operations is \"\>", 
           InputFieldBox[Dynamic[$CellContext`string$$], String]}
         },
         AutoDelete->False,
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Grid"]},
      {
       TemplateBox[{"\"k = \"",DynamicBox[
          ToBoxes[
           $CellContext`processOrder[$CellContext`string$$], StandardForm]]},
        "RowDefault"]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Center}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output",
 CellChangeTimes->{{3.7003921688497305`*^9, 3.7003921922988296`*^9}, 
   3.7003922544046965`*^9, {3.7003924099284334`*^9, 3.7003924322082005`*^9}, 
   3.700392487979781*^9, 3.7003925840699015`*^9, 3.7005204657494464`*^9, {
   3.700523282325946*^9, 3.7005233074455724`*^9}, 
   3.700535053362322*^9},ExpressionUUID->"bb4b8e11-b37c-457e-80f7-\
5491789faa7c"]
}, Open  ]]
},
WindowSize->{872, 815},
WindowMargins->{{251, Automatic}, {Automatic, 81}},
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
Cell[1464, 33, 2894, 68, 540, "Input", "ExpressionUUID" -> \
"3db45f89-fa4b-440b-b9aa-a9a098d0aa21"],
Cell[4361, 103, 135, 3, 46, "Input", "ExpressionUUID" -> \
"2f70050e-6d9d-4ecc-a7eb-b584eca1c50f"],
Cell[CellGroupData[{
Cell[4521, 110, 1378, 32, 221, "Input", "ExpressionUUID" -> \
"b977c27c-10eb-4a81-95d9-3121ccc5aa4b"],
Cell[5902, 144, 1250, 31, 163, "Output", "ExpressionUUID" -> \
"bb4b8e11-b37c-457e-80f7-5491789faa7c"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature gwDJa5l2ddNnlCKPwBcYWvQg *)
