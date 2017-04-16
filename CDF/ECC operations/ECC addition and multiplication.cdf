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
NotebookDataLength[     65410,       1566]
NotebookOptionsPosition[     65263,       1544]
NotebookOutlinePosition[     65663,       1561]
CellTagsIndexPosition[     65620,       1558]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Point Addition", "Subtitle",
 CellChangeTimes->{
  3.700730276459635*^9},ExpressionUUID->"01b65336-0ccb-4914-a3d7-\
2f12eb269604"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Row", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<\!\(\*SubscriptBox[\(P\), \(3\)]\)=\>\"", ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"eccAdd", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x1", ",", "y1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}], 
   ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Point Addition\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<Find value of \!\(\*SubscriptBox[\(P\), \
\(3\)]\)=\!\(\*SubscriptBox[\(P\), \(1\)]\)+\!\(\*SubscriptBox[\(P\), \
\(2\)]\) on Ep(a,b)\>\"", ",", 
       "\"\<\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
         RowBox[{"FontColor", "\[Rule]", "Gray"}], ",", 
         RowBox[{"FontSize", "\[Rule]", "8"}]}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
       "\"\<Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \(1\
\)]\)\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x1", ",", "3", ",", "\"\<x=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"y1", ",", "1", ",", "\"\<y=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x1", ",", "y1"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], "]"}], ",", "\[IndentingNewLine]", 
       "\"\<Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \(2\
\)]\)\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x2", ",", "2", ",", "\"\<x=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"y2", ",", "1", ",", "\"\<y=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], "]"}], ",", "\[IndentingNewLine]", 
       "\"\<Input values for curve parameters\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"a", ",", "2", ",", "\"\<a=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<   \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"b", ",", "3", ",", "\"\<b=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<   \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"p", ",", "7", ",", "\"\<p=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkAB", "[", 
         RowBox[{"a", ",", "b", ",", "p"}], "]"}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<Result\>\""}], "}"}], ",", "Center"}], 
    "]"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"checkAB", "[", 
        RowBox[{"a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"4", 
                SuperscriptBox["a", "3"]}], " ", "+", " ", 
               RowBox[{"27", 
                SuperscriptBox["b", "2"]}]}], ",", "p"}], "]"}], 
            "\[NotEqual]", " ", "0"}], ",", 
           RowBox[{"Return", "[", "\"\<\>\"", "]"}], ",", 
           RowBox[{"Return", "[", 
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p cannot be 0\>\"", ",", 
              RowBox[{"FontColor", "\[Rule]", "Red"}], ",", 
              RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], "]"}]}], 
          "]"}]}], "]"}]}], ";", 
      RowBox[{
       RowBox[{"checkPoint", "[", 
        RowBox[{"P_", ",", "a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x", ",", "y"}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}], "=", "P"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{
                SuperscriptBox["x", "3"], "+", 
                RowBox[{"a", " ", "x"}], "+", "b", "-", 
                SuperscriptBox["y", "2"]}], ",", "p"}], "]"}], "\[Equal]", 
             "0"}], ",", 
            RowBox[{"Return", "[", "\"\<\>\"", "]"}], ",", 
            RowBox[{"Return", "[", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<Point not on curve\>\"", ",", 
               RowBox[{"FontColor", "\[Rule]", "Red"}], ",", 
               RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], "]"}]}], 
           "]"}], ";"}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"inverseModulo", "[", 
        RowBox[{"n0_", ",", "p0_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"q", ",", 
           RowBox[{"spair", "=", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], ",", 
           RowBox[{"tpair", "=", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], ",", 
           RowBox[{"rpair", "=", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], ",", "ans", ",", 
           RowBox[{"n", "=", "n0"}], ",", 
           RowBox[{"p", "=", "p0"}]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Assert", "[", 
           RowBox[{"n", "\[NotEqual]", "0"}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"n", "<", "0"}], ",", 
            RowBox[{"ans", "=", 
             RowBox[{"p", "-", 
              RowBox[{"inverseModulo", "[", 
               RowBox[{
                RowBox[{"-", "n"}], ",", "p"}], "]"}]}]}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"rpair", "=", 
           RowBox[{"{", 
            RowBox[{"p", ",", "n"}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"spair", "=", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"tpair", "=", 
           RowBox[{"{", 
            RowBox[{"1", ",", "0"}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"While", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
             "rpair", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
             "\[NotEqual]", "0"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"q", "=", 
              RowBox[{"Floor", "[", 
               RowBox[{
                RowBox[{
                "rpair", "\[LeftDoubleBracket]", "2", 
                 "\[RightDoubleBracket]"}], "/", 
                RowBox[{
                "rpair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"rpair", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "rpair", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}], "-", 
                 RowBox[{"q", "*", 
                  RowBox[{
                  "rpair", "\[LeftDoubleBracket]", "1", 
                   "\[RightDoubleBracket]"}]}]}], ",", 
                RowBox[{
                "rpair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "}"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"spair", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "spair", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}], "-", 
                 RowBox[{"q", "*", 
                  RowBox[{
                  "spair", "\[LeftDoubleBracket]", "1", 
                   "\[RightDoubleBracket]"}]}]}], ",", 
                RowBox[{
                "spair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "}"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"tpair", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "tpair", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}], "-", 
                 RowBox[{"q", "*", 
                  RowBox[{
                  "tpair", "\[LeftDoubleBracket]", "1", 
                   "\[RightDoubleBracket]"}]}]}], ",", 
                RowBox[{
                "tpair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "}"}]}]}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"Assert", "[", 
           RowBox[{
            RowBox[{
            "rpair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], "==",
             "1"}], "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"Assert", "[", 
           RowBox[{
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"n", "*", 
                RowBox[{
                "spair", "\[LeftDoubleBracket]", "2", 
                 "\[RightDoubleBracket]"}]}], ")"}], ",", "p"}], "]"}], "==", 
            "1"}], "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"Mod", "[", 
           RowBox[{
            RowBox[{
            "spair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
            ",", "p"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      RowBox[{
       RowBox[{"eccAdd", "[", 
        RowBox[{"p1_", ",", "p2_", ",", "a_", ",", "b_", ",", "order_"}], 
        "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "x1", ",", "x2", ",", "x3", ",", "y1", ",", "y2", ",", "y3", ",", 
           "m"}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x1", ",", "y1"}], "}"}], "=", "p1"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x2", ",", "y2"}], "}"}], "=", "p2"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"x1", "\[Equal]", "\[Infinity]"}], ",", 
            RowBox[{"Return", "[", "p2", "]"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"x2", "\[Equal]", "\[Infinity]"}], ",", 
            RowBox[{"Return", "[", "p1", "]"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"x1", "\[Equal]", "x2"}], "&&", 
             RowBox[{
              RowBox[{"Mod", "[", 
               RowBox[{
                RowBox[{"y1", "+", "y2"}], ",", "order"}], "]"}], "\[Equal]", 
              "0"}]}], ",", 
            RowBox[{"Return", "[", 
             RowBox[{"{", 
              RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}], "]"}]}], 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"p1", "\[Equal]", "p2"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"y1", "\[Equal]", "0"}], ",", 
               RowBox[{"Return", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "]"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"m", "=", 
              RowBox[{"Mod", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"3", 
                    SuperscriptBox["x1", "2"]}], "+", "a"}], ")"}], "*", 
                 RowBox[{"inverseModulo", "[", 
                  RowBox[{
                   RowBox[{"2", "y1"}], ",", "order"}], "]"}]}], ",", 
                "order"}], "]"}]}]}], "\[IndentingNewLine]", ",", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"m", "=", 
              RowBox[{"Mod", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"y2", "-", "y1"}], ")"}], "*", 
                 RowBox[{"inverseModulo", "[", 
                  RowBox[{
                   RowBox[{"x2", "-", "x1"}], ",", "order"}], "]"}]}], ",", 
                "order"}], "]"}]}], ";"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"x3", "=", 
           RowBox[{"Mod", "[", 
            RowBox[{
             RowBox[{
              SuperscriptBox["m", "2"], "-", "x1", "-", "x2"}], ",", 
             "order"}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"y3", "=", 
           RowBox[{"Mod", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"m", 
               RowBox[{"(", 
                RowBox[{"x1", "-", "x3"}], ")"}]}], "-", "y1"}], ",", 
             "order"}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"x3", ",", "y3"}], "}"}]}]}], "\[IndentingNewLine]", 
        "]"}]}], ";", 
      RowBox[{
       RowBox[{"eccMult", "[", 
        RowBox[{"k_", ",", "P_", ",", "a_", ",", "b_", ",", "order_"}], "]"}],
        ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"xlist", "=", 
            RowBox[{"{", "}"}]}], ",", "x1", ",", "x2", ",", 
           RowBox[{"ktmp", "=", "k"}], ",", 
           RowBox[{"power", "=", "0"}], ",", 
           RowBox[{"Q", "=", 
            RowBox[{"{", 
             RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}]}], ",", 
           RowBox[{"Ptmp", "=", "P"}], ",", 
           RowBox[{"adstring", "=", "\"\<\>\""}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x1", ",", "x2"}], "}"}], "=", "P"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"While", "[", 
           RowBox[{
            RowBox[{"ktmp", ">", "0"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"OddQ", "[", "ktmp", "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"xlist", "=", 
                 RowBox[{"Append", "[", 
                  RowBox[{"xlist", ",", 
                   RowBox[{
                    SuperscriptBox["\"\<2\>\"", "power"], "\"\<P\>\""}]}], 
                  "]"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"Q", "=", 
                 RowBox[{"eccAdd", "[", 
                  RowBox[{
                  "Q", ",", "Ptmp", ",", "a", ",", "b", ",", "order"}], 
                  "]"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"adstring", "=", 
                 RowBox[{"adstring", "<>", "\"\<A\>\""}]}]}]}], "]"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"power", "+=", "1"}], ";", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"ktmp", ">", "1"}], ",", 
               RowBox[{
                RowBox[{"Ptmp", "=", 
                 RowBox[{"eccAdd", "[", 
                  RowBox[{
                  "Ptmp", ",", "Ptmp", ",", "a", ",", "b", ",", "order"}], 
                  "]"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"adstring", "=", 
                 RowBox[{"adstring", "<>", "\"\<D\>\""}]}]}]}], "]"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"ktmp", "=", 
              RowBox[{"Floor", "[", 
               RowBox[{"ktmp", "/", "2"}], "]"}]}]}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"xlist", ",", "adstring", ",", "Q"}], "}"}]}]}], 
        "\[IndentingNewLine]", "]"}]}]}], ")"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7007399184087524`*^9, 3.700740006148384*^9}, 
   3.7007400509687123`*^9, {3.700740095595024*^9, 3.7007401268892393`*^9}, {
   3.7007401630510874`*^9, 3.7007401653223104`*^9}, {3.7007402828271923`*^9, 
   3.700740365379101*^9}, {3.700740408156971*^9, 3.700740465917239*^9}, {
   3.7007405261777077`*^9, 3.7007405528733697`*^9}, {3.7007406030808363`*^9, 
   3.700740628317474*^9}},ExpressionUUID->"6dda1e23-f4a4-4c3a-8747-\
32a3c2a72e45"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    3, $CellContext`p$$ = 7, $CellContext`x1$$ = 3, $CellContext`x2$$ = 
    2, $CellContext`y1$$ = 1, $CellContext`y2$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x1$$], 3, "x="}}, {{
       Hold[$CellContext`y1$$], 1, "y="}}, {{
       Hold[$CellContext`x2$$], 2, "x="}}, {{
       Hold[$CellContext`y2$$], 1, "y="}}, {{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 3, "b="}}, {{
       Hold[$CellContext`p$$], 7, "p="}}, {
      Hold[
       Column[{
         Style["Point Addition", FontSize -> 14, FontWeight -> Bold], 
         "Find value of \!\(\*SubscriptBox[\(P\), \
\(3\)]\)=\!\(\*SubscriptBox[\(P\), \(1\)]\)+\!\(\*SubscriptBox[\(P\), \
\(2\)]\) on Ep(a,b)", 
         "\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p", 
         Style[
         "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontColor -> 
          GrayLevel[0.5], FontSize -> 8], "", 
         "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(1\)]\)", 
         Row[{
           Manipulate`Place[1], "     ", 
           Manipulate`Place[2]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(2\)]\)", 
         Row[{
           Manipulate`Place[3], "     ", 
           Manipulate`Place[4]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x2$$, $CellContext`y2$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         "Input values for curve parameters", 
         Row[{
           Manipulate`Place[5], "   ", 
           Manipulate`Place[6], "   ", 
           Manipulate`Place[7]}], 
         Dynamic[
          $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {112., {4., 15.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        3, $CellContext`p$$ = 7, $CellContext`x1$$ = 3, $CellContext`x2$$ = 
        2, $CellContext`y1$$ = 1, $CellContext`y2$$ = 1}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> 
      Row[{"\!\(\*SubscriptBox[\(P\), \(3\)]\)=", 
         Style[
          $CellContext`eccAdd[{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}, $CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], FontColor -> Blue]}], 
      "Specifications" :> {{{$CellContext`x1$$, 3, "x="}, FieldSize -> Tiny, 
         ControlPlacement -> 1}, {{$CellContext`y1$$, 1, "y="}, FieldSize -> 
         Tiny, ControlPlacement -> 2}, {{$CellContext`x2$$, 2, "x="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         3}, {{$CellContext`y2$$, 1, "y="}, FieldSize -> Tiny, 
         ControlPlacement -> 4}, {{$CellContext`a$$, 2, "a="}, FieldSize -> 
         Tiny, ControlPlacement -> 5}, {{$CellContext`b$$, 3, "b="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         6}, {{$CellContext`p$$, 7, "p="}, FieldSize -> Tiny, 
         ControlPlacement -> 7}, 
        Column[{
          Style["Point Addition", FontSize -> 14, FontWeight -> Bold], 
          "Find value of \!\(\*SubscriptBox[\(P\), \
\(3\)]\)=\!\(\*SubscriptBox[\(P\), \(1\)]\)+\!\(\*SubscriptBox[\(P\), \
\(2\)]\) on Ep(a,b)", 
          "\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p", 
          Style[
          "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontColor -> 
           GrayLevel[0.5], FontSize -> 8], "", 
          "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(1\)]\)", 
          Row[{
            Manipulate`Place[1], "     ", 
            Manipulate`Place[2]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(2\)]\)", 
          Row[{
            Manipulate`Place[3], "     ", 
            Manipulate`Place[4]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x2$$, $CellContext`y2$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          "Input values for curve parameters", 
          Row[{
            Manipulate`Place[5], "   ", 
            Manipulate`Place[6], "   ", 
            Manipulate`Place[7]}], 
          Dynamic[
           $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{555., {299., 310.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`checkAB[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := Module[{}, 
         If[
         Mod[4 $CellContext`a^3 + 27 $CellContext`b^2, $CellContext`p] != 0, 
          Return[""], 
          Return[
           Style[
           "4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p cannot be 0", FontColor -> Red, 
            FontWeight -> Bold]]]]; $CellContext`checkPoint[
         Pattern[$CellContext`P, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`x, $CellContext`y}, {$CellContext`x, \
$CellContext`y} = $CellContext`P; 
         If[Mod[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b - $CellContext`y^2, $CellContext`p] == 0, 
           Return[""], 
           Return[
            Style[
            "Point not on curve", FontColor -> Red, FontWeight -> Bold]]]; 
         Null]; $CellContext`inverseModulo[
         Pattern[$CellContext`n0, 
          Blank[]], 
         Pattern[$CellContext`p0, 
          Blank[]]] := 
       Module[{$CellContext`q, $CellContext`spair = {0, 
           0}, $CellContext`tpair = {0, 0}, $CellContext`rpair = {0, 
           0}, $CellContext`ans, $CellContext`n = $CellContext`n0, \
$CellContext`p = $CellContext`p0}, Assert[$CellContext`n != 0]; 
         If[$CellContext`n < 
           0, $CellContext`ans = $CellContext`p - \
$CellContext`inverseModulo[-$CellContext`n, $CellContext`p]]; \
$CellContext`rpair = {$CellContext`p, $CellContext`n}; $CellContext`spair = {
           0, 1}; $CellContext`tpair = {1, 0}; 
         While[Part[$CellContext`rpair, 1] != 
           0, $CellContext`q = 
            Floor[Part[$CellContext`rpair, 2]/
              Part[$CellContext`rpair, 1]]; $CellContext`rpair = {
             Part[$CellContext`rpair, 2] - $CellContext`q 
              Part[$CellContext`rpair, 1], 
              Part[$CellContext`rpair, 1]}; $CellContext`spair = {
             Part[$CellContext`spair, 2] - $CellContext`q 
              Part[$CellContext`spair, 1], 
              Part[$CellContext`spair, 1]}; $CellContext`tpair = {
             Part[$CellContext`tpair, 2] - $CellContext`q 
              Part[$CellContext`tpair, 1], 
              Part[$CellContext`tpair, 1]}]; 
         Assert[Part[$CellContext`rpair, 2] == 1]; 
         Assert[Mod[$CellContext`n 
             Part[$CellContext`spair, 2], $CellContext`p] == 1]; Mod[
           Part[$CellContext`spair, 2], $CellContext`p]]; $CellContext`eccAdd[
         Pattern[$CellContext`p1, 
          Blank[]], 
         Pattern[$CellContext`p2, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`order, 
          Blank[]]] := 
       Module[{$CellContext`x1, $CellContext`x2, $CellContext`x3, \
$CellContext`y1, $CellContext`y2, $CellContext`y3, $CellContext`m}, \
{$CellContext`x1, $CellContext`y1} = $CellContext`p1; {$CellContext`x2, \
$CellContext`y2} = $CellContext`p2; If[$CellContext`x1 == Infinity, 
           Return[$CellContext`p2]]; If[$CellContext`x2 == Infinity, 
           Return[$CellContext`p1]]; If[
           
           And[$CellContext`x1 == $CellContext`x2, 
            Mod[$CellContext`y1 + $CellContext`y2, $CellContext`order] == 0], 
           Return[{Infinity, Infinity}]]; 
         If[$CellContext`p1 == $CellContext`p2, If[$CellContext`y1 == 0, 
             Return[{0, 0}]]; $CellContext`m = 
            Mod[(3 $CellContext`x1^2 + $CellContext`a) \
$CellContext`inverseModulo[
               2 $CellContext`y1, $CellContext`order], $CellContext`order], \
$CellContext`m = 
            Mod[($CellContext`y2 - $CellContext`y1) \
$CellContext`inverseModulo[$CellContext`x2 - $CellContext`x1, \
$CellContext`order], $CellContext`order]; Null]; $CellContext`x3 = 
          Mod[$CellContext`m^2 - $CellContext`x1 - $CellContext`x2, \
$CellContext`order]; $CellContext`y3 = 
          Mod[$CellContext`m ($CellContext`x1 - $CellContext`x3) - \
$CellContext`y1, $CellContext`order]; {$CellContext`x3, $CellContext`y3}]; \
$CellContext`eccMult[
         Pattern[$CellContext`k, 
          Blank[]], 
         Pattern[$CellContext`P, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`order, 
          Blank[]]] := 
       Module[{$CellContext`xlist = {}, $CellContext`x1, $CellContext`x2, \
$CellContext`ktmp = $CellContext`k, $CellContext`power = 
          0, $CellContext`Q = {
           Infinity, 
            Infinity}, $CellContext`Ptmp = $CellContext`P, \
$CellContext`adstring = 
          ""}, {$CellContext`x1, $CellContext`x2} = $CellContext`P; 
         While[$CellContext`ktmp > 0, If[
             
             OddQ[$CellContext`ktmp], $CellContext`xlist = 
              Append[$CellContext`xlist, "2"^$CellContext`power 
                "P"]; $CellContext`Q = $CellContext`eccAdd[$CellContext`Q, \
$CellContext`Ptmp, $CellContext`a, $CellContext`b, $CellContext`order]; \
$CellContext`adstring = StringJoin[$CellContext`adstring, "A"]]; 
           AddTo[$CellContext`power, 1]; 
           If[$CellContext`ktmp > 
             1, $CellContext`Ptmp = $CellContext`eccAdd[$CellContext`Ptmp, \
$CellContext`Ptmp, $CellContext`a, $CellContext`b, $CellContext`order]; \
$CellContext`adstring = 
              StringJoin[$CellContext`adstring, "D"]]; $CellContext`ktmp = 
            Floor[$CellContext`ktmp/
              2]]; {$CellContext`xlist, $CellContext`adstring, \
$CellContext`Q}]); Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.7007400787020464`*^9, 3.700740128881613*^9, {3.700740539862147*^9, 
   3.7007405533286486`*^9}, {3.700740606362564*^9, 3.7007406301769557`*^9}, 
   3.7007790509597683`*^9, 3.7007805702958694`*^9, 
   3.7008254088890142`*^9},ExpressionUUID->"dbdf8c78-6b81-4d48-8b17-\
6b364d474113"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Point Multiplication", "Subtitle",
 CellChangeTimes->{
  3.7007302915537167`*^9},ExpressionUUID->"292f5c22-748c-4fc8-b1ac-\
f2f46f4f92ba"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<\!\(\*SubscriptBox[\(P\), \(2\)]\) = \>\"", ",", " ", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{"Dynamic", "[", 
             RowBox[{
              RowBox[{"eccMult", "[", 
               RowBox[{"k", ",", 
                RowBox[{"{", 
                 RowBox[{"x1", ",", "y1"}], "}"}], ",", "a", ",", "b", ",", 
                "p"}], "]"}], "\[LeftDoubleBracket]", "3", 
              "\[RightDoubleBracket]"}], "]"}], ",", 
            RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}],
        ",", "\"\<\>\"", ",", 
       RowBox[{"Style", "[", 
        RowBox[{"\"\<order of operations for point multiplication:\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "11"}]}], "]"}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{
         RowBox[{"Dynamic", "[", 
          RowBox[{
           RowBox[{"eccMult", "[", 
            RowBox[{"k", ",", 
             RowBox[{"{", 
              RowBox[{"x1", ",", "y1"}], "}"}], ",", "a", ",", "b", ",", 
             "p"}], "]"}], "\[LeftDoubleBracket]", "2", 
           "\[RightDoubleBracket]"}], "]"}], ",", 
         RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}], ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<A for an addition operation, D for a doubling operation\>\"", 
         ",", 
         RowBox[{"FontSize", "\[Rule]", "8"}]}], "]"}], ",", "\"\<\>\"", ",", 
       "\"\<Terms involved in point multiplication: \>\"", ",", " ", 
       RowBox[{"Style", "[", 
        RowBox[{
         RowBox[{"Dynamic", "[", 
          RowBox[{
           RowBox[{"eccMult", "[", 
            RowBox[{"k", ",", 
             RowBox[{"{", 
              RowBox[{"x1", ",", "y1"}], "}"}], ",", "a", ",", "b", ",", 
             "p"}], "]"}], "\[LeftDoubleBracket]", "1", 
           "\[RightDoubleBracket]"}], "]"}], ",", 
         RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], ",", 
     "Center"}], "]"}], ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Point Multiplication\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<Find value of \!\(\*SubscriptBox[\(P\), \
\(2\)]\)=k*\!\(\*SubscriptBox[\(P\), \(1\)]\) on Ep(a,b)\>\"", ",", 
       "\"\<\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "8"}], ",", 
         RowBox[{"FontColor", "\[Rule]", "Gray"}]}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
       "\"\<Input value for k\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"k", ",", "3", ",", "\"\<k=\>\""}], "}"}], ",", 
            RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], "}"}], 
        "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
       "\[IndentingNewLine]", 
       "\"\<Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \(1\
\)]\)\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x1", ",", "200", ",", "\"\<x=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"y1", ",", "39", ",", "\"\<y=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x1", ",", "y1"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], "]"}], ",", "\[IndentingNewLine]", 
       "\"\<Input values for curve parameters\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"a", ",", "2", ",", "\"\<a=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<   \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"b", ",", "3", ",", "\"\<b=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<   \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"p", ",", "263", ",", "\"\<p=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkAB", "[", 
         RowBox[{"a", ",", "b", ",", "p"}], "]"}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<Result\>\""}], "}"}], ",", "Center"}], 
    "]"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"checkAB", "[", 
        RowBox[{"a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"4", 
                SuperscriptBox["a", "3"]}], " ", "+", " ", 
               RowBox[{"27", 
                SuperscriptBox["b", "2"]}]}], ",", "p"}], "]"}], 
            "\[NotEqual]", " ", "0"}], ",", 
           RowBox[{"Return", "[", "\"\<\>\"", "]"}], ",", 
           RowBox[{"Return", "[", 
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p cannot be 0\>\"", ",", 
              RowBox[{"FontColor", "\[Rule]", "Red"}], ",", 
              RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], "]"}]}], 
          "]"}]}], "]"}]}], ";", 
      RowBox[{
       RowBox[{"checkPoint", "[", 
        RowBox[{"P_", ",", "a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x", ",", "y"}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x", ",", "y"}], "}"}], "=", "P"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{
                SuperscriptBox["x", "3"], "+", 
                RowBox[{"a", " ", "x"}], "+", "b", "-", 
                SuperscriptBox["y", "2"]}], ",", "p"}], "]"}], "\[Equal]", 
             "0"}], ",", 
            RowBox[{"Return", "[", "\"\<\>\"", "]"}], ",", 
            RowBox[{"Return", "[", 
             RowBox[{"Style", "[", 
              RowBox[{"\"\<Point not on curve\>\"", ",", 
               RowBox[{"FontColor", "\[Rule]", "Red"}], ",", 
               RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], "]"}]}], 
           "]"}], ";"}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"inverseModulo", "[", 
        RowBox[{"n0_", ",", "p0_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"q", ",", 
           RowBox[{"spair", "=", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], ",", 
           RowBox[{"tpair", "=", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], ",", 
           RowBox[{"rpair", "=", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}]}], ",", "ans", ",", 
           RowBox[{"n", "=", "n0"}], ",", 
           RowBox[{"p", "=", "p0"}]}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"Assert", "[", 
           RowBox[{"n", "\[NotEqual]", "0"}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"n", "<", "0"}], ",", 
            RowBox[{"ans", "=", 
             RowBox[{"p", "-", 
              RowBox[{"inverseModulo", "[", 
               RowBox[{
                RowBox[{"-", "n"}], ",", "p"}], "]"}]}]}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"rpair", "=", 
           RowBox[{"{", 
            RowBox[{"p", ",", "n"}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"spair", "=", 
           RowBox[{"{", 
            RowBox[{"0", ",", "1"}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"tpair", "=", 
           RowBox[{"{", 
            RowBox[{"1", ",", "0"}], "}"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"While", "[", 
           RowBox[{
            RowBox[{
             RowBox[{
             "rpair", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
             "\[NotEqual]", "0"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"q", "=", 
              RowBox[{"Floor", "[", 
               RowBox[{
                RowBox[{
                "rpair", "\[LeftDoubleBracket]", "2", 
                 "\[RightDoubleBracket]"}], "/", 
                RowBox[{
                "rpair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"rpair", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "rpair", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}], "-", 
                 RowBox[{"q", "*", 
                  RowBox[{
                  "rpair", "\[LeftDoubleBracket]", "1", 
                   "\[RightDoubleBracket]"}]}]}], ",", 
                RowBox[{
                "rpair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "}"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"spair", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "spair", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}], "-", 
                 RowBox[{"q", "*", 
                  RowBox[{
                  "spair", "\[LeftDoubleBracket]", "1", 
                   "\[RightDoubleBracket]"}]}]}], ",", 
                RowBox[{
                "spair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "}"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"tpair", "=", 
              RowBox[{"{", 
               RowBox[{
                RowBox[{
                 RowBox[{
                 "tpair", "\[LeftDoubleBracket]", "2", 
                  "\[RightDoubleBracket]"}], "-", 
                 RowBox[{"q", "*", 
                  RowBox[{
                  "tpair", "\[LeftDoubleBracket]", "1", 
                   "\[RightDoubleBracket]"}]}]}], ",", 
                RowBox[{
                "tpair", "\[LeftDoubleBracket]", "1", 
                 "\[RightDoubleBracket]"}]}], "}"}]}]}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"Assert", "[", 
           RowBox[{
            RowBox[{
            "rpair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], "==",
             "1"}], "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"Assert", "[", 
           RowBox[{
            RowBox[{"Mod", "[", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{"n", "*", 
                RowBox[{
                "spair", "\[LeftDoubleBracket]", "2", 
                 "\[RightDoubleBracket]"}]}], ")"}], ",", "p"}], "]"}], "==", 
            "1"}], "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"Mod", "[", 
           RowBox[{
            RowBox[{
            "spair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
            ",", "p"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      RowBox[{
       RowBox[{"eccAdd", "[", 
        RowBox[{"p1_", ",", "p2_", ",", "a_", ",", "b_", ",", "order_"}], 
        "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "x1", ",", "x2", ",", "x3", ",", "y1", ",", "y2", ",", "y3", ",", 
           "m"}], "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x1", ",", "y1"}], "}"}], "=", "p1"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x2", ",", "y2"}], "}"}], "=", "p2"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"x1", "\[Equal]", "\[Infinity]"}], ",", 
            RowBox[{"Return", "[", "p2", "]"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"x2", "\[Equal]", "\[Infinity]"}], ",", 
            RowBox[{"Return", "[", "p1", "]"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"x1", "\[Equal]", "x2"}], "&&", 
             RowBox[{
              RowBox[{"Mod", "[", 
               RowBox[{
                RowBox[{"y1", "+", "y2"}], ",", "order"}], "]"}], "\[Equal]", 
              "0"}]}], ",", 
            RowBox[{"Return", "[", 
             RowBox[{"{", 
              RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}], "]"}]}], 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"p1", "\[Equal]", "p2"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"y1", "\[Equal]", "0"}], ",", 
               RowBox[{"Return", "[", 
                RowBox[{"{", 
                 RowBox[{"0", ",", "0"}], "}"}], "]"}]}], "]"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"m", "=", 
              RowBox[{"Mod", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{
                   RowBox[{"3", 
                    SuperscriptBox["x1", "2"]}], "+", "a"}], ")"}], "*", 
                 RowBox[{"inverseModulo", "[", 
                  RowBox[{
                   RowBox[{"2", "y1"}], ",", "order"}], "]"}]}], ",", 
                "order"}], "]"}]}]}], "\[IndentingNewLine]", ",", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"m", "=", 
              RowBox[{"Mod", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"y2", "-", "y1"}], ")"}], "*", 
                 RowBox[{"inverseModulo", "[", 
                  RowBox[{
                   RowBox[{"x2", "-", "x1"}], ",", "order"}], "]"}]}], ",", 
                "order"}], "]"}]}], ";"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"x3", "=", 
           RowBox[{"Mod", "[", 
            RowBox[{
             RowBox[{
              SuperscriptBox["m", "2"], "-", "x1", "-", "x2"}], ",", 
             "order"}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"y3", "=", 
           RowBox[{"Mod", "[", 
            RowBox[{
             RowBox[{
              RowBox[{"m", 
               RowBox[{"(", 
                RowBox[{"x1", "-", "x3"}], ")"}]}], "-", "y1"}], ",", 
             "order"}], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"x3", ",", "y3"}], "}"}]}]}], "\[IndentingNewLine]", 
        "]"}]}], ";", 
      RowBox[{
       RowBox[{"eccMult", "[", 
        RowBox[{"k_", ",", "P_", ",", "a_", ",", "b_", ",", "order_"}], "]"}],
        ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"xlist", "=", 
            RowBox[{"{", "}"}]}], ",", "x1", ",", "x2", ",", 
           RowBox[{"ktmp", "=", "k"}], ",", 
           RowBox[{"power", "=", "0"}], ",", 
           RowBox[{"Q", "=", 
            RowBox[{"{", 
             RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}]}], ",", 
           RowBox[{"Ptmp", "=", "P"}], ",", 
           RowBox[{"adstring", "=", "\"\<\>\""}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x1", ",", "x2"}], "}"}], "=", "P"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"While", "[", 
           RowBox[{
            RowBox[{"ktmp", ">", "0"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"OddQ", "[", "ktmp", "]"}], ",", "\[IndentingNewLine]", 
               RowBox[{
                RowBox[{"xlist", "=", 
                 RowBox[{"Append", "[", 
                  RowBox[{"xlist", ",", 
                   RowBox[{
                    SuperscriptBox["\"\<2\>\"", "power"], "\"\<P\>\""}]}], 
                  "]"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"Q", "=", 
                 RowBox[{"eccAdd", "[", 
                  RowBox[{
                  "Q", ",", "Ptmp", ",", "a", ",", "b", ",", "order"}], 
                  "]"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"adstring", "=", 
                 RowBox[{"adstring", "<>", "\"\<A\>\""}]}]}]}], "]"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"power", "+=", "1"}], ";", "\[IndentingNewLine]", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"ktmp", ">", "1"}], ",", 
               RowBox[{
                RowBox[{"Ptmp", "=", 
                 RowBox[{"eccAdd", "[", 
                  RowBox[{
                  "Ptmp", ",", "Ptmp", ",", "a", ",", "b", ",", "order"}], 
                  "]"}]}], ";", "\[IndentingNewLine]", 
                RowBox[{"adstring", "=", 
                 RowBox[{"adstring", "<>", "\"\<D\>\""}]}]}]}], "]"}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"ktmp", "=", 
              RowBox[{"Floor", "[", 
               RowBox[{"ktmp", "/", "2"}], "]"}]}]}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{"xlist", ",", "adstring", ",", "Q"}], "}"}]}]}], 
        "\[IndentingNewLine]", "]"}]}]}], ")"}]}]}], "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.700390312702499*^9, 3.7003904632950664`*^9}, {
   3.700390510246939*^9, 3.700390526186202*^9}, {3.700425323582782*^9, 
   3.700425327877554*^9}, {3.700647691206246*^9, 3.700647732051372*^9}, {
   3.7006478481679688`*^9, 3.7006483092502365`*^9}, {3.7006483531342897`*^9, 
   3.7006483731928606`*^9}, {3.700730165634704*^9, 3.7007301705574923`*^9}, {
   3.700730631801368*^9, 3.7007306370055094`*^9}, {3.700731122650752*^9, 
   3.700731141191581*^9}, 3.7007407207744045`*^9, {3.700740836639518*^9, 
   3.7007408806778975`*^9}, {3.700740926502617*^9, 3.700740933517458*^9}, {
   3.7007409829480333`*^9, 3.700741029209173*^9}, {3.7007411172403326`*^9, 
   3.700741126907997*^9}, {3.700741161862262*^9, 3.7007412485873747`*^9}, {
   3.700741468534253*^9, 3.700741489082517*^9}, {3.7007791788425293`*^9, 
   3.7007792099073505`*^9}, {3.700780467271003*^9, 3.7007804673282623`*^9}, 
   3.700780644664068*^9},ExpressionUUID->"46e92ad4-79d7-47eb-9088-\
4f0f11809f6d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    3, $CellContext`k$$ = 3, $CellContext`p$$ = 263, $CellContext`x1$$ = 
    200, $CellContext`y1$$ = 39, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`k$$], 3, "k="}}, {{
       Hold[$CellContext`x1$$], 200, "x="}}, {{
       Hold[$CellContext`y1$$], 39, "y="}}, {{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 3, "b="}}, {{
       Hold[$CellContext`p$$], 263, "p="}}, {
      Hold[
       Column[{
         Style["Point Multiplication", FontSize -> 14, FontWeight -> Bold], 
         "Find value of \!\(\*SubscriptBox[\(P\), \
\(2\)]\)=k*\!\(\*SubscriptBox[\(P\), \(1\)]\) on Ep(a,b)", 
         "\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p", 
         Style[
         "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontSize -> 8, 
          FontColor -> GrayLevel[0.5]], "", "Input value for k", 
         Row[{
           Manipulate`Place[1]}], "", 
         "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(1\)]\)", 
         Row[{
           Manipulate`Place[2], "     ", 
           Manipulate`Place[3]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         "Input values for curve parameters", 
         Row[{
           Manipulate`Place[4], "   ", 
           Manipulate`Place[5], "   ", 
           Manipulate`Place[6]}], 
         Dynamic[
          $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {520., {110., 121.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        3, $CellContext`k$$ = 3, $CellContext`p$$ = 263, $CellContext`x1$$ = 
        200, $CellContext`y1$$ = 39}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         Row[{"\!\(\*SubscriptBox[\(P\), \(2\)]\) = ", 
           Style[
            Dynamic[
             Part[
              $CellContext`eccMult[$CellContext`k$$, {$CellContext`x1$$, \
$CellContext`y1$$}, $CellContext`a$$, $CellContext`b$$, $CellContext`p$$], 
              3]], FontColor -> Blue]}], "", 
         Style[
         "order of operations for point multiplication:", FontSize -> 11], 
         Style[
          Dynamic[
           Part[
            $CellContext`eccMult[$CellContext`k$$, {$CellContext`x1$$, \
$CellContext`y1$$}, $CellContext`a$$, $CellContext`b$$, $CellContext`p$$], 
            2]], FontColor -> Blue], 
         Style[
         "A for an addition operation, D for a doubling operation", FontSize -> 
          8], "", "Terms involved in point multiplication: ", 
         Style[
          Dynamic[
           Part[
            $CellContext`eccMult[$CellContext`k$$, {$CellContext`x1$$, \
$CellContext`y1$$}, $CellContext`a$$, $CellContext`b$$, $CellContext`p$$], 
            1]], FontColor -> Blue]}, Center], 
      "Specifications" :> {{{$CellContext`k$$, 3, "k="}, FieldSize -> Tiny, 
         ControlPlacement -> 1}, {{$CellContext`x1$$, 200, "x="}, FieldSize -> 
         Tiny, ControlPlacement -> 2}, {{$CellContext`y1$$, 39, "y="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         3}, {{$CellContext`a$$, 2, "a="}, FieldSize -> Tiny, 
         ControlPlacement -> 4}, {{$CellContext`b$$, 3, "b="}, FieldSize -> 
         Tiny, ControlPlacement -> 5}, {{$CellContext`p$$, 263, "p="}, 
         FieldSize -> Tiny, ControlPlacement -> 6}, 
        Column[{
          Style["Point Multiplication", FontSize -> 14, FontWeight -> Bold], 
          "Find value of \!\(\*SubscriptBox[\(P\), \
\(2\)]\)=k*\!\(\*SubscriptBox[\(P\), \(1\)]\) on Ep(a,b)", 
          "\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p", 
          Style[
          "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontSize -> 8, 
           FontColor -> GrayLevel[0.5]], "", "Input value for k", 
          Row[{
            Manipulate`Place[1]}], "", 
          "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(1\)]\)", 
          Row[{
            Manipulate`Place[2], "     ", 
            Manipulate`Place[3]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          "Input values for curve parameters", 
          Row[{
            Manipulate`Place[4], "   ", 
            Manipulate`Place[5], "   ", 
            Manipulate`Place[6]}], 
          Dynamic[
           $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{602., {401., 412.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`checkAB[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := Module[{}, 
         If[
         Mod[4 $CellContext`a^3 + 27 $CellContext`b^2, $CellContext`p] != 0, 
          Return[""], 
          Return[
           Style[
           "4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p cannot be 0", FontColor -> Red, 
            FontWeight -> Bold]]]]; $CellContext`checkPoint[
         Pattern[$CellContext`P, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`x, $CellContext`y}, {$CellContext`x, \
$CellContext`y} = $CellContext`P; 
         If[Mod[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b - $CellContext`y^2, $CellContext`p] == 0, 
           Return[""], 
           Return[
            Style[
            "Point not on curve", FontColor -> Red, FontWeight -> Bold]]]; 
         Null]; $CellContext`inverseModulo[
         Pattern[$CellContext`n0, 
          Blank[]], 
         Pattern[$CellContext`p0, 
          Blank[]]] := 
       Module[{$CellContext`q, $CellContext`spair = {0, 
           0}, $CellContext`tpair = {0, 0}, $CellContext`rpair = {0, 
           0}, $CellContext`ans, $CellContext`n = $CellContext`n0, \
$CellContext`p = $CellContext`p0}, Assert[$CellContext`n != 0]; 
         If[$CellContext`n < 
           0, $CellContext`ans = $CellContext`p - \
$CellContext`inverseModulo[-$CellContext`n, $CellContext`p]]; \
$CellContext`rpair = {$CellContext`p, $CellContext`n}; $CellContext`spair = {
           0, 1}; $CellContext`tpair = {1, 0}; 
         While[Part[$CellContext`rpair, 1] != 
           0, $CellContext`q = 
            Floor[Part[$CellContext`rpair, 2]/
              Part[$CellContext`rpair, 1]]; $CellContext`rpair = {
             Part[$CellContext`rpair, 2] - $CellContext`q 
              Part[$CellContext`rpair, 1], 
              Part[$CellContext`rpair, 1]}; $CellContext`spair = {
             Part[$CellContext`spair, 2] - $CellContext`q 
              Part[$CellContext`spair, 1], 
              Part[$CellContext`spair, 1]}; $CellContext`tpair = {
             Part[$CellContext`tpair, 2] - $CellContext`q 
              Part[$CellContext`tpair, 1], 
              Part[$CellContext`tpair, 1]}]; 
         Assert[Part[$CellContext`rpair, 2] == 1]; 
         Assert[Mod[$CellContext`n 
             Part[$CellContext`spair, 2], $CellContext`p] == 1]; Mod[
           Part[$CellContext`spair, 2], $CellContext`p]]; $CellContext`eccAdd[
         Pattern[$CellContext`p1, 
          Blank[]], 
         Pattern[$CellContext`p2, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`order, 
          Blank[]]] := 
       Module[{$CellContext`x1, $CellContext`x2, $CellContext`x3, \
$CellContext`y1, $CellContext`y2, $CellContext`y3, $CellContext`m}, \
{$CellContext`x1, $CellContext`y1} = $CellContext`p1; {$CellContext`x2, \
$CellContext`y2} = $CellContext`p2; If[$CellContext`x1 == Infinity, 
           Return[$CellContext`p2]]; If[$CellContext`x2 == Infinity, 
           Return[$CellContext`p1]]; If[
           
           And[$CellContext`x1 == $CellContext`x2, 
            Mod[$CellContext`y1 + $CellContext`y2, $CellContext`order] == 0], 
           Return[{Infinity, Infinity}]]; 
         If[$CellContext`p1 == $CellContext`p2, If[$CellContext`y1 == 0, 
             Return[{0, 0}]]; $CellContext`m = 
            Mod[(3 $CellContext`x1^2 + $CellContext`a) \
$CellContext`inverseModulo[
               2 $CellContext`y1, $CellContext`order], $CellContext`order], \
$CellContext`m = 
            Mod[($CellContext`y2 - $CellContext`y1) \
$CellContext`inverseModulo[$CellContext`x2 - $CellContext`x1, \
$CellContext`order], $CellContext`order]; Null]; $CellContext`x3 = 
          Mod[$CellContext`m^2 - $CellContext`x1 - $CellContext`x2, \
$CellContext`order]; $CellContext`y3 = 
          Mod[$CellContext`m ($CellContext`x1 - $CellContext`x3) - \
$CellContext`y1, $CellContext`order]; {$CellContext`x3, $CellContext`y3}]; \
$CellContext`eccMult[
         Pattern[$CellContext`k, 
          Blank[]], 
         Pattern[$CellContext`P, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`order, 
          Blank[]]] := 
       Module[{$CellContext`xlist = {}, $CellContext`x1, $CellContext`x2, \
$CellContext`ktmp = $CellContext`k, $CellContext`power = 
          0, $CellContext`Q = {
           Infinity, 
            Infinity}, $CellContext`Ptmp = $CellContext`P, \
$CellContext`adstring = 
          ""}, {$CellContext`x1, $CellContext`x2} = $CellContext`P; 
         While[$CellContext`ktmp > 0, If[
             
             OddQ[$CellContext`ktmp], $CellContext`xlist = 
              Append[$CellContext`xlist, "2"^$CellContext`power 
                "P"]; $CellContext`Q = $CellContext`eccAdd[$CellContext`Q, \
$CellContext`Ptmp, $CellContext`a, $CellContext`b, $CellContext`order]; \
$CellContext`adstring = StringJoin[$CellContext`adstring, "A"]]; 
           AddTo[$CellContext`power, 1]; 
           If[$CellContext`ktmp > 
             1, $CellContext`Ptmp = $CellContext`eccAdd[$CellContext`Ptmp, \
$CellContext`Ptmp, $CellContext`a, $CellContext`b, $CellContext`order]; \
$CellContext`adstring = 
              StringJoin[$CellContext`adstring, "D"]]; $CellContext`ktmp = 
            Floor[$CellContext`ktmp/
              2]]; {$CellContext`xlist, $CellContext`adstring, \
$CellContext`Q}]); Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{3.7007806466809893`*^9, 
  3.7008254091838045`*^9},ExpressionUUID->"7f29acb9-8996-4f81-bca1-\
4a4690b983c5"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{872, 814},
WindowMargins->{{Automatic, 222}, {Automatic, 53}},
InitializationCell->True,
Magnification:>1.8 Inherited,
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
Cell[1486, 35, 136, 3, 100, "Subtitle", "ExpressionUUID" -> \
"01b65336-0ccb-4914-a3d7-2f12eb269604"],
Cell[CellGroupData[{
Cell[1647, 42, 18819, 465, 3435, "Input", "ExpressionUUID" -> \
"6dda1e23-f4a4-4c3a-8747-32a3c2a72e45"],
Cell[20469, 509, 12111, 261, 638, "Output", "ExpressionUUID" -> \
"dbdf8c78-6b81-4d48-8b17-6b364d474113"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[32629, 776, 144, 3, 100, "Subtitle", "ExpressionUUID" -> \
"292f5c22-748c-4fc8-b1ac-f2f46f4f92ba"],
Cell[CellGroupData[{
Cell[32798, 783, 20445, 496, 3911, "Input", "ExpressionUUID" -> \
"46e92ad4-79d7-47eb-9088-4f0f11809f6d",
 InitializationCell->True],
Cell[53246, 1281, 11989, 259, 842, "Output", "ExpressionUUID" -> \
"7f29acb9-8996-4f81-bca1-4a4690b983c5"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature Bv0OshD5Oq35oBglkRHaZR#t *)
