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
NotebookDataLength[     13471,        327]
NotebookOptionsPosition[     13767,        317]
NotebookOutlinePosition[     14141,        333]
CellTagsIndexPosition[     14098,        330]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Simple Power Analysis Attack", "Subtitle",
 CellChangeTimes->{{3.7008149246499853`*^9, 
  3.7008149267724714`*^9}},ExpressionUUID->"4d4be65d-2503-4a23-be16-\
6271521783d2"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Row", "[", 
    RowBox[{"{", 
     RowBox[{"\"\<k = \>\"", ",", 
      RowBox[{"Style", "[", 
       RowBox[{
        RowBox[{"processOrder", "[", "string", "]"}], ",", 
        RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], "]"}], 
   ",", 
   RowBox[{"Column", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Style", "[", 
        RowBox[{"\"\<Simple Power Analysis\>\"", ",", 
         RowBox[{"FontSize", "\[Rule]", "14"}], ",", 
         RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], ",", 
       RowBox[{"Style", "[", 
        RowBox[{
        "\"\<Press the respective button to input order of operations\>\"", 
         ",", 
         RowBox[{"FontColor", "\[Rule]", "Gray"}]}], "]"}], ",", 
       RowBox[{"Row", "[", "\[IndentingNewLine]", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Style", "[", 
           RowBox[{"\"\<Order of operations is \>\"", ",", 
            RowBox[{"FontSize", "\[Rule]", "14"}]}], "]"}], ",", 
          RowBox[{"Dynamic", "[", 
           RowBox[{"Style", "[", 
            RowBox[{"string", ",", 
             RowBox[{"FontColor", "\[Rule]", "Blue"}], ",", 
             RowBox[{"FontSize", "\[Rule]", "14"}]}], "]"}], "]"}]}], "}"}], 
        "\[IndentingNewLine]", "]"}], ",", 
       RowBox[{"Dynamic", "[", 
        RowBox[{"checkString", "[", "string", "]"}], "]"}], ",", 
       RowBox[{"Row", "[", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Button", "[", 
           RowBox[{"\"\<Addition\>\"", ",", 
            RowBox[{"string", "=", 
             RowBox[{"StringJoin", "[", 
              RowBox[{"string", ",", "\"\<A\>\""}], "]"}]}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
          RowBox[{"Button", "[", 
           RowBox[{"\"\<Doubling\>\"", ",", 
            RowBox[{"string", "=", 
             RowBox[{"StringJoin", "[", 
              RowBox[{"string", ",", "\"\<D\>\""}], "]"}]}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Large"}]}], "]"}], ",", 
          "\"\<      \>\"", ",", 
          RowBox[{"Button", "[", 
           RowBox[{"\"\<Reset\>\"", ",", 
            RowBox[{"string", "=", "\"\<\>\""}], ",", 
            RowBox[{"ImageSize", "\[Rule]", "Small"}]}], "]"}]}], "}"}], 
        "]"}]}], "}"}], ",", "Center"}], "]"}], ",", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"string", "=", "\"\<ADA\>\""}], ";", 
      RowBox[{
       RowBox[{"processOrder", "[", "s0_", "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
           RowBox[{"s", "=", 
            RowBox[{"Characters", "[", "s0", "]"}]}], ",", 
           RowBox[{"k", "=", "0"}], ",", 
           RowBox[{"powerof2", "=", "2"}]}], "}"}], ",", 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"While", "[", 
           RowBox[{
            RowBox[{"s", "\[NotEqual]", 
             RowBox[{"{", "}"}]}], ",", "\[IndentingNewLine]", 
            RowBox[{"If", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
               "s", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}], 
               "\[Equal]", "\"\<A\>\""}], ",", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{"k", "\[Equal]", "0"}], ",", "\[IndentingNewLine]", 
                RowBox[{
                 RowBox[{"k", "=", "1"}], ";", 
                 RowBox[{"s", "=", 
                  RowBox[{"Delete", "[", 
                   RowBox[{"s", ",", "1"}], "]"}]}]}], ",", 
                RowBox[{"Return", "[", "\[Infinity]", "]"}]}], "]"}], ",", 
              "\[IndentingNewLine]", 
              RowBox[{"If", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"Length", "[", "s", "]"}], ">", "1"}], ",", 
                "\[IndentingNewLine]", 
                RowBox[{"If", "[", 
                 RowBox[{
                  RowBox[{
                   RowBox[{
                   "s", "\[LeftDoubleBracket]", "2", 
                    "\[RightDoubleBracket]"}], "\[Equal]", "\"\<D\>\""}], ",",
                   "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"powerof2", "*=", "2"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"s", "=", 
                    RowBox[{"Delete", "[", 
                    RowBox[{"s", ",", "1"}], "]"}]}]}], ",", 
                  "\[IndentingNewLine]", 
                  RowBox[{
                   RowBox[{"k", "+=", "powerof2"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"powerof2", "*=", "2"}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"s", "=", 
                    RowBox[{"Delete", "[", 
                    RowBox[{"s", ",", "1"}], "]"}]}], ";", 
                   "\[IndentingNewLine]", 
                   RowBox[{"s", "=", 
                    RowBox[{"Delete", "[", 
                    RowBox[{"s", ",", "1"}], "]"}]}]}]}], 
                 "\[IndentingNewLine]", "]"}], ",", 
                RowBox[{"s", "=", 
                 RowBox[{"Delete", "[", 
                  RowBox[{"s", ",", "1"}], "]"}]}]}], "]"}]}], "]"}]}], 
           "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", "k"}]}], 
        "\[IndentingNewLine]", "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"checkString", "[", "s_", "]"}], ":=", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"StringMatchQ", "[", 
            RowBox[{"s", ",", "\"\<*AA*\>\""}], "]"}], ",", 
           RowBox[{"Return", "[", 
            RowBox[{"Style", "[", 
             RowBox[{
             "\"\<There cannot be 2 consequtive addition operations\>\"", ",", 
              RowBox[{"FontColor", "\[Rule]", "Red"}], ",", 
              RowBox[{"FontSize", "\[Rule]", "8"}]}], "]"}], "]"}], ",", 
           RowBox[{"Return", "[", "\"\<\>\"", "]"}]}], "]"}]}], "]"}]}]}], 
     ")"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.70081340319759*^9, 3.7008134393721266`*^9}, {
  3.700813472592081*^9, 3.700813479185003*^9}, {3.7008136084743385`*^9, 
  3.700813660566298*^9}, {3.700813711532585*^9, 3.7008139489750757`*^9}, {
  3.7008140789363365`*^9, 3.700814090388341*^9}, {3.700814136530614*^9, 
  3.7008141518436327`*^9}, {3.7008142158028154`*^9, 3.7008142252249928`*^9}, {
  3.700814275194231*^9, 3.700814289658675*^9}, {3.70081433868786*^9, 
  3.7008146583549557`*^9}, {3.7008146986767397`*^9, 3.700814747228685*^9}, {
  3.7008147787199354`*^9, 3.7008148628945894`*^9}, {3.700814953435902*^9, 
  3.700814956615588*^9}},ExpressionUUID->"5e46d8ba-6b56-48f1-a1dc-\
3fe3793748f7"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Column[{
         Style["Simple Power Analysis", FontSize -> 14, FontWeight -> Bold], 
         Style[
         "Press the respective button to input order of operations", 
          FontColor -> GrayLevel[0.5]], 
         Row[{
           Style["Order of operations is ", FontSize -> 14], 
           Dynamic[
            Style[$CellContext`string, FontColor -> Blue, FontSize -> 14]]}], 
         Dynamic[
          $CellContext`checkString[$CellContext`string]], 
         Row[{
           Button[
           "Addition", $CellContext`string = 
            StringJoin[$CellContext`string, "A"], ImageSize -> Large], 
           Button[
           "Doubling", $CellContext`string = 
            StringJoin[$CellContext`string, "D"], ImageSize -> Large], 
           "      ", 
           Button["Reset", $CellContext`string = "", ImageSize -> Small]}]}, 
        Center]], Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    56., {1., 14.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Row[{"k = ", 
         Style[
          $CellContext`processOrder[$CellContext`string], FontColor -> 
          Blue]}], "Specifications" :> {
        Column[{
          Style["Simple Power Analysis", FontSize -> 14, FontWeight -> Bold], 
          Style[
          "Press the respective button to input order of operations", 
           FontColor -> GrayLevel[0.5]], 
          Row[{
            Style["Order of operations is ", FontSize -> 14], 
            Dynamic[
             Style[$CellContext`string, FontColor -> Blue, FontSize -> 14]]}], 
          Dynamic[
           $CellContext`checkString[$CellContext`string]], 
          Row[{
            Button[
            "Addition", $CellContext`string = 
             StringJoin[$CellContext`string, "A"], ImageSize -> Large], 
            Button[
            "Doubling", $CellContext`string = 
             StringJoin[$CellContext`string, "D"], ImageSize -> Large], 
            "      ", 
            Button["Reset", $CellContext`string = "", ImageSize -> Small]}]}, 
         Center]}, "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{468., {128., 137.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`string = "ADA"; $CellContext`processOrder[
         Pattern[$CellContext`s0, 
          Blank[]]] := 
       Module[{$CellContext`s = Characters[$CellContext`s0], $CellContext`k = 
          0, $CellContext`powerof2 = 2}, While[$CellContext`s != {}, 
           If[Part[$CellContext`s, 1] == "A", 
            
            If[$CellContext`k == 
             0, $CellContext`k = 1; $CellContext`s = 
              Delete[$CellContext`s, 1], 
             Return[Infinity]], 
            If[Length[$CellContext`s] > 1, 
             If[
             Part[$CellContext`s, 2] == "D", 
              TimesBy[$CellContext`powerof2, 2]; $CellContext`s = 
               Delete[$CellContext`s, 1], 
              AddTo[$CellContext`k, $CellContext`powerof2]; 
              TimesBy[$CellContext`powerof2, 2]; $CellContext`s = 
               Delete[$CellContext`s, 1]; $CellContext`s = 
               Delete[$CellContext`s, 1]], $CellContext`s = 
             Delete[$CellContext`s, 
               1]]]]; $CellContext`k]; $CellContext`checkString[
         Pattern[$CellContext`s, 
          Blank[]]] := Module[{}, 
         If[
          StringMatchQ[$CellContext`s, "*AA*"], 
          Return[
           Style[
           "There cannot be 2 consequtive addition operations", FontColor -> 
            Red, FontSize -> 8]], 
          Return[""]]]); Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.7008137129301205`*^9, 3.700813741292961*^9}, {
   3.700813774268158*^9, 3.7008138434259768`*^9}, 3.7008139046741357`*^9, 
   3.700813949446252*^9, 3.7008141836369843`*^9, 3.7008142904722967`*^9, 
   3.7008145653460217`*^9, {3.700814607624466*^9, 3.7008146216930723`*^9}, 
   3.7008146619335613`*^9, {3.7008147009453864`*^9, 3.700814747768106*^9}, {
   3.700814780642989*^9, 3.700814809484943*^9}, {3.700814840374657*^9, 
   3.7008148642467012`*^9}, 
   3.7008149572060394`*^9},ExpressionUUID->"06b32f1a-1422-4316-824f-\
0ac4abd744e1"]
}, Open  ]]
}, Open  ]]
},
WindowSize->{872, 815},
WindowMargins->{{495, Automatic}, {71, Automatic}},
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
Cell[1486, 35, 178, 3, 84, "Subtitle", "ExpressionUUID" -> \
"4d4be65d-2503-4a23-be16-6271521783d2"],
Cell[CellGroupData[{
Cell[1689, 42, 6865, 158, 1173, "Input", "ExpressionUUID" -> \
"5e46d8ba-6b56-48f1-a1dc-3fe3793748f7"],
Cell[8557, 202, 5182, 111, 290, "Output", "ExpressionUUID" -> \
"06b32f1a-1422-4316-824f-0ac4abd744e1"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* NotebookSignature DuTvaVLRJFAkuAwz@AYqwJfE *)
