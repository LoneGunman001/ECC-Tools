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
NotebookDataLength[     15898,        407]
NotebookOptionsPosition[     15691,        385]
NotebookOutlinePosition[     16067,        401]
CellTagsIndexPosition[     16024,        398]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
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
            SuperscriptBox["b", "2"]}]}], ",", "p"}], "]"}], "\[NotEqual]", 
        " ", "0"}], ",", 
       RowBox[{"Return", "[", "\"\<\>\"", "]"}], ",", 
       RowBox[{"Return", "[", 
        RowBox[{"Style", "[", 
         RowBox[{
         "\"\<4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + 27\!\(\*SuperscriptBox[\
\(b\), \(2\)]\) mod p cannot be 0\>\"", ",", 
          RowBox[{"FontColor", "\[Rule]", "Red"}], ",", 
          RowBox[{"FontWeight", "\[Rule]", "Bold"}]}], "]"}], "]"}]}], 
      "]"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
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
       RowBox[{"1", "/", "2"}], ",", "p"}], "]"}]}]}], "\[IndentingNewLine]", 
   "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Panel", "[", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x", "=", "3"}], ",", 
      RowBox[{"a", "=", "2"}], ",", 
      RowBox[{"b", "=", "3"}], ",", 
      RowBox[{"p", "=", "7"}]}], "}"}], ",", 
    RowBox[{"Column", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<Find value of y given x on Ep(a,b)\>\"", ",", 
        "\"\<\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p\>\"", ",", "\[IndentingNewLine]", 
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
        "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
        "\"\<Input value for x-coordinate\>\"", ",", "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<x=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "x", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
        "\[IndentingNewLine]", "\"\<Input values for curve parameters\>\"", 
        ",", "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<a=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "a", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}], ",", 
           "\"\<   b=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "b", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}], ",", 
           "\"\<   p=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "p", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "[", 
         RowBox[{"checkAB", "[", 
          RowBox[{"a", ",", "b", ",", "p"}], "]"}], "]"}], ",", 
        "\[IndentingNewLine]", "\"\<Result\>\"", ",", "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<y = \>\"", ",", " ", 
           RowBox[{"Style", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", 
              RowBox[{"findY", "[", 
               RowBox[{"x", ",", "a", ",", "b", ",", "p"}], "]"}], "]"}], ",", 
             RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], 
         "]"}]}], "}"}], ",", "Center"}], "]"}]}], "]"}], "]"}]}], "Input",
 CellOpen->False,
 InitializationCell->True,
 CellChangeTimes->{{3.7007269162768297`*^9, 
  3.700726923245351*^9}},ExpressionUUID->"600ac00b-6fdd-4ccc-86f1-\
d52083679cad"],

Cell[CellGroupData[{

Cell["Find value of y given x on Ep(a,b)", "Subtitle",
 CellChangeTimes->{
  3.7007297867859297`*^9},ExpressionUUID->"4e8dd757-13ca-4aef-908d-\
1c25a84b9f01"],

Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`x$$ = 3, $CellContext`a$$ = 
   2, $CellContext`b$$ = 3, $CellContext`p$$ = 7}, 
   TagBox[GridBox[{
      {"\<\"Find value of y given x on Ep(a,b)\"\>"},
      {"\<\"\\!\\(\\*SuperscriptBox[\\(y\\), \
\\(2\\)]\\)=\\!\\(\\*SuperscriptBox[\\(x\\), \\(3\\)]\\)+ax+b mod p\"\>"},
      {"\<\"Please ensure that 4\\!\\(\\*SuperscriptBox[\\(a\\), \\(3\\)]\\) \
+ 27\\!\\(\\*SuperscriptBox[\\(b\\), \\(2\\)]\\) mod p \[NotEqual] 0\"\>"},
      {"\<\"\"\>"},
      {"\<\"Input value for x-coordinate\"\>"},
      {
       TemplateBox[{"\"x=\"",InputFieldBox[
          Dynamic[$CellContext`x$$], Number, FieldSize -> Tiny]},
        "RowDefault"]},
      {"\<\"\"\>"},
      {"\<\"Input values for curve parameters\"\>"},
      {
       TemplateBox[{"\"a=\"",InputFieldBox[
          Dynamic[$CellContext`a$$], Number, FieldSize -> Tiny],"\"   b=\"",
         InputFieldBox[
          Dynamic[$CellContext`b$$], Number, FieldSize -> Tiny],"\"   p=\"",
         InputFieldBox[
          Dynamic[$CellContext`p$$], Number, FieldSize -> Tiny]},
        "RowDefault"]},
      {
       DynamicBox[ToBoxes[
         $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], StandardForm],
        ImageSizeCache->{0., {0., 9.}}]},
      {"\<\"Result\"\>"},
      {
       TemplateBox[{"\"y = \"",StyleBox[
          DynamicBox[
           ToBoxes[
            $CellContext`findY[$CellContext`x$$, $CellContext`a$$, \
$CellContext`b$$, $CellContext`p$$], StandardForm]], FontColor -> 
          RGBColor[0, 0, 1], StripOnInput -> False]},
        "RowDefault"]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Center}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output",
 CellChangeTimes->{3.700726924487527*^9, 3.700729447229668*^9, 
  3.700729650691063*^9},ExpressionUUID->"18bb8fab-890e-46a4-81f1-\
8db8b0ff6098"],

Cell[BoxData[{
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
       RowBox[{"x", ",", "y"}], "}"}], "=", "P"}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"Mod", "[", 
       RowBox[{
        RowBox[{
         SuperscriptBox["x", "3"], "+", 
         RowBox[{"a", " ", "x"}], "+", "b", "-", 
         SuperscriptBox["y", "2"]}], ",", "p"}], "]"}], "\[Equal]", "0"}]}]}],
    "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
 RowBox[{"Panel", "[", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x", "=", "3"}], ",", 
      RowBox[{"y", "=", "1"}], ",", 
      RowBox[{"a", "=", "2"}], ",", 
      RowBox[{"b", "=", "3"}], ",", 
      RowBox[{"p", "=", "7"}]}], "}"}], ",", 
    RowBox[{"Column", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<Check whether the point P is on Ep(a,b)\>\"", ",", 
        "\"\<\!\(\*SuperscriptBox[\(y\), \(2\)]\)=\!\(\*SuperscriptBox[\(x\), \
\(3\)]\)+ax+b mod p\>\"", ",", "\[IndentingNewLine]", 
        "\"\<Please ensure that 4\!\(\*SuperscriptBox[\(a\), \(3\)]\) + \
27\!\(\*SuperscriptBox[\(b\), \(2\)]\) mod p \[NotEqual] 0\>\"", ",", 
        "\[IndentingNewLine]", "\"\<\>\"", ",", "\[IndentingNewLine]", 
        "\"\<Input value for x,y-coordinates of point P\>\"", ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<x=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "x", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}], ",", 
           "\"\<     y=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "y", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", "\"\<\>\"", ",", 
        "\[IndentingNewLine]", "\"\<Input values for curve parameters\>\"", 
        ",", "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<a=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "a", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}], ",", 
           "\"\<   b=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "b", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}], ",", 
           "\"\<   p=\>\"", ",", 
           RowBox[{"InputField", "[", 
            RowBox[{
             RowBox[{"Dynamic", "[", "p", "]"}], ",", "Number", ",", 
             RowBox[{"FieldSize", "\[Rule]", "Tiny"}]}], "]"}]}], "}"}], 
         "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "[", 
         RowBox[{"checkAB", "[", 
          RowBox[{"a", ",", "b", ",", "p"}], "]"}], "]"}], ",", 
        "\[IndentingNewLine]", "\"\<Result\>\"", ",", "\[IndentingNewLine]", 
        RowBox[{"Dynamic", "[", 
         RowBox[{"Row", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"ToString", "[", 
             RowBox[{"{", 
              RowBox[{"x", ",", "y"}], "}"}], "]"}], ",", 
            "\"\< is on the curve  \!\(\*SuperscriptBox[\(y\), \
\(2\)]\)=\!\(\*SuperscriptBox[\(x\), \(3\)]\)+ax+b mod p: \>\"", ",", " ", 
            RowBox[{"Style", "[", 
             RowBox[{
              RowBox[{"Dynamic", "[", 
               RowBox[{"checkPoint", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{"x", ",", "y"}], "}"}], ",", "a", ",", "b", ",", 
                 "p"}], "]"}], "]"}], ",", 
              RowBox[{"FontColor", "\[Rule]", "Blue"}]}], "]"}]}], "}"}], 
          "]"}], "]"}]}], "}"}], ",", "Center"}], "]"}]}], "]"}], 
  "]"}]}], "Input",
 CellOpen->False,
 InitializationCell->True,
 CellChangeTimes->{{3.700726983853674*^9, 3.700726983855178*^9}, 
   3.700727287443483*^9, {3.7007274188631124`*^9, 3.700727459707056*^9}, {
   3.700727492646251*^9, 3.7007275694294405`*^9}, {3.700727666576595*^9, 
   3.700727695565476*^9}, {3.700727815415257*^9, 3.7007280680362406`*^9}, {
   3.700728140724289*^9, 3.700728150746546*^9}, 3.700728217775794*^9, 
   3.70072963689795*^9, {3.700729668455228*^9, 
   3.70072966916891*^9}},ExpressionUUID->"d9687137-819d-4e0c-9a3f-\
6bf2121212e1"]
}, Open  ]],

Cell[CellGroupData[{

Cell["Check whether the point P is on Ep(a,b)", "Subtitle",
 CellChangeTimes->{
  3.7007297780248146`*^9},ExpressionUUID->"2caa263b-47db-48ff-8b74-\
1b86bdaab5e0"],

Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`x$$ = 3, $CellContext`y$$ = 
   1, $CellContext`a$$ = 2, $CellContext`b$$ = 3, $CellContext`p$$ = 7}, 
   TagBox[GridBox[{
      {"\<\"Check whether the point P is on Ep(a,b)\"\>"},
      {"\<\"\\!\\(\\*SuperscriptBox[\\(y\\), \
\\(2\\)]\\)=\\!\\(\\*SuperscriptBox[\\(x\\), \\(3\\)]\\)+ax+b mod p\"\>"},
      {"\<\"Please ensure that 4\\!\\(\\*SuperscriptBox[\\(a\\), \\(3\\)]\\) \
+ 27\\!\\(\\*SuperscriptBox[\\(b\\), \\(2\\)]\\) mod p \[NotEqual] 0\"\>"},
      {"\<\"\"\>"},
      {"\<\"Input value for x,y-coordinates of point P\"\>"},
      {
       TemplateBox[{"\"x=\"",InputFieldBox[
          Dynamic[$CellContext`x$$], Number, FieldSize -> Tiny],"\"     y=\"",
         InputFieldBox[
          Dynamic[$CellContext`y$$], Number, FieldSize -> Tiny]},
        "RowDefault"]},
      {"\<\"\"\>"},
      {"\<\"Input values for curve parameters\"\>"},
      {
       TemplateBox[{"\"a=\"",InputFieldBox[
          Dynamic[$CellContext`a$$], Number, FieldSize -> Tiny],"\"   b=\"",
         InputFieldBox[
          Dynamic[$CellContext`b$$], Number, FieldSize -> Tiny],"\"   p=\"",
         InputFieldBox[
          Dynamic[$CellContext`p$$], Number, FieldSize -> Tiny]},
        "RowDefault"]},
      {
       DynamicBox[ToBoxes[
         $CellContext`checkAB[$CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], StandardForm],
        ImageSizeCache->{0., {0., 9.}}]},
      {"\<\"Result\"\>"},
      {
       DynamicBox[ToBoxes[
         Row[{
           ToString[{$CellContext`x$$, $CellContext`y$$}], 
           " is on the curve  \!\(\*SuperscriptBox[\(y\), \
\(2\)]\)=\!\(\*SuperscriptBox[\(x\), \(3\)]\)+ax+b mod p: ", 
           Style[
            Dynamic[
             $CellContext`checkPoint[{$CellContext`x$$, $CellContext`y$$}, \
$CellContext`a$$, $CellContext`b$$, $CellContext`p$$]], FontColor -> Blue]}], 
         StandardForm],
        ImageSizeCache->{353., {4., 17.}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Center}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output",
 CellChangeTimes->{
  3.700727460409161*^9, {3.700727939942436*^9, 3.700728068667737*^9}, 
   3.7007281464900346`*^9, 3.7007282184210114`*^9, {3.700729650792857*^9, 
   3.700729670761357*^9}},ExpressionUUID->"d9e8eef8-a543-4a0f-8889-\
24b70867846c"],

Cell[BoxData[""], "Input",
 CellChangeTimes->{{3.7007272983455987`*^9, 3.7007272998005247`*^9}, 
   3.7007296271486*^9},ExpressionUUID->"a98ab75a-7ae1-4458-aadf-bf4d64d5d0e6"]
}, Open  ]]
},
WindowSize->{1167, 1021},
WindowMargins->{{357, Automatic}, {Automatic, 46}},
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
Cell[1464, 33, 4538, 112, 26, "Input", "ExpressionUUID" -> \
"600ac00b-6fdd-4ccc-86f1-d52083679cad",
 CellOpen->False,
 InitializationCell->True],
Cell[CellGroupData[{
Cell[6027, 149, 158, 3, 78, "Subtitle", "ExpressionUUID" -> \
"4e8dd757-13ca-4aef-908d-1c25a84b9f01"],
Cell[6188, 154, 1996, 48, 361, "Output", "ExpressionUUID" -> \
"18bb8fab-890e-46a4-81f1-8db8b0ff6098"],
Cell[8187, 204, 4672, 108, 26, "Input", "ExpressionUUID" -> \
"d9687137-819d-4e0c-9a3f-6bf2121212e1",
 CellOpen->False,
 InitializationCell->True]
}, Open  ]],
Cell[CellGroupData[{
Cell[12896, 317, 163, 3, 78, "Subtitle", "ExpressionUUID" -> \
"2caa263b-47db-48ff-8b74-1b86bdaab5e0"],
Cell[13062, 322, 2435, 56, 365, "Output", "ExpressionUUID" -> \
"d9e8eef8-a543-4a0f-8889-24b70867846c"],
Cell[15500, 380, 175, 2, 43, "Input", "ExpressionUUID" -> \
"a98ab75a-7ae1-4458-aadf-bf4d64d5d0e6"]
}, Open  ]]
}
]
*)

(* NotebookSignature mwpAs0u0ii7yyDgbN8zHDllB *)
