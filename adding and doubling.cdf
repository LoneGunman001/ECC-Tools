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
NotebookDataLength[     27662,        689]
NotebookOptionsPosition[     27340,        667]
NotebookOutlinePosition[     27713,        683]
CellTagsIndexPosition[     27670,        680]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"EcAdd", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a_", ",", "b_"}], "}"}], ",", "p1_", ",", "p2_"}], "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "m", ",", "x1", ",", "y1", ",", "x2", ",", "y2", ",", "x3", ",", "y3", 
       ",", "w"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x1", ",", "y1"}], "}"}], "=", "p1"}], ";", " ", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"x2", ",", "y2"}], "}"}], "=", "p2"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{"Handle", " ", "identity", " ", "cases"}], " ", "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"x1", "\[Equal]", "\[Infinity]"}], ",", 
        RowBox[{"Return", "[", "p2", "]"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
        RowBox[{
         SubscriptBox["p", "1"], " ", "+", " ", 
         RowBox[{"(", 
          RowBox[{"-", 
           SubscriptBox["p", "1"]}], ")"}]}], " ", "=", " ", "\[Infinity]"}], 
       " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"x1", "\[Equal]", "x2"}], "&&", " ", 
         RowBox[{
          RowBox[{"y1", "+", "y2"}], "\[Equal]", "0"}]}], ",", 
        RowBox[{"Return", "[", 
         RowBox[{"{", 
          RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}], "]"}]}], "]"}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"(*", " ", 
       RowBox[{
       "If", " ", "we", " ", "are", " ", "doubling", " ", "a", " ", "point"}],
        " ", "*)"}], "\[IndentingNewLine]", 
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"p1", "\[Equal]", "p2"}], ",", "\[IndentingNewLine]", 
        RowBox[{"(*", " ", 
         RowBox[{"Check", " ", "for", " ", "vertical", " ", "tangent"}], " ", 
         "*)"}], "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"y1", "\[Equal]", "0"}], ",", 
           RowBox[{"Return", "[", 
            RowBox[{"{", 
             RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}], "]"}]}], 
          "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"(*", " ", 
          RowBox[{
          "Compute", " ", "the", " ", "slope", " ", "of", " ", "the", " ", 
           "tangent"}], " ", "*)"}], "\[IndentingNewLine]", 
         RowBox[{"m", "=", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"3", " ", 
              SuperscriptBox["x1", "2"]}], "+", "a"}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{"2", " ", "y1"}], ")"}]}]}], ";"}], "\[IndentingNewLine]",
         ",", "\[IndentingNewLine]", 
        RowBox[{"(*", " ", 
         RowBox[{
         "else", " ", "compute", " ", "the", " ", "slope", " ", "of", " ", 
          "the", " ", "chord"}], " ", "*)"}], "\[IndentingNewLine]", 
        RowBox[{"m", "=", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"y2", "-", "y1"}], ")"}], "/", 
          RowBox[{"(", 
           RowBox[{"x2", "-", "x1"}], ")"}]}]}]}], "\[IndentingNewLine]", 
       "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"x3", "=", 
       RowBox[{
        SuperscriptBox["m", "2"], "-", "x1", "-", "x2"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"y3", "=", 
       RowBox[{
        RowBox[{"m", 
         RowBox[{"(", 
          RowBox[{"x1", "-", "x3"}], ")"}]}], "-", "y1"}]}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"x3", ",", "y3"}], "}"}]}]}], "\[IndentingNewLine]", "]"}]}], 
  ";"}]], "Input",ExpressionUUID->"c31c00b2-b126-4929-a0c1-bbf4ce3db8ea"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"EcY", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"a_", ",", "b_"}], "}"}], ",", "x_"}], "]"}], ":=", 
   RowBox[{"Sqrt", "[", 
    RowBox[{
     SuperscriptBox["x", "3"], "+", 
     RowBox[{"a", " ", "x"}], "+", "b"}], "]"}]}], ";"}]], "Input",ExpressionU\
UID->"f0fcf809-ee83-4e13-a1bd-ad5a8c74ceaa"],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{"PlotEcAdd", "[", 
    RowBox[{"pt1_", ",", "pt2_"}], "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"pt3", ",", "pt4"}], "}"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"pt4", "=", 
       RowBox[{"EcAdd", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", "b"}], "}"}], ",", "pt1", ",", "pt2"}], "]"}]}], 
      ";", "\[IndentingNewLine]", 
      RowBox[{"pt3", "=", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
         "pt4", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], ",", 
         RowBox[{"-", 
          RowBox[{
          "pt4", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}]}], 
        "}"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"ContourPlot", "[", 
         RowBox[{
          RowBox[{
           SuperscriptBox["y", "2"], "\[Equal]", 
           RowBox[{
            SuperscriptBox["x", "3"], "+", 
            RowBox[{"a", " ", "x"}], "+", "b"}]}], ",", 
          RowBox[{"{", 
           RowBox[{"x", ",", 
            RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"y", ",", 
            RowBox[{"-", "4"}], ",", "4"}], "}"}], ",", 
          RowBox[{"Axes", "\[Rule]", "True"}], ",", 
          RowBox[{"PerformanceGoal", "\[Rule]", "\"\<Quality\>\""}], ",", 
          RowBox[{"PlotPoints", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"15", ",", "20"}], "}"}]}]}], "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{"Blue", ",", 
            RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
            RowBox[{"Point", "[", "pt1", "]"}], ",", 
            RowBox[{"PointSize", "[", "0.02", "]"}], ",", "Green", ",", 
            RowBox[{"Point", "[", "pt2", "]"}], ",", 
            RowBox[{"PointSize", "[", "0.02", "]"}], ",", "Black", ",", 
            RowBox[{"Point", "[", "pt3", "]"}], ",", 
            RowBox[{"ColorData", "[", 
             RowBox[{"1", ",", "2"}], "]"}], ",", "Red", ",", 
            RowBox[{"Point", "[", "pt4", "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{"pt1", ",", "pt3"}], "}"}], "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{"pt2", ",", "pt3"}], "}"}], "]"}], ",", 
            RowBox[{"ColorData", "[", 
             RowBox[{"1", ",", "3"}], "]"}], ",", 
            RowBox[{"Line", "[", 
             RowBox[{"{", 
              RowBox[{"pt3", ",", "pt4"}], "}"}], "]"}]}], "}"}], ",", 
          RowBox[{"PlotRange", "\[Rule]", "All"}]}], "]"}]}], "}"}]}]}], 
    "\[IndentingNewLine]", "]"}]}], ";"}]], "Input",
 CellChangeTimes->{{3.700015843530079*^9, 3.7000158482957582`*^9}, {
  3.700016523698984*^9, 3.7000165945681744`*^9}, {3.7000166398336325`*^9, 
  3.700016717559617*^9}, {3.7000171388752413`*^9, 3.700017158277534*^9}, {
  3.7000175167415967`*^9, 
  3.700017522950161*^9}},ExpressionUUID->"d86a84ec-6b18-4e11-b6cf-\
b76722f2605e"],

Cell[BoxData[
 RowBox[{
  RowBox[{"a", "=", 
   RowBox[{"-", "3"}]}], ";", 
  RowBox[{"b", "=", 
   RowBox[{"-", "1"}]}], ";"}]], "Input",
 CellChangeTimes->{
  3.7000171759893227`*^9, {3.7000173111433053`*^9, 3.7000173146795263`*^9}, {
   3.7000174002538104`*^9, 
   3.7000174106571198`*^9}},ExpressionUUID->"5d1bb94f-5385-4e83-b126-\
8b4e9f676c1e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"pt1", "=", 
     RowBox[{"{", 
      RowBox[{"x1", ",", 
       RowBox[{"EcY", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", "b"}], "}"}], ",", "x1"}], "]"}]}], "}"}]}], ";", 
    RowBox[{"pt", "=", 
     RowBox[{"{", 
      RowBox[{"x2", ",", "0"}], "}"}]}], ";", "\[IndentingNewLine]", 
    RowBox[{"pt2", "=", 
     RowBox[{"{", 
      RowBox[{"x2", ",", 
       RowBox[{"EcY", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", "b"}], "}"}], ",", "x2"}], "]"}]}], "}"}]}], ";", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"PlotEcAdd", "[", 
         RowBox[{"pt1", ",", "pt2"}], "]"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", "440"}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"TraditionalForm", "[", 
              RowBox[{
               SuperscriptBox["y", "2"], "\[Equal]", 
               RowBox[{
                SuperscriptBox["x", "3"], "+", 
                RowBox[{"a", " ", "x"}], " ", "+", "b"}]}], "]"}], "}"}], 
            "]"}], ",", "18"}], "]"}]}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"StringJoin", "[", 
         RowBox[{"\"\<x1=\>\"", ",", 
          RowBox[{"ToString", "[", "pt1", "]"}]}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"StringJoin", "[", 
         RowBox[{"\"\<x2=\>\"", ",", 
          RowBox[{"ToString", "[", "pt2", "]"}]}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Green"}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"StringJoin", "[", 
         RowBox[{"\"\<x3=\>\"", ",", 
          RowBox[{"ToString", "[", 
           RowBox[{"EcAdd", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"a", ",", "b"}], "}"}], ",", "pt1", ",", "pt2"}], "]"}],
            "]"}]}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Red"}]}], "]"}]}], "}"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x1", ",", 
     RowBox[{"-", "1.2"}], ",", 
     RowBox[{"-", "0.38"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x2", ",", 
     RowBox[{"-", "1.2"}], ",", 
     RowBox[{"-", "0.38"}]}], "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.7000153647455015`*^9, 3.70001550643022*^9}, {
   3.700015551882924*^9, 3.700015678457882*^9}, 3.7000157194226027`*^9, {
   3.7000159012073193`*^9, 3.700015921030243*^9}, {3.7000161909157867`*^9, 
   3.7000162857219*^9}, {3.70001674876327*^9, 3.7000167664859276`*^9}, {
   3.7000168208495617`*^9, 3.7000169468757863`*^9}, {3.7000170170641804`*^9, 
   3.700017047999462*^9}, {3.7000170900982237`*^9, 3.700017109057459*^9}, {
   3.7000171859070845`*^9, 3.7000172443440437`*^9}, 3.7000173285072956`*^9, {
   3.700017933999935*^9, 3.7000179377501807`*^9}, {3.7000901397364483`*^9, 
   3.70009020089816*^9}},ExpressionUUID->"f62c0ab6-0b7c-41b0-a498-\
a5e19a877528"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`x1$$ = -1.012, $CellContext`x2$$ = -0.486, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`x1$$], -1.2, -0.38}, {
      Hold[$CellContext`x2$$], -1.2, -0.38}}, Typeset`size$$ = {
    818.5, {458., 397.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`x1$38292$$ = 
    0, $CellContext`x2$38293$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`x1$$ = -1.2, $CellContext`x2$$ = -1.2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`x1$$, $CellContext`x1$38292$$, 0], 
        Hold[$CellContext`x2$$, $CellContext`x2$38293$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`pt1 = {$CellContext`x1$$, 
          $CellContext`EcY[{$CellContext`a, $CellContext`b}, \
$CellContext`x1$$]}; $CellContext`pt = {$CellContext`x2$$, 
          0}; $CellContext`pt2 = {$CellContext`x2$$, 
          $CellContext`EcY[{$CellContext`a, $CellContext`b}, \
$CellContext`x2$$]}; {
         Show[
          $CellContext`PlotEcAdd[$CellContext`pt1, $CellContext`pt2], 
          ImageSize -> 440, PlotLabel -> Style[
            Row[{
              
              TraditionalForm[$CellContext`y^2 == $CellContext`x^3 + \
$CellContext`a $CellContext`x + $CellContext`b]}], 18]], 
         Style[
          StringJoin["x1=", 
           ToString[$CellContext`pt1]], FontColor -> Blue], 
         Style[
          StringJoin["x2=", 
           ToString[$CellContext`pt2]], FontColor -> Green], 
         Style[
          StringJoin["x3=", 
           ToString[
            $CellContext`EcAdd[{$CellContext`a, $CellContext`b}, \
$CellContext`pt1, $CellContext`pt2]]], FontColor -> Red]}), 
      "Specifications" :> {{$CellContext`x1$$, -1.2, -0.38}, \
{$CellContext`x2$$, -1.2, -0.38}}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{1128., {510., 519.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pt1 = {-1.2, 
        0.9338094023943}, $CellContext`EcY[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`x, 
          Blank[]]] := 
       Sqrt[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b], $CellContext`a = -3, $CellContext`b = -1, $CellContext`pt = \
{-1.2, 0}, $CellContext`pt2 = {{-1.2, 0}, {
         0.9338094023943, I}}, $CellContext`PlotEcAdd[
         Pattern[$CellContext`pt1, 
          Blank[]], 
         Pattern[$CellContext`pt2, 
          Blank[]]] := 
       Module[{$CellContext`pt3, $CellContext`pt4}, $CellContext`pt4 = \
$CellContext`EcAdd[{$CellContext`a, $CellContext`b}, $CellContext`pt1, \
$CellContext`pt2]; $CellContext`pt3 = {
            Part[$CellContext`pt4, 1], -Part[$CellContext`pt4, 2]}; {
           
           ContourPlot[$CellContext`y^2 == $CellContext`x^3 + $CellContext`a \
$CellContext`x + $CellContext`b, {$CellContext`x, -5, 5}, {$CellContext`y, -4,
              4}, Axes -> True, PerformanceGoal -> "Quality", 
            PlotPoints -> {15, 20}], 
           Graphics[{Blue, 
             PointSize[0.02], 
             Point[$CellContext`pt1], 
             PointSize[0.02], Green, 
             Point[$CellContext`pt2], 
             PointSize[0.02], Black, 
             Point[$CellContext`pt3], 
             ColorData[1, 2], Red, 
             Point[$CellContext`pt4], 
             Line[{$CellContext`pt1, $CellContext`pt3}], 
             Line[{$CellContext`pt2, $CellContext`pt3}], 
             ColorData[1, 3], 
             Line[{$CellContext`pt3, $CellContext`pt4}]}, PlotRange -> 
            All]}], $CellContext`EcAdd[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`p1, 
          Blank[]], 
         Pattern[$CellContext`p2, 
          Blank[]]] := 
       Module[{$CellContext`m, $CellContext`x1, $CellContext`y1, \
$CellContext`x2, $CellContext`y2, $CellContext`x3, $CellContext`y3, \
$CellContext`w}, {$CellContext`x1, $CellContext`y1} = $CellContext`p1; \
{$CellContext`x2, $CellContext`y2} = $CellContext`p2; 
         If[$CellContext`x1 == Infinity, 
           Return[$CellContext`p2]]; If[
           
           And[$CellContext`x1 == $CellContext`x2, $CellContext`y1 + \
$CellContext`y2 == 0], 
           Return[{Infinity, Infinity}]]; 
         If[$CellContext`p1 == $CellContext`p2, If[$CellContext`y1 == 0, 
             
             Return[{Infinity, Infinity}]]; $CellContext`m = (
              3 $CellContext`x1^2 + $CellContext`a)/(2 $CellContext`y1); 
           Null, $CellContext`m = ($CellContext`y2 - \
$CellContext`y1)/($CellContext`x2 - $CellContext`x1)]; $CellContext`x3 = \
$CellContext`m^2 - $CellContext`x1 - $CellContext`x2; $CellContext`y3 = \
$CellContext`m ($CellContext`x1 - $CellContext`x3) - $CellContext`y1; \
{$CellContext`x3, $CellContext`y3}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.700015171992364*^9, 3.7000152360432663`*^9}, {
   3.700015287334014*^9, 3.700015299756591*^9}, {3.7000153702213097`*^9, 
   3.700015389534354*^9}, {3.700015434715235*^9, 3.7000154489451876`*^9}, 
   3.7000154865103393`*^9, 3.7000155626459527`*^9, 3.700015593898899*^9, {
   3.7000156511415353`*^9, 3.7000156800601025`*^9}, 3.7000157214496036`*^9, 
   3.700015851647501*^9, {3.7000159030327067`*^9, 3.700015923378288*^9}, 
   3.700016323428995*^9, 3.700016722291399*^9, 3.700016768032926*^9, {
   3.7000169184230733`*^9, 3.7000169482259254`*^9}, 3.700017049272464*^9, 
   3.7000171101149063`*^9, 3.7000171781828814`*^9, 3.7000173590445795`*^9, 
   3.700017551928626*^9, 3.700018009580653*^9, 3.7000890481014633`*^9, 
   3.7000901599370646`*^9, 
   3.700090203913911*^9},ExpressionUUID->"d845333e-8fca-446b-9f2a-\
7e14fe361f3f"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"pt1", "=", 
     RowBox[{"{", 
      RowBox[{"x1", ",", 
       RowBox[{"EcY", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"a", ",", "b"}], "}"}], ",", "x1"}], "]"}]}], "}"}]}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"pt2", "=", "pt1"}], ";", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"PlotEcAdd", "[", 
         RowBox[{"pt1", ",", 
          RowBox[{"{", 
           RowBox[{"x1", ",", 
            RowBox[{"EcY", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"a", ",", "b"}], "}"}], ",", "x1"}], "]"}]}], "}"}]}], 
         "]"}], ",", 
        RowBox[{"ImageSize", "\[Rule]", "440"}], ",", 
        RowBox[{"PlotLabel", "\[Rule]", 
         RowBox[{"Style", "[", 
          RowBox[{
           RowBox[{"Row", "[", 
            RowBox[{"{", 
             RowBox[{"TraditionalForm", "[", 
              RowBox[{
               SuperscriptBox["y", "2"], "\[Equal]", 
               RowBox[{
                SuperscriptBox["x", "3"], "+", 
                RowBox[{"a", " ", "x"}], " ", "+", "b"}]}], "]"}], "}"}], 
            "]"}], ",", "18"}], "]"}]}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"StringJoin", "[", 
         RowBox[{"\"\<x1=\>\"", ",", 
          RowBox[{"ToString", "[", "pt1", "]"}]}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Green"}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"StringJoin", "[", 
         RowBox[{"\"\<x3=\>\"", ",", 
          RowBox[{"ToString", "[", 
           RowBox[{"EcAdd", "[", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"a", ",", "b"}], "}"}], ",", "pt1", ",", "pt2"}], "]"}],
            "]"}]}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Red"}]}], "]"}]}], "}"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x1", ",", 
     RowBox[{"-", "1.2"}], ",", 
     RowBox[{"-", "0.38"}]}], "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.70001762326422*^9, 3.7000176587844706`*^9}, 
   3.700017816718087*^9, {3.700017916930519*^9, 3.700017919679439*^9}, {
   3.7000902483370514`*^9, 
   3.7000902708176775`*^9}},ExpressionUUID->"f22dcc2e-67a1-4924-add1-\
5cc7e5949d75"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`x1$$ = -0.6309999999999999, Typeset`show$$ =
     True, Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`x1$$], -1.2, -0.38}}, Typeset`size$$ = {
    773., {458., 397.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`x1$60396$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`x1$$ = -1.2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`x1$$, $CellContext`x1$60396$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`pt1 = {$CellContext`x1$$, 
          $CellContext`EcY[{$CellContext`a, $CellContext`b}, \
$CellContext`x1$$]}; $CellContext`pt2 = $CellContext`pt1; {
         Show[
          $CellContext`PlotEcAdd[$CellContext`pt1, {$CellContext`x1$$, 
            $CellContext`EcY[{$CellContext`a, $CellContext`b}, \
$CellContext`x1$$]}], ImageSize -> 440, PlotLabel -> Style[
            Row[{
              
              TraditionalForm[$CellContext`y^2 == $CellContext`x^3 + \
$CellContext`a $CellContext`x + $CellContext`b]}], 18]], 
         Style[
          StringJoin["x1=", 
           ToString[$CellContext`pt1]], FontColor -> Green], 
         Style[
          StringJoin["x3=", 
           ToString[
            $CellContext`EcAdd[{$CellContext`a, $CellContext`b}, \
$CellContext`pt1, $CellContext`pt2]]], FontColor -> Red]}), 
      "Specifications" :> {{$CellContext`x1$$, -1.2, -0.38}}, "Options" :> {},
       "DefaultOptions" :> {}],
     ImageSizeCache->{1367., {493., 502.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`pt1 = {-1.012, 
        0.9997831124799018}, $CellContext`EcY[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`x, 
          Blank[]]] := 
       Sqrt[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b], $CellContext`a = -3, $CellContext`b = -1, $CellContext`pt2 = \
{-0.486, 0.5858402034684885}, $CellContext`PlotEcAdd[
         Pattern[$CellContext`pt1, 
          Blank[]], 
         Pattern[$CellContext`pt2, 
          Blank[]]] := 
       Module[{$CellContext`pt3, $CellContext`pt4}, $CellContext`pt4 = \
$CellContext`EcAdd[{$CellContext`a, $CellContext`b}, $CellContext`pt1, \
$CellContext`pt2]; $CellContext`pt3 = {
            Part[$CellContext`pt4, 1], -Part[$CellContext`pt4, 2]}; {
           
           ContourPlot[$CellContext`y^2 == $CellContext`x^3 + $CellContext`a \
$CellContext`x + $CellContext`b, {$CellContext`x, -5, 5}, {$CellContext`y, -4,
              4}, Axes -> True, PerformanceGoal -> "Quality", 
            PlotPoints -> {15, 20}], 
           Graphics[{Blue, 
             PointSize[0.02], 
             Point[$CellContext`pt1], 
             PointSize[0.02], Green, 
             Point[$CellContext`pt2], 
             PointSize[0.02], Black, 
             Point[$CellContext`pt3], 
             ColorData[1, 2], Red, 
             Point[$CellContext`pt4], 
             Line[{$CellContext`pt1, $CellContext`pt3}], 
             Line[{$CellContext`pt2, $CellContext`pt3}], 
             ColorData[1, 3], 
             Line[{$CellContext`pt3, $CellContext`pt4}]}, PlotRange -> 
            All]}], $CellContext`EcAdd[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`p1, 
          Blank[]], 
         Pattern[$CellContext`p2, 
          Blank[]]] := 
       Module[{$CellContext`m, $CellContext`x1, $CellContext`y1, \
$CellContext`x2, $CellContext`y2, $CellContext`x3, $CellContext`y3, \
$CellContext`w}, {$CellContext`x1, $CellContext`y1} = $CellContext`p1; \
{$CellContext`x2, $CellContext`y2} = $CellContext`p2; 
         If[$CellContext`x1 == Infinity, 
           Return[$CellContext`p2]]; If[
           
           And[$CellContext`x1 == $CellContext`x2, $CellContext`y1 + \
$CellContext`y2 == 0], 
           Return[{Infinity, Infinity}]]; 
         If[$CellContext`p1 == $CellContext`p2, If[$CellContext`y1 == 0, 
             
             Return[{Infinity, Infinity}]]; $CellContext`m = (
              3 $CellContext`x1^2 + $CellContext`a)/(2 $CellContext`y1); 
           Null, $CellContext`m = ($CellContext`y2 - \
$CellContext`y1)/($CellContext`x2 - $CellContext`x1)]; $CellContext`x3 = \
$CellContext`m^2 - $CellContext`x1 - $CellContext`x2; $CellContext`y3 = \
$CellContext`m ($CellContext`x1 - $CellContext`x3) - $CellContext`y1; \
{$CellContext`x3, $CellContext`y3}]}; Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.7000176419830046`*^9, 3.7000176644814587`*^9}, 
   3.7000178179508333`*^9, 3.700018006783852*^9, {3.7000902620403996`*^9, 
   3.7000902714468822`*^9}},ExpressionUUID->"bd42408e-ff4b-4485-b088-\
be10f28db011"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Reference", ":", "http", ":"}], "//", 
  RowBox[{
   RowBox[{
    RowBox[{"demonstrations", ".", "wolfram", ".", "com"}], "/", 
    "AddingPointsOnAnEllipticCurve"}], "/"}]}]], "Input",
 CellChangeTimes->{{3.7000184796379843`*^9, 
  3.7000185094321566`*^9}},ExpressionUUID->"734158d4-26cf-414f-95f4-\
04078eedc0cb"]
},
WindowSize->{958, 1021},
WindowMargins->{{Automatic, -7}, {Automatic, 0}},
Magnification:>1.7 Inherited,
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
Cell[1464, 33, 3773, 101, 695, "Input", "ExpressionUUID" -> \
"096b81c5-97a0-40bc-bf6e-1f6fe789d3f9"],
Cell[5240, 136, 357, 11, 56, "Input", "ExpressionUUID" -> \
"a60618c4-f9b8-416a-b5a1-6949bd9f42d0"],
Cell[5600, 149, 3116, 76, 432, "Input", "ExpressionUUID" -> \
"9399edcf-acd3-4718-a6f3-b8bf7c02ccce"],
Cell[8719, 227, 350, 10, 52, "Input", "ExpressionUUID" -> \
"faed6669-c577-4974-bd73-7e09ad3aefdf"],
Cell[CellGroupData[{
Cell[9094, 241, 3213, 81, 334, "Input", "ExpressionUUID" -> \
"f62c0ab6-0b7c-41b0-a498-a5e19a877528"],
Cell[12310, 324, 6646, 138, 1057, "Output", "ExpressionUUID" -> \
"d845333e-8fca-446b-9f2a-7e14fe361f3f"]
}, Open  ]],
Cell[CellGroupData[{
Cell[18993, 467, 2375, 65, 264, "Input", "ExpressionUUID" -> \
"f22dcc2e-67a1-4924-add1-5cc7e5949d75"],
Cell[21371, 534, 5600, 119, 1023, "Output", "ExpressionUUID" -> \
"bd42408e-ff4b-4485-b088-be10f28db011"]
}, Open  ]],
Cell[26986, 656, 350, 9, 86, "Input", "ExpressionUUID" -> \
"3339b449-a951-4b43-a0ca-0eb32d76d30c"]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature owp9vvkRSupx@BgggF8uisSm *)
