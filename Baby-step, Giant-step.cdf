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
NotebookDataLength[     40784,        986]
NotebookOptionsPosition[     40933,        971]
NotebookOutlinePosition[     41451,        992]
CellTagsIndexPosition[     41408,        989]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Baby-step, Giant-step Attack", "Subtitle",ExpressionUUID->"4bec2e27-03ad-4672-8f89-abbebb18a082"],

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
         RowBox[{"\"\<k = \>\"", ",", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"BSGS", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "y1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", 
               "p"}], "]"}], "\[LeftDoubleBracket]", "2", 
             "\[RightDoubleBracket]"}], ",", 
            RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}],
        ",", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<Number of steps = \>\"", ",", " ", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"BSGS", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "y1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", 
               "p"}], "]"}], "\[LeftDoubleBracket]", "1", 
             "\[RightDoubleBracket]"}], ",", 
            RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], 
        "]"}]}], "}"}], ",", "Center"}], "]"}], ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Baby-step, Giant-step Attack\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<Find k s.t. k * \!\(\*
StyleBox[SubscriptBox[\"P\", 
RowBox[{\"1\", \" \"}]],
FontWeight->\"Plain\"]\)= \!\(\*
StyleBox[SubscriptBox[\"P\", \"2\"],
FontWeight->\"Plain\"]\)\>\"", ",", "\"\<\>\"", ",", "\[IndentingNewLine]", 
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
       "\"\<Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \(2\
\)]\)\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x2", ",", "4", ",", "\"\<x=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"y2", ",", "148", ",", "\"\<y=\>\""}], "}"}], ",", 
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
              RowBox[{"p", ",", "263", ",", "\"\<p=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkAB", "[", 
         RowBox[{"a", ",", "b", ",", "p"}], "]"}], "]"}]}], 
      "\[IndentingNewLine]", "}"}], ",", "Center"}], "]"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", "\[IndentingNewLine]", 
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
      "\[IndentingNewLine]", 
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
        "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"BSGS", "[", 
        RowBox[{"p1_", ",", "p2_", ",", "a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "x1", ",", "x2", ",", "y1", ",", "y2", ",", "hashtable", ",", "x", 
           ",", 
           RowBox[{"tmpP", "=", 
            RowBox[{"{", 
             RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}]}], ",", 
           RowBox[{"steps", "=", "0"}], ",", "negxP1", ",", "i", ",", 
           RowBox[{"ans", "=", "0"}], ",", "order"}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x1", ",", "y1"}], "}"}], "=", "p1"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"x2", ",", "y2"}], "}"}], "=", "p2"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"order", "=", 
           RowBox[{"findOrder", "[", 
            RowBox[{"a", ",", "b", ",", "p"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"hashtable", "=", 
           RowBox[{"<|", "|>"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"x", "=", 
           RowBox[{"Floor", "[", 
            SqrtBox["order"], "]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"i", "=", "0"}], ",", 
            RowBox[{"i", "<", "x"}], ",", 
            RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"tmpP", "=", 
              RowBox[{"eccAdd", "[", 
               RowBox[{"tmpP", ",", "p1", ",", "a", ",", "b", ",", "p"}], 
               "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"steps", "++"}], ";", "\[IndentingNewLine]", 
             RowBox[{"hashtable", "=", 
              RowBox[{"Join", "[", 
               RowBox[{"hashtable", ",", 
                RowBox[{"<|", 
                 RowBox[{"tmpP", "\[Rule]", 
                  RowBox[{"i", "+", "1"}]}], "|>"}]}], "]"}]}], ";"}]}], 
           "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"tmpP", "=", "p2"}], ";", "\[IndentingNewLine]", 
          RowBox[{"negxP1", "=", 
           RowBox[{
            RowBox[{"eccMult", "[", 
             RowBox[{"x", ",", 
              RowBox[{"{", 
               RowBox[{"x1", ",", 
                RowBox[{"Mod", "[", 
                 RowBox[{
                  RowBox[{"-", "y1"}], ",", "p"}], "]"}]}], "}"}], ",", "a", 
              ",", "b", ",", "p"}], "]"}], "\[LeftDoubleBracket]", "3", 
            "\[RightDoubleBracket]"}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"While", "[", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"KeyExistsQ", "[", 
              RowBox[{"hashtable", ",", "tmpP"}], "]"}]}], ",", 
            "\[IndentingNewLine]", 
            RowBox[{
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"steps", ">", 
                RowBox[{
                 RowBox[{"2", "x"}], "+", "1"}]}], ",", 
               RowBox[{"Return", "[", "\"\<Cannot find k\>\"", "]"}]}], "]"}],
              ";", "\[IndentingNewLine]", 
             RowBox[{"tmpP", "=", 
              RowBox[{"eccAdd", "[", 
               RowBox[{"tmpP", ",", "negxP1", ",", "a", ",", "b", ",", "p"}], 
               "]"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"steps", "++"}], ";", "\[IndentingNewLine]", 
             RowBox[{"ans", "+=", "x"}], ";"}]}], "\[IndentingNewLine]", 
           "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"ans", "+", 
             RowBox[{"hashtable", "[", "tmpP", "]"}]}], ",", "steps"}], 
           "}"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
      RowBox[{
       RowBox[{"findOrder", "[", 
        RowBox[{"a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x", ",", "y", ",", 
           RowBox[{"points", "=", 
            RowBox[{"{", "}"}]}]}], "}"}], ",", 
         RowBox[{
          RowBox[{"For", "[", 
           RowBox[{
            RowBox[{"x", "=", "0"}], ",", 
            RowBox[{"x", "<", "p"}], ",", 
            RowBox[{"x", "++"}], ",", 
            RowBox[{
             RowBox[{"Catch", "[", 
              RowBox[{"y", "=", 
               RowBox[{"PowerMod", "[", 
                RowBox[{
                 RowBox[{
                  SuperscriptBox["x", "3"], "+", 
                  RowBox[{"a", " ", "x"}], "+", "b"}], ",", 
                 FractionBox["1", "2"], ",", "p"}], "]"}]}], "]"}], ";", 
             RowBox[{"If", "[", 
              RowBox[{
               RowBox[{"IntegerQ", "[", "y", "]"}], ",", 
               RowBox[{
                RowBox[{"points", "=", 
                 RowBox[{"Append", "[", 
                  RowBox[{"points", ",", 
                   RowBox[{"{", 
                    RowBox[{"x", ",", "y"}], "}"}]}], "]"}]}], ";", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{"y", "\[NotEqual]", "0"}], ",", 
                  RowBox[{"points", "=", 
                   RowBox[{"Append", "[", 
                    RowBox[{"points", ",", 
                    RowBox[{"{", 
                    RowBox[{"x", ",", 
                    RowBox[{"p", "-", "y"}]}], "}"}]}], "]"}]}]}], "]"}]}]}], 
              "]"}]}]}], "]"}], ";", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"Length", "[", "points", "]"}], "+", "1"}]}]}], 
        "\[IndentingNewLine]", "]"}]}]}], ")"}]}]}], "]"}]], "Input",Expressio\
nUUID->"3ad84b48-d91e-4fc4-9748-4ee8a230fe2b"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    3, $CellContext`p$$ = 263, $CellContext`x1$$ = 200, $CellContext`x2$$ = 
    4, $CellContext`y1$$ = 39, $CellContext`y2$$ = 148, Typeset`show$$ = True,
     Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x1$$], 200, "x="}}, {{
       Hold[$CellContext`y1$$], 39, "y="}}, {{
       Hold[$CellContext`x2$$], 4, "x="}}, {{
       Hold[$CellContext`y2$$], 148, "y="}}, {{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 3, "b="}}, {{
       Hold[$CellContext`p$$], 263, "p="}}, {
      Hold[
       Column[{
         Style[
         "Baby-step, Giant-step Attack", FontSize -> 14, FontWeight -> Bold], 
         "Find k s.t. k * \!\(\*\nStyleBox[SubscriptBox[\"P\", \n  \
RowBox[{\"1\", \" \"}]],\nFontWeight->\"Plain\"]\)= \!\(\*\n\
StyleBox[SubscriptBox[\"P\", \"2\"],\nFontWeight->\"Plain\"]\)", "", 
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
$CellContext`p$$]]}, Center]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {232., {17.5, 26.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        3, $CellContext`p$$ = 263, $CellContext`x1$$ = 200, $CellContext`x2$$ = 
        4, $CellContext`y1$$ = 39, $CellContext`y2$$ = 148}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         Row[{"k = ", 
           Style[
            Part[
             $CellContext`BSGS[{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}, $CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], 2], FontColor -> Blue]}], 
         Row[{"Number of steps = ", 
           Style[
            Part[
             $CellContext`BSGS[{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}, $CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], 1], FontColor -> Blue]}]}, Center], 
      "Specifications" :> {{{$CellContext`x1$$, 200, "x="}, FieldSize -> Tiny,
          ControlPlacement -> 1}, {{$CellContext`y1$$, 39, "y="}, FieldSize -> 
         Tiny, ControlPlacement -> 2}, {{$CellContext`x2$$, 4, "x="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         3}, {{$CellContext`y2$$, 148, "y="}, FieldSize -> Tiny, 
         ControlPlacement -> 4}, {{$CellContext`a$$, 2, "a="}, FieldSize -> 
         Tiny, ControlPlacement -> 5}, {{$CellContext`b$$, 3, "b="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         6}, {{$CellContext`p$$, 263, "p="}, FieldSize -> Tiny, 
         ControlPlacement -> 7}, 
        Column[{
          Style[
          "Baby-step, Giant-step Attack", FontSize -> 14, FontWeight -> Bold],
           "Find k s.t. k * \!\(\*\nStyleBox[SubscriptBox[\"P\", \n  RowBox[{\
\"1\", \" \"}]],\nFontWeight->\"Plain\"]\)= \!\(\*\nStyleBox[SubscriptBox[\"P\
\", \"2\"],\nFontWeight->\"Plain\"]\)", "", 
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
$CellContext`p$$]]}, Center]}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{482., {231., 240.}},
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
$CellContext`Q}]; $CellContext`BSGS[
         Pattern[$CellContext`p1, 
          Blank[]], 
         Pattern[$CellContext`p2, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`x1, $CellContext`x2, $CellContext`y1, \
$CellContext`y2, $CellContext`hashtable, $CellContext`x, $CellContext`tmpP = {
           Infinity, Infinity}, $CellContext`steps = 
          0, $CellContext`negxP1, $CellContext`i, $CellContext`ans = 
          0, $CellContext`order}, {$CellContext`x1, $CellContext`y1} = \
$CellContext`p1; {$CellContext`x2, $CellContext`y2} = $CellContext`p2; \
$CellContext`order = $CellContext`findOrder[$CellContext`a, $CellContext`b, \
$CellContext`p]; $CellContext`hashtable = Association[]; $CellContext`x = 
          Floor[
            Sqrt[$CellContext`order]]; 
         For[$CellContext`i = 0, $CellContext`i < $CellContext`x, 
           
           Increment[$CellContext`i], $CellContext`tmpP = \
$CellContext`eccAdd[$CellContext`tmpP, $CellContext`p1, $CellContext`a, \
$CellContext`b, $CellContext`p]; 
           Increment[$CellContext`steps]; $CellContext`hashtable = 
            Join[$CellContext`hashtable, 
              Association[$CellContext`tmpP -> $CellContext`i + 1]]; 
           Null]; $CellContext`tmpP = $CellContext`p2; $CellContext`negxP1 = 
          Part[
            $CellContext`eccMult[$CellContext`x, {$CellContext`x1, 
              
              Mod[-$CellContext`y1, $CellContext`p]}, $CellContext`a, \
$CellContext`b, $CellContext`p], 3]; While[
           Not[
            KeyExistsQ[$CellContext`hashtable, $CellContext`tmpP]], 
           If[$CellContext`steps > 2 $CellContext`x + 1, 
             Return[
             "Cannot find k"]]; $CellContext`tmpP = \
$CellContext`eccAdd[$CellContext`tmpP, $CellContext`negxP1, $CellContext`a, \
$CellContext`b, $CellContext`p]; Increment[$CellContext`steps]; 
           AddTo[$CellContext`ans, $CellContext`x]; 
           Null]; {$CellContext`ans + \
$CellContext`hashtable[$CellContext`tmpP], $CellContext`steps}]; \
$CellContext`findOrder[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`x, $CellContext`y, $CellContext`points = {}}, 
         For[$CellContext`x = 0, $CellContext`x < $CellContext`p, 
           Increment[$CellContext`x], 
           Catch[$CellContext`y = 
             PowerMod[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b, 1/2, $CellContext`p]]; If[
             
             IntegerQ[$CellContext`y], $CellContext`points = 
              Append[$CellContext`points, {$CellContext`x, $CellContext`y}]; 
             If[$CellContext`y != 0, $CellContext`points = 
               Append[$CellContext`points, {$CellContext`x, $CellContext`p - \
$CellContext`y}]]]]; Length[$CellContext`points] + 1]); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"709f19c1-\
0db7-4fc8-b2ac-8362155b2461"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1012, 824},
WindowMargins->{{-50, Automatic}, {64, Automatic}},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
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
Cell[1486, 35, 103, 0, 84, "Subtitle", "ExpressionUUID" -> \
"4bec2e27-03ad-4672-8f89-abbebb18a082"],
Cell[CellGroupData[{
Cell[1614, 39, 24555, 610, 3418, "Input", "ExpressionUUID" -> \
"3ad84b48-d91e-4fc4-9748-4ee8a230fe2b"],
Cell[26172, 651, 14733, 316, 496, "Output", "ExpressionUUID" -> \
"709f19c1-0db7-4fc8-b2ac-8362155b2461"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature vx0kO9gKaj0tsAwQHO76ldfm *)
