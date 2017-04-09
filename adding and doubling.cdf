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
NotebookDataLength[     24410,        622]
NotebookOptionsPosition[     23953,        592]
NotebookOutlinePosition[     24327,        608]
CellTagsIndexPosition[     24284,        605]
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
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"x1", "\[Equal]", "\[Infinity]"}], ",", 
        RowBox[{"Return", "[", "p2", "]"}]}], "]"}], ";", 
      "\[IndentingNewLine]", 
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
      RowBox[{"If", "[", 
       RowBox[{
        RowBox[{"p1", "\[Equal]", "p2"}], ",", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"y1", "\[Equal]", "0"}], ",", 
           RowBox[{"Return", "[", 
            RowBox[{"{", 
             RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}], "]"}]}], 
          "]"}], ";", "\[IndentingNewLine]", 
         RowBox[{"m", "=", 
          RowBox[{
           RowBox[{"(", 
            RowBox[{
             RowBox[{"3", " ", 
              SuperscriptBox["x1", "2"]}], "+", "a"}], ")"}], "/", 
           RowBox[{"(", 
            RowBox[{"2", " ", "y1"}], ")"}]}]}], ";"}], "\[IndentingNewLine]",
         ",", "\[IndentingNewLine]", 
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
  ";"}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.7005285395186853`*^9, 
  3.7005285493747253`*^9}},ExpressionUUID->"5cb02b4c-118f-47b0-9b06-\
9f55ec504195"],

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
     RowBox[{"a", " ", "x"}], "+", "b"}], "]"}]}], ";"}]], "Input",
 CellOpen->False,ExpressionUUID->"f9c60fe3-11d8-4148-9054-5661f94ed818"],

Cell[CellGroupData[{

Cell["Point Addition", "Subtitle",
 CellChangeTimes->{{3.7007425868194084`*^9, 
  3.7007425897802796`*^9}},ExpressionUUID->"1b2f43ca-8ee7-4697-93fd-\
867d36161cb5"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"a", "=", 
     RowBox[{"-", "3"}]}], ";", 
    RowBox[{"b", "=", 
     RowBox[{"-", "1"}]}], ";", 
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
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<x1=\>\"", ",", 
           RowBox[{"ToString", "[", "pt1", "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<x2=\>\"", ",", 
           RowBox[{"ToString", "[", "pt2", "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Green"}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<x3=\>\"", ",", 
           RowBox[{"ToString", "[", 
            RowBox[{"EcAdd", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"a", ",", "b"}], "}"}], ",", "pt1", ",", "pt2"}], 
             "]"}], "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Red"}]}], "]"}]}], "}"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x1", ",", 
     RowBox[{"-", "1.2"}], ",", 
     RowBox[{"-", "0.38"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x2", ",", 
     RowBox[{"-", "1.2"}], ",", 
     RowBox[{"-", "0.38"}]}], "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
   RowBox[{"TrackedSymbols", "\[RuleDelayed]", "True"}]}], "]"}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.7000153647455015`*^9, 3.70001550643022*^9}, {
   3.700015551882924*^9, 3.700015678457882*^9}, 3.7000157194226027`*^9, {
   3.7000159012073193`*^9, 3.700015921030243*^9}, {3.7000161909157867`*^9, 
   3.7000162857219*^9}, {3.70001674876327*^9, 3.7000167664859276`*^9}, {
   3.7000168208495617`*^9, 3.7000169468757863`*^9}, {3.7000170170641804`*^9, 
   3.700017047999462*^9}, {3.7000170900982237`*^9, 3.700017109057459*^9}, {
   3.7000171859070845`*^9, 3.7000172443440437`*^9}, 3.7000173285072956`*^9, {
   3.700017933999935*^9, 3.7000179377501807`*^9}, {3.7000901397364483`*^9, 
   3.70009020089816*^9}, {3.700742187987151*^9, 3.7007422128309364`*^9}, 
   3.7007425592562885`*^9, 3.700742652920128*^9, {3.7007426865905313`*^9, 
   3.700742688713829*^9}, {3.700742778171192*^9, 
   3.7007427869120097`*^9}},ExpressionUUID->"3bc3723f-0e37-45f2-a853-\
8cb1e31a4016"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`x1$$ = -1.2, $CellContext`x2$$ = -1.2, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`x1$$], -1.2, -0.38}, {
      Hold[$CellContext`x2$$], -1.2, -0.38}}, Typeset`size$$ = {
    522.5, {299., 259.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`x1$507632$$ = 
    0, $CellContext`x2$507633$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`x1$$ = -1.2, $CellContext`x2$$ = -1.2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`x1$$, $CellContext`x1$507632$$, 0], 
        Hold[$CellContext`x2$$, $CellContext`x2$507633$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`a = -3; $CellContext`b = -1; $CellContext`pt1 = \
{$CellContext`x1$$, 
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
          Row[{"x1=", 
            ToString[$CellContext`pt1]}], FontColor -> Blue], 
         Style[
          Row[{"x2=", 
            ToString[$CellContext`pt2]}], FontColor -> Green], 
         Style[
          Row[{"x3=", 
            ToString[
             $CellContext`EcAdd[{$CellContext`a, $CellContext`b}, \
$CellContext`pt1, $CellContext`pt2]]}], FontColor -> Red]}), 
      "Specifications" :> {{$CellContext`x1$$, -1.2, -0.38}, \
{$CellContext`x2$$, -1.2, -0.38}}, "Options" :> {TrackedSymbols :> True}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{578., {340., 347.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`a = -3, $CellContext`b = -1, \
$CellContext`pt1 = {-1.2, 0.9338094023943}, $CellContext`EcY[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`x, 
          Blank[]]] := 
       Sqrt[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b], $CellContext`pt = {-0.475, 0}, $CellContext`pt2 = {-1.2, 
        0.9338094023943}, $CellContext`PlotEcAdd[
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
 CellChangeTimes->{
  3.7007424563636036`*^9, 3.7007425096618*^9, {3.70074259473238*^9, 
   3.700742608679762*^9}, 3.700742659765626*^9, 3.7007426980521727`*^9, 
   3.700742787503729*^9, 
   3.700742838055229*^9},ExpressionUUID->"d5f57c4a-d41f-40df-a703-\
1f4314626b56"]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Point Multiplication", "Subtitle",
 CellChangeTimes->{{3.7007423524592886`*^9, 
  3.700742357782939*^9}},ExpressionUUID->"20934827-5d6f-4b94-8d48-\
6173a34b6eca"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{
    RowBox[{"a", "=", 
     RowBox[{"-", "3"}]}], ";", 
    RowBox[{"b", "=", 
     RowBox[{"-", "1"}]}], ";", 
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
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<x1=\>\"", ",", 
           RowBox[{"ToString", "[", "pt1", "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Green"}]}], "]"}], ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<x2=\>\"", ",", 
           RowBox[{"ToString", "[", 
            RowBox[{"EcAdd", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"a", ",", "b"}], "}"}], ",", "pt1", ",", "pt2"}], 
             "]"}], "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Red"}]}], "]"}]}], "}"}]}], ",", 
   RowBox[{"{", 
    RowBox[{"x1", ",", 
     RowBox[{"-", "1.2"}], ",", 
     RowBox[{"-", "0.38"}]}], "}"}], ",", 
   RowBox[{"SaveDefinitions", "\[Rule]", "True"}], ",", 
   RowBox[{"TrackedSymbols", "\[RuleDelayed]", "True"}]}], "]"}]], "Input",
 CellOpen->False,
 CellChangeTimes->{{3.70001762326422*^9, 3.7000176587844706`*^9}, 
   3.700017816718087*^9, {3.700017916930519*^9, 3.700017919679439*^9}, {
   3.7000902483370514`*^9, 3.7000902708176775`*^9}, {3.700742041215612*^9, 
   3.700742141557099*^9}, 3.700742655509266*^9, {3.7007426925808215`*^9, 
   3.700742693740684*^9}, 
   3.7007427712047205`*^9},ExpressionUUID->"b03b9ade-8770-43d1-be6b-\
0e780364e472"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`x1$$ = -1.2, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`x1$$], -1.2, -0.38}}, Typeset`size$$ = {
    500., {299., 259.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`x1$507777$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`x1$$ = -1.2}, 
      "ControllerVariables" :> {
        Hold[$CellContext`x1$$, $CellContext`x1$507777$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`a = -3; $CellContext`b = -1; $CellContext`pt1 = \
{$CellContext`x1$$, 
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
          Row[{"x1=", 
            ToString[$CellContext`pt1]}], FontColor -> Green], 
         Style[
          Row[{"x2=", 
            ToString[
             $CellContext`EcAdd[{$CellContext`a, $CellContext`b}, \
$CellContext`pt1, $CellContext`pt2]]}], FontColor -> Red]}), 
      "Specifications" :> {{$CellContext`x1$$, -1.2, -0.38}}, 
      "Options" :> {TrackedSymbols :> True}, "DefaultOptions" :> {}],
     ImageSizeCache->{555., {326., 333.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>({$CellContext`a = -3, $CellContext`b = -1, \
$CellContext`pt1 = {-1.2, 0.9338094023943}, $CellContext`EcY[{
          Pattern[$CellContext`a, 
           Blank[]], 
          Pattern[$CellContext`b, 
           Blank[]]}, 
         Pattern[$CellContext`x, 
          Blank[]]] := 
       Sqrt[$CellContext`x^3 + $CellContext`a $CellContext`x + \
$CellContext`b], $CellContext`pt2 = {-1.2, 
        0.9338094023943}, $CellContext`PlotEcAdd[
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
   3.7000902714468822`*^9}, 3.700741797095296*^9, {3.700742062472378*^9, 
   3.7007420881494436`*^9}, 3.7007421641428757`*^9, 3.700742456480431*^9, 
   3.700742509781618*^9, 3.700742620612455*^9, 3.700742657843192*^9, 
   3.700742695353677*^9, 3.700742774598378*^9, 
   3.7007428381264315`*^9},ExpressionUUID->"99d7ce09-5ef6-43a0-8174-\
5dedb11ae42b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Reference", ":", "http", ":"}], "//", 
  RowBox[{
   RowBox[{
    RowBox[{"demonstrations", ".", "wolfram", ".", "com"}], "/", 
    "AddingPointsOnAnEllipticCurve"}], "/"}]}]], "Input",
 CellChangeTimes->{{3.7000184796379843`*^9, 3.7000185094321566`*^9}},
 EmphasizeSyntaxErrors->
  True,ExpressionUUID->"6323c9d6-833a-4f53-b2a2-47a880c6ce30"]
}, Open  ]]
},
WindowSize->{958, 1021},
WindowMargins->{{14, Automatic}, {Automatic, 32}},
Magnification:>1.1 Inherited,
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
Cell[1464, 33, 2769, 79, 20, "Input", "ExpressionUUID" -> \
"5cb02b4c-118f-47b0-9b06-9f55ec504195",
 CellOpen->False],
Cell[4236, 114, 373, 11, 20, "Input", "ExpressionUUID" -> \
"f9c60fe3-11d8-4148-9054-5661f94ed818",
 CellOpen->False],
Cell[CellGroupData[{
Cell[4634, 129, 164, 3, 59, "Subtitle", "ExpressionUUID" -> \
"1b2f43ca-8ee7-4697-93fd-867d36161cb5"],
Cell[CellGroupData[{
Cell[4823, 136, 3689, 93, 20, "Input", "ExpressionUUID" -> \
"3bc3723f-0e37-45f2-a853-8cb1e31a4016",
 CellOpen->False],
Cell[8515, 231, 6111, 132, 706, "Output", "ExpressionUUID" -> \
"d5f57c4a-d41f-40df-a703-1f4314626b56"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[14675, 369, 168, 3, 59, "Subtitle", "ExpressionUUID" -> \
"20934827-5d6f-4b94-8d48-6173a34b6eca"],
Cell[CellGroupData[{
Cell[14868, 376, 2772, 75, 20, "Input", "ExpressionUUID" -> \
"b03b9ade-8770-43d1-be6b-0e780364e472",
 CellOpen->False],
Cell[17643, 453, 5901, 124, 678, "Output", "ExpressionUUID" -> \
"99d7ce09-5ef6-43a0-8174-5dedb11ae42b"]
}, Open  ]],
Cell[23559, 580, 378, 9, 57, "Input", "ExpressionUUID" -> \
"6323c9d6-833a-4f53-b2a2-47a880c6ce30"]
}, Open  ]]
}
]
*)

(* NotebookSignature SxTkPCBR6mSFnA1vZSxdGidI *)
