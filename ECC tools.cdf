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
NotebookDataLength[     22836,        558]
NotebookOptionsPosition[     22696,        536]
NotebookOutlinePosition[     23072,        552]
CellTagsIndexPosition[     23029,        549]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Find value of y given x", "Subtitle",
 CellChangeTimes->{
  3.700780069147828*^9},ExpressionUUID->"0ba94875-fb01-4744-a4c1-\
db69c986679c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Row", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<y = \>\"", ",", " ", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"findY", "[", 
         RowBox[{"x", ",", "a", ",", "b", ",", "p"}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}], 
   ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Calculate y given x on Ep(a,b)\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "8"}], ",", 
         RowBox[{"FontColor", "\[Rule]", "Gray"}]}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
       "\"\<Input value for x-coordinate\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{"Control", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"{", 
             RowBox[{"x", ",", "3", ",", "\"\<x=\>\""}], "}"}], ",", 
            RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], "}"}], 
        "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
       "\[IndentingNewLine]", "\"\<Input values for curve parameters\>\"", 
       ",", "\[IndentingNewLine]", 
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
          "]"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"findY", "[", 
        RowBox[{"x_", ",", "a_", ",", "b_", ",", "p_"}], "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "m", "}"}], ",", "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"m", "=", 
           RowBox[{"Mod", "[", 
            RowBox[{
             RowBox[{
              SuperscriptBox["x", "3"], "+", 
              RowBox[{"a", "*", "x"}], "+", "b"}], ",", "p"}], "]"}]}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"PowerMod", "[", 
           RowBox[{"m", ",", 
            RowBox[{"1", "/", "2"}], ",", "p"}], "]"}]}]}], 
        "\[IndentingNewLine]", "]"}]}]}], ")"}]}]}], "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.7007269162768297`*^9, 3.700726923245351*^9}, {
  3.700779474181156*^9, 3.700779523662289*^9}, {3.700779569360392*^9, 
  3.70077961809174*^9}, {3.700779692171129*^9, 3.7007797066389694`*^9}, {
  3.700780390286632*^9, 3.7007804039302025`*^9}, {3.7007804341339107`*^9, 
  3.7007804485800877`*^9}, {3.7007837629257174`*^9, 
  3.7007837648690205`*^9}},ExpressionUUID->"600ac00b-6fdd-4ccc-86f1-\
d52083679cad"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    3, $CellContext`p$$ = 263, $CellContext`x$$ = 3, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x$$], 3, "x="}}, {{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 3, "b="}}, {{
       Hold[$CellContext`p$$], 263, "p="}}, {
      Hold[
       Column[{
         Style[
         "Calculate y given x on Ep(a,b)", FontSize -> 14, FontWeight -> 
          Bold], "\!\(\*SuperscriptBox[\(y\), \
\(2\)]\)=\!\(\*SuperscriptBox[\(x\), \(3\)]\)+ax+b mod p", 
         Style[
         "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontSize -> 8, 
          FontColor -> GrayLevel[0.5]], "", "Input value for x-coordinate", 
         Row[{
           Manipulate`Place[1]}], "", "Input values for curve parameters", 
         Row[{
           Manipulate`Place[2], "   ", 
           Manipulate`Place[3], "   ", 
           Manipulate`Place[4]}], 
         Dynamic[
          $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {51., {4., 11.}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        3, $CellContext`p$$ = 263, $CellContext`x$$ = 3}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Row[{"y = ", 
         Style[
          $CellContext`findY[$CellContext`x$$, $CellContext`a$$, \
$CellContext`b$$, $CellContext`p$$], FontColor -> Blue]}], 
      "Specifications" :> {{{$CellContext`x$$, 3, "x="}, FieldSize -> Tiny, 
         ControlPlacement -> 1}, {{$CellContext`a$$, 2, "a="}, FieldSize -> 
         Tiny, ControlPlacement -> 2}, {{$CellContext`b$$, 3, "b="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         3}, {{$CellContext`p$$, 263, "p="}, FieldSize -> Tiny, 
         ControlPlacement -> 4}, 
        Column[{
          Style[
          "Calculate y given x on Ep(a,b)", FontSize -> 14, FontWeight -> 
           Bold], "\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\
\(x\), \(3\)]\)+ax+b mod p", 
          Style[
          "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontSize -> 8, 
           FontColor -> GrayLevel[0.5]], "", "Input value for x-coordinate", 
          Row[{
            Manipulate`Place[1]}], "", "Input values for curve parameters", 
          Row[{
            Manipulate`Place[2], "   ", 
            Manipulate`Place[3], "   ", 
            Manipulate`Place[4]}], 
          Dynamic[
           $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{420., {178., 187.}},
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
            FontWeight -> Bold]]]]; $CellContext`findY[
         Pattern[$CellContext`x, 
          Blank[]], 
         Pattern[$CellContext`a, 
          Blank[]], 
         Pattern[$CellContext`b, 
          Blank[]], 
         Pattern[$CellContext`p, 
          Blank[]]] := 
       Module[{$CellContext`m}, $CellContext`m = 
          Mod[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b, $CellContext`p]; 
         PowerMod[$CellContext`m, 1/2, $CellContext`p]]); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.70077895235275*^9, 3.7007789958468494`*^9, 3.7007794384995537`*^9, {
   3.7007796026854935`*^9, 3.7007796187241135`*^9}, 3.700779704031993*^9, 
   3.7007804044788523`*^9, 3.7007804489814606`*^9, 3.7007805562016315`*^9, 
   3.700783767005097*^9, 
   3.700825402111664*^9},ExpressionUUID->"63ca1df0-ca95-4f69-a05e-\
5378e67171c4"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Check whether the point P is on Ep(a,b)", "Subtitle",
 CellChangeTimes->{
  3.700780026526168*^9},ExpressionUUID->"b35bc2b3-e641-43d6-a305-\
c7fd06e4b409"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Column", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Row", "[", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"ToString", "[", 
          RowBox[{"{", 
           RowBox[{"x", ",", "y"}], "}"}], "]"}], ",", 
         "\"\< is on the curve \!\(\*SuperscriptBox[\(y\), \
\(2\)]\)=\!\(\*SuperscriptBox[\(x\), \(3\)]\)+ax+b mod p: \>\""}], "}"}], 
       "]"}], ",", " ", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"checkPoint", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"x", ",", "y"}], "}"}], ",", "a", ",", "b", ",", "p"}], 
         "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}], 
   ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Is point P on Ep(a,b)\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       "\"\<\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p\>\"", ",", "\[IndentingNewLine]", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "8"}], ",", 
         RowBox[{"FontColor", "\[Rule]", "Gray"}]}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
       "\"\<Input value for x,y-coordinates of point P\>\"", ",", 
       "\[IndentingNewLine]", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x", ",", "3", ",", "\"\<x=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}], ",", 
          "\"\<     \>\"", ",", 
          RowBox[{"Control", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"y", ",", "1", ",", "\"\<y=\>\""}], "}"}], ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "}"}], "]"}]}], 
         "}"}], "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
       "\[IndentingNewLine]", "\"\<Input values for curve parameters\>\"", 
       ",", "\[IndentingNewLine]", 
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
         "}"}], "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkAB", "[", 
         RowBox[{"a", ",", "b", ",", "p"}], "]"}], "]"}], ",", 
       "\[IndentingNewLine]", "\"\<Result\>\""}], "}"}], ",", "Center"}], 
    "]"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
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
         RowBox[{
          RowBox[{"Mod", "[", 
           RowBox[{
            RowBox[{
             SuperscriptBox["x", "3"], "+", 
             RowBox[{"a", " ", "x"}], "+", "b", "-", 
             SuperscriptBox["y", "2"]}], ",", "p"}], "]"}], "\[Equal]", 
          "0"}]}]}], "\[IndentingNewLine]", "]"}]}], ")"}]}]}], 
  "]"}]], "Input",
 InitializationCell->True,
 CellChangeTimes->{{3.700726983853674*^9, 3.700726983855178*^9}, 
   3.700727287443483*^9, {3.7007274188631124`*^9, 3.700727459707056*^9}, {
   3.700727492646251*^9, 3.7007275694294405`*^9}, {3.700727666576595*^9, 
   3.700727695565476*^9}, {3.700727815415257*^9, 3.7007280680362406`*^9}, {
   3.700728140724289*^9, 3.700728150746546*^9}, 3.700728217775794*^9, 
   3.70072963689795*^9, {3.700729668455228*^9, 3.70072966916891*^9}, {
   3.700780105513071*^9, 3.700780147596017*^9}, {3.7007801829094768`*^9, 
   3.7007803051434603`*^9}, {3.700780806125448*^9, 3.7007809158743324`*^9}, {
   3.7007809578990693`*^9, 3.7007809680601573`*^9}, {3.700783745720996*^9, 
   3.700783749387952*^9}},ExpressionUUID->"d9687137-819d-4e0c-9a3f-\
6bf2121212e1"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`a$$ = 2, $CellContext`b$$ = 
    3, $CellContext`p$$ = 7, $CellContext`x$$ = 3, $CellContext`y$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`x$$], 3, "x="}}, {{
       Hold[$CellContext`y$$], 1, "y="}}, {{
       Hold[$CellContext`a$$], 2, "a="}}, {{
       Hold[$CellContext`b$$], 3, "b="}}, {{
       Hold[$CellContext`p$$], 7, "p="}}, {
      Hold[
       Column[{
         Style["Is point P on Ep(a,b)", FontSize -> 14, FontWeight -> Bold], 
         "\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p", 
         Style[
         "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontSize -> 8, 
          FontColor -> GrayLevel[0.5]], "", 
         "Input value for x,y-coordinates of point P", 
         Row[{
           Manipulate`Place[1], "     ", 
           Manipulate`Place[2]}], "", "Input values for curve parameters", 
         Row[{
           Manipulate`Place[3], "   ", 
           Manipulate`Place[4], "   ", 
           Manipulate`Place[5]}], 
         Dynamic[
          $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]], Manipulate`Dump`ThisIsNotAControl}}, 
    Typeset`size$$ = {411., {17.5, 26.5}}, Typeset`update$$ = 0, 
    Typeset`initDone$$, Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     2, StandardForm, 
      "Variables" :> {$CellContext`a$$ = 2, $CellContext`b$$ = 
        3, $CellContext`p$$ = 7, $CellContext`x$$ = 3, $CellContext`y$$ = 1}, 
      "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Column[{
         Row[{
           ToString[{$CellContext`x$$, $CellContext`y$$}], 
           " is on the curve \!\(\*SuperscriptBox[\(y\), \
\(2\)]\)=\!\(\*SuperscriptBox[\(x\), \(3\)]\)+ax+b mod p: "}], 
         Style[
          $CellContext`checkPoint[{$CellContext`x$$, $CellContext`y$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$], FontColor -> Blue]}], 
      "Specifications" :> {{{$CellContext`x$$, 3, "x="}, FieldSize -> Tiny, 
         ControlPlacement -> 1}, {{$CellContext`y$$, 1, "y="}, FieldSize -> 
         Tiny, ControlPlacement -> 2}, {{$CellContext`a$$, 2, "a="}, 
         FieldSize -> Tiny, ControlPlacement -> 
         3}, {{$CellContext`b$$, 3, "b="}, FieldSize -> Tiny, 
         ControlPlacement -> 4}, {{$CellContext`p$$, 7, "p="}, FieldSize -> 
         Tiny, ControlPlacement -> 5}, 
        Column[{
          Style["Is point P on Ep(a,b)", FontSize -> 14, FontWeight -> Bold], 
          "\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p", 
          Style[
          "Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0", FontSize -> 8, 
           FontColor -> GrayLevel[0.5]], "", 
          "Input value for x,y-coordinates of point P", 
          Row[{
            Manipulate`Place[1], "     ", 
            Manipulate`Place[2]}], "", "Input values for curve parameters", 
          Row[{
            Manipulate`Place[3], "   ", 
            Manipulate`Place[4], "   ", 
            Manipulate`Place[5]}], 
          Dynamic[
           $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$]], "Result"}, Center]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{476., {189., 198.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>($CellContext`checkPoint[
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
        Mod[$CellContext`x^3 + $CellContext`a $CellContext`x + $CellContext`b - \
$CellContext`y^2, $CellContext`p] == 0]; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.70077895253055*^9, 3.700779438604834*^9, {3.7007802453616643`*^9, 
   3.70078030616537*^9}, 3.7007808494080057`*^9, {3.7007808961753964`*^9, 
   3.700780916754221*^9}, 3.700780968908155*^9, 3.7007837501662507`*^9, 
   3.700825402304177*^9},ExpressionUUID->"02fd5c7d-5ad9-4e8e-8156-\
9120dc2d27ab"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1167, 1021},
WindowMargins->{{116, Automatic}, {Automatic, 51}},
Magnification:>1.4 Inherited,
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
Cell[1486, 35, 145, 3, 78, "Subtitle", "ExpressionUUID" -> \
"0ba94875-fb01-4744-a4c1-db69c986679c"],
Cell[CellGroupData[{
Cell[1656, 42, 5190, 124, 588, "Input", "ExpressionUUID" -> \
"600ac00b-6fdd-4ccc-86f1-d52083679cad",
 InitializationCell->True],
Cell[6849, 168, 5221, 116, 388, "Output", "ExpressionUUID" -> \
"63ca1df0-ca95-4f69-a05e-5378e67171c4"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[12119, 290, 161, 3, 78, "Subtitle", "ExpressionUUID" -> \
"b35bc2b3-e641-43d6-a305-c7fd06e4b409"],
Cell[CellGroupData[{
Cell[12305, 297, 5205, 125, 558, "Input", "ExpressionUUID" -> \
"d9687137-819d-4e0c-9a3f-6bf2121212e1",
 InitializationCell->True],
Cell[17513, 424, 5155, 108, 410, "Output", "ExpressionUUID" -> \
"02fd5c7d-5ad9-4e8e-8156-9120dc2d27ab"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature uxprwKpnIe3wlD1PGqHmU0jY *)
