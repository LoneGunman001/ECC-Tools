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
NotebookDataLength[    100607,       2438]
NotebookOptionsPosition[    100079,       2405]
NotebookOutlinePosition[    100454,       2421]
CellTagsIndexPosition[    100411,       2418]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["ECC Key Generation", "Subtitle",
 CellChangeTimes->{{3.700826407188793*^9, 
  3.700826418866329*^9}},ExpressionUUID->"4b064d39-b035-47e8-85e0-\
86f430707e39"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"keys", "=", 
     RowBox[{"keyGen", "[", 
      RowBox[{"a", ",", "b", ",", "p"}], "]"}]}], ";", 
    RowBox[{"Column", "[", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<Private key is: \>\"", ",", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{
            "keys", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
            ",", 
            RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}],
        ",", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{"\"\<Public key is: \>\"", ",", 
          RowBox[{"Style", "[", 
           RowBox[{
            RowBox[{
            "keys", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
            ",", 
            RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], 
        "]"}]}], "}"}], "]"}]}], ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<ECC key deneration\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<Generate public and private keys on a given ECC curve\>\"", ",", 
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
              RowBox[{"b", ",", "4", ",", "\"\<b=\>\""}], "}"}], ",", 
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
       RowBox[{"Button", "[", 
        RowBox[{"\"\<Retry\>\"", ",", 
         RowBox[{
          RowBox[{"a", "=", 
           RowBox[{"a", "+", "1"}]}], ";", 
          RowBox[{"a", "=", 
           RowBox[{"a", "-", "1"}]}]}]}], "]"}]}], "}"}], ",", "Center"}], 
    "]"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{
       RowBox[{"keyGen", "[", 
        RowBox[{"a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"na", ",", "x", ",", "P", ",", "G"}], "}"}], ",", 
         RowBox[{
          RowBox[{"Label", "[", "begin", "]"}], ";", 
          RowBox[{"na", "=", 
           RowBox[{"RandomInteger", "[", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{"p", "-", "1"}]}], "}"}], "]"}]}], ";", 
          RowBox[{"x", "=", 
           RowBox[{"RandomInteger", "[", 
            RowBox[{"{", 
             RowBox[{"0", ",", 
              RowBox[{"p", "-", "1"}]}], "}"}], "]"}]}], ";", 
          RowBox[{"G", "=", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"findY", "[", 
              RowBox[{"x", ",", "a", ",", "b", ",", "p"}], "]"}]}], "}"}]}], 
          ";", "\[IndentingNewLine]", 
          RowBox[{"P", "=", 
           RowBox[{
            RowBox[{"eccMult", "[", 
             RowBox[{"na", ",", "G", ",", "a", ",", "b", ",", "p"}], "]"}], 
            "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"!", 
             RowBox[{"IntegerQ", "[", 
              RowBox[{
              "G", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
              "]"}]}], ",", 
            RowBox[{"Goto", "[", "begin", "]"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"na", ",", "a", ",", "b", ",", "p", ",", "G"}], "}"}], 
            ",", 
            RowBox[{"{", 
             RowBox[{"P", ",", "a", ",", "b", ",", "p", ",", "G"}], "}"}]}], 
           "}"}]}]}], "]"}]}], ";", 
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
 CellOpen->False,
 CellChangeTimes->{{3.7008264579833736`*^9, 3.7008265073219037`*^9}, {
   3.700826966181063*^9, 3.7008270858499627`*^9}, {3.700827129648527*^9, 
   3.7008271394312773`*^9}, {3.700827310441848*^9, 3.7008273322049613`*^9}, 
   3.700827368379298*^9, {3.7008274036909647`*^9, 3.7008275206349444`*^9}, {
   3.700827564698697*^9, 3.700827634725773*^9}, {3.700827666471203*^9, 
   3.7008277100325007`*^9}, {3.700827805106166*^9, 3.7008278385387673`*^9}, {
   3.700827906424574*^9, 3.700827981468563*^9}, {3.7008280558296456`*^9, 
   3.700828107878874*^9}, {3.700828252259946*^9, 
   3.7008282546866384`*^9}},ExpressionUUID->"ee7a400d-d7a2-4eae-8358-\
c1c5c336c54d"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    4, $CellContext`p$$ = 263, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 4, "b="}}, {{
       Hold[$CellContext`p$$], 263, "p="}}, {
      Hold[
       Column[{
         Style["ECC key deneration", FontSize -> 14, FontWeight -> Bold], 
         "Generate public and private keys on a given ECC curve", 
         Row[{
           Manipulate`Place[1], "   ", 
           Manipulate`Place[2], "   ", 
           Manipulate`Place[3]}], 
         Dynamic[
          $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], 
         Button[
         "Retry", $CellContext`a$$ = $CellContext`a$$ + 
            1; $CellContext`a$$ = $CellContext`a$$ - 1]}, Center]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    552., {18.5, 27.5}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        4, $CellContext`p$$ = 263}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`keys = $CellContext`keyGen[$CellContext`a$$, \
$CellContext`b$$, $CellContext`p$$]; Column[{
          Row[{"Private key is: ", 
            Style[
             Part[$CellContext`keys, 1], FontColor -> Blue]}], 
          Row[{"Public key is: ", 
            Style[
             Part[$CellContext`keys, 2], FontColor -> Blue]}]}]), 
      "Specifications" :> {{{$CellContext`a$$, 2, "a="}, FieldSize -> Tiny, 
         ControlPlacement -> 1}, {{$CellContext`b$$, 4, "b="}, FieldSize -> 
         Tiny, ControlPlacement -> 2}, {{$CellContext`p$$, 263, "p="}, 
         FieldSize -> Tiny, ControlPlacement -> 3}, 
        Column[{
          Style["ECC key deneration", FontSize -> 14, FontWeight -> Bold], 
          "Generate public and private keys on a given ECC curve", 
          Row[{
            Manipulate`Place[1], "   ", 
            Manipulate`Place[2], "   ", 
            Manipulate`Place[3]}], 
          Dynamic[
           $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], 
          Button[
          "Retry", $CellContext`a$$ = $CellContext`a$$ + 
             1; $CellContext`a$$ = $CellContext`a$$ - 1]}, Center]}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{626., {149., 158.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`keyGen[
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`na, $CellContext`x, $CellContext`P, \
$CellContext`G}, 
         Label[$CellContext`begin]; $CellContext`na = 
          RandomInteger[{2, $CellContext`p - 1}]; $CellContext`x = 
          RandomInteger[{
            0, $CellContext`p - 1}]; $CellContext`G = {$CellContext`x, 
            $CellContext`findY[$CellContext`x, $CellContext`a, \
$CellContext`b, $CellContext`p]}; $CellContext`P = Part[
            $CellContext`eccMult[$CellContext`na, $CellContext`G, \
$CellContext`a, $CellContext`b, $CellContext`p], 3]; If[
           Not[
            IntegerQ[
             Part[$CellContext`G, 2]]], 
           
           Goto[$CellContext`begin]]; {{$CellContext`na, $CellContext`a, \
$CellContext`b, $CellContext`p, $CellContext`G}, {$CellContext`P, \
$CellContext`a, $CellContext`b, $CellContext`p, $CellContext`G}}]; \
$CellContext`checkAB[
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
  3.700826932241294*^9, 3.700827088724789*^9, 3.7008271400170527`*^9, {
   3.7008272975861073`*^9, 3.7008273329544125`*^9}, {3.700827443101467*^9, 
   3.7008275329571724`*^9}, {3.7008275988360295`*^9, 3.700827635483761*^9}, 
   3.7008276690864787`*^9, 3.7008277105252943`*^9, {3.7008278299810777`*^9, 
   3.7008278397994537`*^9}, 3.700827982708228*^9, 3.7008281089423933`*^9, 
   3.7008282553281155`*^9},ExpressionUUID->"bb5b645a-4181-4ae5-9b86-\
3a5b56d3fe35"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["ECC Encryption", "Subtitle",
 CellChangeTimes->{{3.700824933121663*^9, 
  3.7008249410013494`*^9}},ExpressionUUID->"9352ef31-6ce8-48a0-91a5-\
b1f1c6a4e014"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Row", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<Ciphertext is: \>\"", ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"eccEnc", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x1", ",", "y1"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"x2", ",", "y2"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"x3", ",", "y3"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}], 
   ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<ECC Encryption\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<Generate encrypted message using public key\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
         RowBox[{"FontColor", "\[Rule]", "Gray"}], ",", 
         RowBox[{"FontSize", "\[Rule]", "8"}]}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<\>\"", ",", 
       "\"\<Input values for x,y-coordinates of plaintext\>\"", ",", 
       "\[IndentingNewLine]", 
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
              RowBox[{"y1", ",", "33", ",", "\"\<y=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x1", ",", "y1"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], "]"}], ",", "\[IndentingNewLine]", 
       "\"\<Input values for x,y-coordinates of G\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x2", ",", "87", ",", "\"\<x=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"y2", ",", "38", ",", "\"\<y=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], "]"}], ",", 
       "\"\<Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \(A\
\)]\)\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x3", ",", "157", ",", "\"\<x=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"y3", ",", "193", ",", "\"\<y=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x3", ",", "y3"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
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
              RowBox[{"b", ",", "4", ",", "\"\<b=\>\""}], "}"}], ",", 
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
        "\[IndentingNewLine]", "]"}]}], ";", 
      RowBox[{
       RowBox[{"eccEnc", "[", 
        RowBox[{"m_", ",", "G_", ",", "P_", ",", "a_", ",", "b_", ",", "p_"}],
         "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "k", "}"}], ",", 
         RowBox[{
          RowBox[{"k", "=", 
           RowBox[{"RandomInteger", "[", 
            RowBox[{"{", 
             RowBox[{"2", ",", 
              RowBox[{"p", "-", "1"}]}], "}"}], "]"}]}], ";", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{"eccMult", "[", 
              RowBox[{"k", ",", "G", ",", "a", ",", "b", ",", "p"}], "]"}], 
             "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], ",", 
            RowBox[{"eccAdd", "[", 
             RowBox[{"m", ",", 
              RowBox[{
               RowBox[{"eccMult", "[", 
                RowBox[{"k", ",", "P", ",", "a", ",", "b", ",", "p"}], "]"}], 
               "\[LeftDoubleBracket]", "3", "\[RightDoubleBracket]"}], ",", 
              "a", ",", "b", ",", "p"}], "]"}]}], "}"}]}]}], "]"}]}]}], 
     ")"}]}]}], "]"}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.700824905302532*^9, 3.7008249073126884`*^9}, {
   3.700826346729888*^9, 3.7008263824587955`*^9}, {3.7008264406356983`*^9, 
   3.700826451640795*^9}, 3.700827393039958*^9, {3.7008282122608624`*^9, 
   3.7008282209262075`*^9}, {3.700828272217765*^9, 3.700828273174246*^9}, {
   3.7008283046012297`*^9, 3.7008283476091785`*^9}, {3.7008283916184816`*^9, 
   3.7008284264306297`*^9}, {3.7008286623055487`*^9, 3.700828724358366*^9}, {
   3.7008288024191737`*^9, 3.7008288149821033`*^9}, {3.7008289776633244`*^9, 
   3.7008289800784864`*^9}, {3.7008298656531134`*^9, 
   3.7008298948480167`*^9}, {3.700830000475318*^9, 
   3.700830070480734*^9}},ExpressionUUID->"dab85add-1b3f-4d6c-8d0a-\
8848c6eee97f"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    4, $CellContext`p$$ = 263, $CellContext`x1$$ = 3, $CellContext`x2$$ = 
    87, $CellContext`x3$$ = 157, $CellContext`y1$$ = 33, $CellContext`y2$$ = 
    38, $CellContext`y3$$ = 193, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x1$$], 3, "x="}}, {{
       Hold[$CellContext`y1$$], 33, "y="}}, {{
       Hold[$CellContext`x2$$], 87, "x="}}, {{
       Hold[$CellContext`y2$$], 38, "y="}}, {{
       Hold[$CellContext`x3$$], 157, "x="}}, {{
       Hold[$CellContext`y3$$], 193, "y="}}, {{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 4, "b="}}, {{
       Hold[$CellContext`p$$], 263, "p="}}, {
      Hold[
       Column[{
         Style["ECC Encryption", FontSize -> 14, FontWeight -> Bold], 
         "Generate encrypted message using public key", 
         Style[
         "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontColor -> 
          GrayLevel[0.5], FontSize -> 8], "", 
         "Input values for x,y-coordinates of plaintext", 
         Row[{
           Manipulate`Place[1], "     ", 
           Manipulate`Place[2]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         "Input values for x,y-coordinates of G", 
         Row[{
           Manipulate`Place[3], "     ", 
           Manipulate`Place[4]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x2$$, $CellContext`y2$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(A\)]\)", 
         Row[{
           Manipulate`Place[5], "     ", 
           Manipulate`Place[6]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x3$$, $CellContext`y3$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         "Input values for curve parameters", 
         Row[{
           Manipulate`Place[7], "   ", 
           Manipulate`Place[8], "   ", 
           Manipulate`Place[9]}], 
         Dynamic[
          $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {447., {4., 15.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        4, $CellContext`p$$ = 263, $CellContext`x1$$ = 3, $CellContext`x2$$ = 
        87, $CellContext`x3$$ = 157, $CellContext`y1$$ = 
        33, $CellContext`y2$$ = 38, $CellContext`y3$$ = 193}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Row[{"Ciphertext is: ", 
         Style[
          $CellContext`eccEnc[{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}, {$CellContext`x3$$, \
$CellContext`y3$$}, $CellContext`a$$, $CellContext`b$$, $CellContext`p$$], 
          FontColor -> Blue]}], 
      "Specifications" :> {{{$CellContext`x1$$, 3, "x="}, FieldSize -> Tiny, 
         ControlPlacement -> 1}, {{$CellContext`y1$$, 33, "y="}, FieldSize -> 
         Tiny, ControlPlacement -> 2}, {{$CellContext`x2$$, 87, "x="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         3}, {{$CellContext`y2$$, 38, "y="}, FieldSize -> Tiny, 
         ControlPlacement -> 4}, {{$CellContext`x3$$, 157, "x="}, FieldSize -> 
         Tiny, ControlPlacement -> 5}, {{$CellContext`y3$$, 193, "y="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         6}, {{$CellContext`a$$, 2, "a="}, FieldSize -> Tiny, 
         ControlPlacement -> 7}, {{$CellContext`b$$, 4, "b="}, FieldSize -> 
         Tiny, ControlPlacement -> 8}, {{$CellContext`p$$, 263, "p="}, 
         FieldSize -> Tiny, ControlPlacement -> 9}, 
        Column[{
          Style["ECC Encryption", FontSize -> 14, FontWeight -> Bold], 
          "Generate encrypted message using public key", 
          Style[
          "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontColor -> 
           GrayLevel[0.5], FontSize -> 8], "", 
          "Input values for x,y-coordinates of plaintext", 
          Row[{
            Manipulate`Place[1], "     ", 
            Manipulate`Place[2]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          "Input values for x,y-coordinates of G", 
          Row[{
            Manipulate`Place[3], "     ", 
            Manipulate`Place[4]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x2$$, $CellContext`y2$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          "Input values for x,y-coordinates of \!\(\*SubscriptBox[\(P\), \
\(A\)]\)", 
          Row[{
            Manipulate`Place[5], "     ", 
            Manipulate`Place[6]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x3$$, $CellContext`y3$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          "Input values for curve parameters", 
          Row[{
            Manipulate`Place[7], "   ", 
            Manipulate`Place[8], "   ", 
            Manipulate`Place[9]}], 
          Dynamic[
           $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{521., {298., 307.}},
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
         While[
          Part[$CellContext`rpair, 1] != 
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
$CellContext`Q}]; $CellContext`eccEnc[
         Pattern[$CellContext`m, 
          Blank[]], 
         Pattern[$CellContext`G, 
          Blank[]], 
         Pattern[$CellContext`P, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`k}, $CellContext`k = 
          RandomInteger[{2, $CellContext`p - 1}]; {
           Part[
            $CellContext`eccMult[$CellContext`k, $CellContext`G, \
$CellContext`a, $CellContext`b, $CellContext`p], 3], 
           $CellContext`eccAdd[$CellContext`m, 
            Part[
             $CellContext`eccMult[$CellContext`k, $CellContext`P, \
$CellContext`a, $CellContext`b, $CellContext`p], 
             3], $CellContext`a, $CellContext`b, $CellContext`p]}]); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.70082693240373*^9, 3.7008281752316847`*^9, {3.7008282650119467`*^9, 
   3.7008282755492525`*^9}, {3.700828308905625*^9, 3.7008283486373405`*^9}, {
   3.7008287003276844`*^9, 3.7008287247781534`*^9}, 3.7008288156622396`*^9, 
   3.7008289811486425`*^9, {3.700829870342988*^9, 3.7008298993432827`*^9}, 
   3.7008300729732*^9},ExpressionUUID->"fe0acec1-b6b0-4ebe-8cf3-6c799ca7a4dd"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["ECC Decryption", "Subtitle",
 CellChangeTimes->{{3.700830179972884*^9, 
  3.7008301866178846`*^9}},ExpressionUUID->"2d48184a-470c-4000-8dc2-\
303b7033a544"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Row", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<Plaintext is: \>\"", ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"eccDec", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"x1", ",", "y1"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{"x2", ",", "y2"}], "}"}]}], "}"}], ",", "na", ",", "a", 
          ",", "b", ",", "p"}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}], 
   ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<ECC Decryption\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<Generate decrypted message using private key\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
         RowBox[{"FontColor", "\[Rule]", "Gray"}], ",", 
         RowBox[{"FontSize", "\[Rule]", "8"}]}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
       "\"\<Input values for x,y-coordinates of ciphertext\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
              "x1", ",", "201", ",", 
               "\"\<x of \!\(\*SubscriptBox[\(C\), \(1\)]\)=\>\""}], "}"}], 
             ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
              "y1", ",", "206", ",", 
               "\"\<y of \!\(\*SubscriptBox[\(C\), \(1\)]\)=\>\""}], "}"}], 
             ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x1", ",", "y1"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], "]"}], ",", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
              "x2", ",", "87", ",", 
               "\"\<x of \!\(\*SubscriptBox[\(C\), \(2\)]\)=\>\""}], "}"}], 
             ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
              "y2", ",", "225", ",", 
               "\"\<y of \!\(\*SubscriptBox[\(C\), \(2\)]\)=\>\""}], "}"}], 
             ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], "]"}], ",", 
       "\"\<Input values for \!\(\*SubscriptBox[\(n\), \(A\)]\)\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{
             "na", ",", "132", ",", 
              "\"\<\!\(\*SubscriptBox[\(n\), \(A\)]\)=\>\""}], "}"}], ",", 
            RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], "}"}], 
        "]"}], ",", "\[IndentingNewLine]", 
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
              RowBox[{"b", ",", "4", ",", "\"\<b=\>\""}], "}"}], ",", 
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
        "\[IndentingNewLine]", "]"}]}], ";", 
      RowBox[{
       RowBox[{"eccDec", "[", 
        RowBox[{"C_", ",", "n_", ",", "a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "Q", "}"}], ",", 
         RowBox[{
          RowBox[{"Q", "=", 
           RowBox[{
            RowBox[{"eccMult", "[", 
             RowBox[{"n", ",", 
              RowBox[{
              "C", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
              ",", "a", ",", "b", ",", "p"}], "]"}], "\[LeftDoubleBracket]", 
            "3", "\[RightDoubleBracket]"}]}], ";", 
          RowBox[{"Q", "=", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
             "Q", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], ",", 
             RowBox[{"Mod", "[", 
              RowBox[{
               RowBox[{"-", 
                RowBox[{
                "Q", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
                ",", "p"}], "]"}]}], "}"}]}], ";", 
          RowBox[{"eccAdd", "[", 
           RowBox[{"Q", ",", 
            RowBox[{
            "C", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], ",", 
            "a", ",", "b", ",", "p"}], "]"}]}]}], "]"}]}]}], ")"}]}]}], 
  "]"}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.700828856312112*^9, 3.7008288640745273`*^9}, {
   3.7008288977231627`*^9, 3.700828951415042*^9}, {3.700829009401971*^9, 
   3.70082902190915*^9}, {3.7008290529772186`*^9, 3.700829363933529*^9}, 
   3.700829421616188*^9, {3.7008294751428766`*^9, 3.700829518581856*^9}, {
   3.700830101706642*^9, 
   3.7008301419765425`*^9}},ExpressionUUID->"5dcabe9e-c605-4bc3-830f-\
025c58646faa"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    4, $CellContext`na$$ = 132, $CellContext`p$$ = 263, $CellContext`x1$$ = 
    201, $CellContext`x2$$ = 87, $CellContext`y1$$ = 206, $CellContext`y2$$ = 
    225, Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x1$$], 201, 
       "x of \!\(\*SubscriptBox[\(C\), \(1\)]\)="}}, {{
       Hold[$CellContext`y1$$], 206, 
       "y of \!\(\*SubscriptBox[\(C\), \(1\)]\)="}}, {{
       Hold[$CellContext`x2$$], 87, 
       "x of \!\(\*SubscriptBox[\(C\), \(2\)]\)="}}, {{
       Hold[$CellContext`y2$$], 225, 
       "y of \!\(\*SubscriptBox[\(C\), \(2\)]\)="}}, {{
       Hold[$CellContext`na$$], 132, 
       "\!\(\*SubscriptBox[\(n\), \(A\)]\)="}}, {{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 4, "b="}}, {{
       Hold[$CellContext`p$$], 263, "p="}}, {
      Hold[
       Column[{
         Style["ECC Decryption", FontSize -> 14, FontWeight -> Bold], 
         "Generate decrypted message using private key", 
         Style[
         "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontColor -> 
          GrayLevel[0.5], FontSize -> 8], "", 
         "Input values for x,y-coordinates of ciphertext", 
         Row[{
           Manipulate`Place[1], "     ", 
           Manipulate`Place[2]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         Row[{
           Manipulate`Place[3], "     ", 
           Manipulate`Place[4]}], 
         Dynamic[
          $CellContext`checkPoint[{$CellContext`x2$$, $CellContext`y2$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
         "Input values for \!\(\*SubscriptBox[\(n\), \(A\)]\)", 
         Row[{
           Manipulate`Place[5]}], "Input values for curve parameters", 
         Row[{
           Manipulate`Place[6], "   ", 
           Manipulate`Place[7], "   ", 
           Manipulate`Place[8]}], 
         Dynamic[
          $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {249., {4., 15.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        4, $CellContext`na$$ = 132, $CellContext`p$$ = 263, $CellContext`x1$$ = 
        201, $CellContext`x2$$ = 87, $CellContext`y1$$ = 
        206, $CellContext`y2$$ = 225}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Row[{"Plaintext is: ", 
         Style[
          $CellContext`eccDec[{{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}}, $CellContext`na$$, $CellContext`a$$, \
$CellContext`b$$, $CellContext`p$$], FontColor -> Blue]}], 
      "Specifications" :> {{{$CellContext`x1$$, 201, 
          "x of \!\(\*SubscriptBox[\(C\), \(1\)]\)="}, FieldSize -> Tiny, 
         ControlPlacement -> 
         1}, {{$CellContext`y1$$, 206, 
          "y of \!\(\*SubscriptBox[\(C\), \(1\)]\)="}, FieldSize -> Tiny, 
         ControlPlacement -> 
         2}, {{$CellContext`x2$$, 87, 
          "x of \!\(\*SubscriptBox[\(C\), \(2\)]\)="}, FieldSize -> Tiny, 
         ControlPlacement -> 
         3}, {{$CellContext`y2$$, 225, 
          "y of \!\(\*SubscriptBox[\(C\), \(2\)]\)="}, FieldSize -> Tiny, 
         ControlPlacement -> 
         4}, {{$CellContext`na$$, 132, "\!\(\*SubscriptBox[\(n\), \(A\)]\)="},
          FieldSize -> Tiny, ControlPlacement -> 
         5}, {{$CellContext`a$$, 2, "a="}, FieldSize -> Tiny, 
         ControlPlacement -> 6}, {{$CellContext`b$$, 4, "b="}, FieldSize -> 
         Tiny, ControlPlacement -> 7}, {{$CellContext`p$$, 263, "p="}, 
         FieldSize -> Tiny, ControlPlacement -> 8}, 
        Column[{
          Style["ECC Decryption", FontSize -> 14, FontWeight -> Bold], 
          "Generate decrypted message using private key", 
          Style[
          "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontColor -> 
           GrayLevel[0.5], FontSize -> 8], "", 
          "Input values for x,y-coordinates of ciphertext", 
          Row[{
            Manipulate`Place[1], "     ", 
            Manipulate`Place[2]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x1$$, $CellContext`y1$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          Row[{
            Manipulate`Place[3], "     ", 
            Manipulate`Place[4]}], 
          Dynamic[
           $CellContext`checkPoint[{$CellContext`x2$$, $CellContext`y2$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], 
          "Input values for \!\(\*SubscriptBox[\(n\), \(A\)]\)", 
          Row[{
            Manipulate`Place[5]}], "Input values for curve parameters", 
          Row[{
            Manipulate`Place[6], "   ", 
            Manipulate`Place[7], "   ", 
            Manipulate`Place[8]}], 
          Dynamic[
           $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{500., {273., 282.}},
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
$CellContext`Q}]; $CellContext`eccDec[
         Pattern[C, 
          Blank[]], 
         Pattern[$CellContext`n, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := Module[{$CellContext`Q}, $CellContext`Q = Part[
            $CellContext`eccMult[$CellContext`n, 
             Part[C, 1], $CellContext`a, $CellContext`b, $CellContext`p], 
            3]; $CellContext`Q = {
            Part[$CellContext`Q, 1], 
            
            Mod[-Part[$CellContext`Q, 
               2], $CellContext`p]}; $CellContext`eccAdd[$CellContext`Q, 
           Part[C, 2], $CellContext`a, $CellContext`b, $CellContext`p]]); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.7008291659341335`*^9, 3.7008292032716208`*^9}, 
   3.7008293669353333`*^9, 3.7008294226122217`*^9, {3.700829479079235*^9, 
   3.700829518962369*^9}, 
   3.700830142643724*^9},ExpressionUUID->"4f9b0561-bc2e-4e81-9e5c-\
19867498ec5d"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1012, 824},
WindowMargins->{{163, Automatic}, {96, Automatic}},
Magnification:>1.6 Inherited,
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
Cell[1486, 35, 164, 3, 87, "Subtitle", "ExpressionUUID" -> \
"4b064d39-b035-47e8-85e0-86f430707e39"],
Cell[CellGroupData[{
Cell[1675, 42, 18858, 474, 30, "Input", "ExpressionUUID" -> \
"ee7a400d-d7a2-4eae-8358-c1c5c336c54d",
 CellOpen->False],
Cell[20536, 518, 10759, 235, 333, "Output", "ExpressionUUID" -> \
"bb5b645a-4181-4ae5-9b86-3a5b56d3fe35"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[31344, 759, 162, 3, 87, "Subtitle", "ExpressionUUID" -> \
"9352ef31-6ce8-48a0-91a5-b1f1c6a4e014"],
Cell[CellGroupData[{
Cell[31531, 766, 20970, 521, 30, "Input", "ExpressionUUID" -> \
"dab85add-1b3f-4d6c-8d0a-8848c6eee97f",
 CellOpen->False],
Cell[52504, 1289, 13656, 295, 631, "Output", "ExpressionUUID" -> \
"fe0acec1-b6b0-4ebe-8cf3-6c799ca7a4dd"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[66209, 1590, 162, 3, 87, "Subtitle", "ExpressionUUID" -> \
"2d48184a-470c-4000-8dc2-303b7033a544"],
Cell[CellGroupData[{
Cell[66396, 1597, 20549, 520, 30, "Input", "ExpressionUUID" -> \
"5dcabe9e-c605-4bc3-830f-025c58646faa",
 CellOpen->False],
Cell[86948, 2119, 13103, 282, 581, "Output", "ExpressionUUID" -> \
"4f9b0561-bc2e-4e81-9e5c-19867498ec5d"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature XxT36d1XQJKnGCwPWc6f8PXB *)
