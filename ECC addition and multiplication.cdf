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
NotebookDataLength[     27460,        677]
NotebookOptionsPosition[     27545,        663]
NotebookOutlinePosition[     27918,        679]
CellTagsIndexPosition[     27875,        676]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[{
 RowBox[{"On", "[", "Assert", "]"}], "\[IndentingNewLine]", 
 RowBox[{
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
       RowBox[{"n", "\[NotEqual]", "0"}], "]"}], ";", "\[IndentingNewLine]", 
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
            "rpair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
            "/", 
            RowBox[{
            "rpair", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
            "]"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"rpair", "=", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
             "rpair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
             "-", 
             RowBox[{"q", "*", 
              RowBox[{
              "rpair", "\[LeftDoubleBracket]", "1", 
               "\[RightDoubleBracket]"}]}]}], ",", 
            RowBox[{
            "rpair", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
            "}"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"spair", "=", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
             "spair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
             "-", 
             RowBox[{"q", "*", 
              RowBox[{
              "spair", "\[LeftDoubleBracket]", "1", 
               "\[RightDoubleBracket]"}]}]}], ",", 
            RowBox[{
            "spair", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
            "}"}]}], ";", "\[IndentingNewLine]", 
         RowBox[{"tpair", "=", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{
             RowBox[{
             "tpair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], 
             "-", 
             RowBox[{"q", "*", 
              RowBox[{
              "tpair", "\[LeftDoubleBracket]", "1", 
               "\[RightDoubleBracket]"}]}]}], ",", 
            RowBox[{
            "tpair", "\[LeftDoubleBracket]", "1", "\[RightDoubleBracket]"}]}],
            "}"}]}]}]}], "]"}], ";", "\[IndentingNewLine]", 
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
            "spair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}]}],
            ")"}], ",", "p"}], "]"}], "==", "1"}], "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Mod", "[", 
       RowBox[{
        RowBox[{
        "spair", "\[LeftDoubleBracket]", "2", "\[RightDoubleBracket]"}], ",", 
        "p"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}], ";", 
  RowBox[{
   RowBox[{"eccAdd", "[", 
    RowBox[{"p1_", ",", "p2_", ",", "a_", ",", "b_", ",", "order_"}], "]"}], ":=", 
   RowBox[{"Module", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
      "x1", ",", "x2", ",", "x3", ",", "y1", ",", "y2", ",", "y3", ",", "m"}],
       "}"}], ",", "\[IndentingNewLine]", 
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
               RowBox[{"2", "y1"}], ",", "order"}], "]"}]}], ",", "order"}], 
           "]"}]}]}], "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
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
            "order"}], "]"}]}], ";"}]}], "]"}], ";", "\[IndentingNewLine]", 
      RowBox[{"x3", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{
          SuperscriptBox["m", "2"], "-", "x1", "-", "x2"}], ",", "order"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"y3", "=", 
       RowBox[{"Mod", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"m", 
           RowBox[{"(", 
            RowBox[{"x1", "-", "x3"}], ")"}]}], "-", "y1"}], ",", "order"}], 
        "]"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"{", 
       RowBox[{"x3", ",", "y3"}], "}"}]}]}], "\[IndentingNewLine]", "]"}]}], 
  ";", 
  RowBox[{
   RowBox[{"eccMult", "[", 
    RowBox[{"k_", ",", "P_", ",", "a_", ",", "b_", ",", "order_"}], "]"}], ":=", 
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
              RowBox[{"Q", ",", "Ptmp", ",", "a", ",", "b", ",", "order"}], 
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
              RowBox[{"Ptmp", ",", "Ptmp", ",", "a", ",", "b", ",", "order"}],
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
    "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.7002747478431816`*^9, 3.7002747579902234`*^9}, {
   3.700275189904924*^9, 3.7002755094691496`*^9}, {3.7002756178265715`*^9, 
   3.700275724744452*^9}, {3.7002757709606776`*^9, 3.7002758294457383`*^9}, {
   3.7002758622918177`*^9, 3.7002758819509783`*^9}, {3.7002781301174507`*^9, 
   3.7002781892754016`*^9}, {3.7002782814846115`*^9, 3.700278308406478*^9}, {
   3.700278353024063*^9, 3.7002783586304655`*^9}, {3.700278390886033*^9, 
   3.700278436760296*^9}, {3.7002797641755247`*^9, 3.700279791199234*^9}, {
   3.7002798352318363`*^9, 3.700279857114198*^9}, {3.7002804205908318`*^9, 
   3.7002804220649347`*^9}, {3.7002804547166433`*^9, 3.700280456512724*^9}, {
   3.7002805450527763`*^9, 3.700280559291151*^9}, {3.700280643013583*^9, 
   3.7002806555505295`*^9}, {3.700280686651428*^9, 3.700280723170021*^9}, {
   3.7002807581797194`*^9, 3.7002808724644375`*^9}, {3.7002810242025814`*^9, 
   3.70028104230394*^9}, {3.7002810817023225`*^9, 3.7002812045697803`*^9}, {
   3.700281496592496*^9, 3.7002816885741377`*^9}, {3.7002817260630045`*^9, 
   3.7002817741465282`*^9}, {3.7002818083918867`*^9, 3.700281848918288*^9}, {
   3.700281881947879*^9, 3.7002819612790704`*^9}, {3.700282009794407*^9, 
   3.700282095499147*^9}, {3.7002821271517143`*^9, 3.70028216570004*^9}, {
   3.7002822268461285`*^9, 3.700282286115185*^9}, 3.700284430495963*^9, {
   3.7002853148215327`*^9, 3.700285317531138*^9}, {3.7002856492208385`*^9, 
   3.700285675574602*^9}, {3.70028593423081*^9, 3.7002859371886773`*^9}, 
   3.70028698081794*^9, {3.7002870315889845`*^9, 3.7002870341699057`*^9}, {
   3.700287073652311*^9, 3.7002870809982624`*^9}, {3.7002876045790925`*^9, 
   3.7002876495459356`*^9}, {3.7002877052544184`*^9, 
   3.7002877221163855`*^9}, {3.70028792818758*^9, 3.7002879735454645`*^9}, {
   3.7002880569158287`*^9, 3.700288069971569*^9}, {3.7002882318611465`*^9, 
   3.700288244913683*^9}, {3.7002885313042116`*^9, 3.7002885440819016`*^9}, {
   3.700288712520796*^9, 3.700288734828684*^9}, {3.7002887667879324`*^9, 
   3.7002888824545236`*^9}, {3.7002889397402415`*^9, 3.7002889587709*^9}, {
   3.7002889921222305`*^9, 3.7002889932569904`*^9}, {3.7002890784626245`*^9, 
   3.7002891057797327`*^9}, {3.7002891930363603`*^9, 
   3.7002892239889507`*^9}, {3.7002892875867033`*^9, 
   3.7002893362329507`*^9}, {3.7002893867992287`*^9, 
   3.7002894009339075`*^9}, {3.7002895456345453`*^9, 3.700289565162272*^9}, {
   3.7002896028870926`*^9, 3.7002896501116223`*^9}, {3.7002897138272576`*^9, 
   3.7002897587348213`*^9}, {3.700289917053938*^9, 3.7002899236967263`*^9}, {
   3.700290040267887*^9, 3.7002900740087185`*^9}, {3.70029016793791*^9, 
   3.7002901689732347`*^9}, {3.700290203473916*^9, 3.70029023050812*^9}, {
   3.7002903146949553`*^9, 3.700290374563498*^9}, {3.700290416080052*^9, 
   3.7002904216760893`*^9}, 3.700290525219751*^9, {3.70029573960693*^9, 
   3.700295741044244*^9}, {3.700297165580147*^9, 3.7002971777617664`*^9}, {
   3.700297655847565*^9, 3.700297763560805*^9}, 3.700300745852416*^9, {
   3.700388849125943*^9, 3.700388868301403*^9}, 3.7003897598780346`*^9, {
   3.700424583990774*^9, 3.7004246127386246`*^9}, {3.700424770050282*^9, 
   3.7004247714021864`*^9}, {3.7004248578543873`*^9, 
   3.7004248700083694`*^9}, {3.7004250996438313`*^9, 3.700425133453104*^9}, {
   3.7004251927623987`*^9, 3.7004252197481995`*^9}, {3.700451893694397*^9, 
   3.700451923619459*^9}, {3.700452671001738*^9, 3.700452697754509*^9}, {
   3.700452796355561*^9, 3.70045283340748*^9}, 
   3.7004688106549063`*^9},ExpressionUUID->"79371eb9-da00-4832-8fca-\
9e3ec34dde9b"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Panel", "[", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x1", "=", "2"}], ",", 
      RowBox[{"y1", "=", "3"}], ",", 
      RowBox[{"x2", "=", "4"}], ",", 
      RowBox[{"y2", "=", "5"}], ",", 
      RowBox[{"a", "=", "6"}], ",", 
      RowBox[{"b", "=", "7"}], ",", 
      RowBox[{"p", "=", "7"}]}], "}"}], ",", 
    RowBox[{"Column", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\"\<Point Addition on Ep(a,b)\>\"", ",", 
        RowBox[{"Grid", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\"\<x1=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "x1", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\<y1=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "y1", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"\"\<x2=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "x2", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\<y2=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "y2", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\< a=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "a", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\< b=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "b", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\< p=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "p", "]"}], ",", "Number"}], "]"}]}], 
            "}"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<{x3,y3} = \>\"", ",", 
           RowBox[{"Dynamic", "[", 
            RowBox[{"eccAdd", "[", 
             RowBox[{
              RowBox[{"{", 
               RowBox[{"x1", ",", "y1"}], "}"}], ",", 
              RowBox[{"{", 
               RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", 
              "p"}], "]"}], "]"}]}], "}"}], "]"}]}], "}"}], ",", "Center"}], 
     "]"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.7002907177948275`*^9, 3.7002907363043528`*^9}, {
  3.700290790485382*^9, 3.700290799616361*^9}, {3.700290862622643*^9, 
  3.7002909055991397`*^9}, {3.7002910764118986`*^9, 3.7002911429573336`*^9}, {
  3.7002911749805083`*^9, 3.700291180275919*^9}, {3.7002913291477985`*^9, 
  3.700291373829672*^9}, {3.700291408013503*^9, 3.7002915118187323`*^9}, {
  3.700291585886466*^9, 3.700291615817371*^9}, {3.7002925198619986`*^9, 
  3.700292536819002*^9}, {3.700292650680709*^9, 3.7002926992982464`*^9}, {
  3.7002927299683704`*^9, 3.7002928338776712`*^9}, {3.700295322282321*^9, 
  3.700295417524979*^9}, {3.7002956185938396`*^9, 3.7002956230909305`*^9}, {
  3.7003007183559265`*^9, 
  3.70030072601705*^9}},ExpressionUUID->"5949f30b-17be-4504-a088-\
7cd1e2f13f78"],

Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`x1$$ = 2, $CellContext`y1$$ = 
   3, $CellContext`x2$$ = 4, $CellContext`y2$$ = 5, $CellContext`a$$ = 
   6, $CellContext`b$$ = 7, $CellContext`p$$ = 7}, 
   TagBox[GridBox[{
      {"\<\"Point Addition on Ep(a,b)\"\>"},
      {
       TagBox[GridBox[{
          {"\<\"x1=\"\>", 
           InputFieldBox[Dynamic[$CellContext`x1$$], Number]},
          {"\<\"y1=\"\>", 
           InputFieldBox[Dynamic[$CellContext`y1$$], Number]},
          {"\<\"x2=\"\>", 
           InputFieldBox[Dynamic[$CellContext`x2$$], Number]},
          {"\<\"y2=\"\>", 
           InputFieldBox[Dynamic[$CellContext`y2$$], Number]},
          {"\<\" a=\"\>", 
           InputFieldBox[Dynamic[$CellContext`a$$], Number]},
          {"\<\" b=\"\>", 
           InputFieldBox[Dynamic[$CellContext`b$$], Number]},
          {"\<\" p=\"\>", 
           InputFieldBox[Dynamic[$CellContext`p$$], Number]}
         },
         AutoDelete->False,
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Grid"]},
      {
       TemplateBox[{"\"{x3,y3} = \"",DynamicBox[
          ToBoxes[
           $CellContext`eccAdd[{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}, $CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], StandardForm]]},
        "RowDefault"]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Center}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output",
 CellChangeTimes->{
  3.700290531178222*^9, 3.7002907377007074`*^9, {3.7002908003847227`*^9, 
   3.7002908248132257`*^9}, {3.7002908693561225`*^9, 
   3.7002909063083286`*^9}, {3.7002910770288153`*^9, 3.700291088248844*^9}, {
   3.7002911278672466`*^9, 3.7002911458728976`*^9}, {3.7002914105473585`*^9, 
   3.700291434984688*^9}, 3.700291489519427*^9, {3.7002915872411985`*^9, 
   3.7002916166112814`*^9}, {3.700292523838193*^9, 3.700292538191028*^9}, 
   3.700292659557631*^9, 3.700292700015607*^9, 3.700292741817231*^9, {
   3.700292781543544*^9, 3.700292834524098*^9}, 3.700295209971613*^9, {
   3.7002953913370886`*^9, 3.7002954188068686`*^9}, 3.7002956245848694`*^9, 
   3.700297749914694*^9, {3.700300721197276*^9, 3.700300726836875*^9}, 
   3.700417743940775*^9, 3.7004247759032335`*^9, 3.7004688191756115`*^9, {
   3.700518209070439*^9, 
   3.7005182133896065`*^9}},ExpressionUUID->"aa078765-d7f2-4f3a-8a36-\
29c6a9e473cf"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Panel", "[", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x", "=", "2"}], ",", 
      RowBox[{"y", "=", "3"}], ",", 
      RowBox[{"k", "=", "3"}], ",", 
      RowBox[{"a", "=", "6"}], ",", 
      RowBox[{"b", "=", "7"}], ",", 
      RowBox[{"p", "=", "7"}]}], "}"}], ",", 
    RowBox[{"Column", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"\"\<Point Multiplication on Ep(a,b)\>\"", ",", 
        RowBox[{"Grid", "[", 
         RowBox[{"{", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"\"\<k=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "k", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\<x=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "x", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\<y=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "y", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\< a=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "a", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\< b=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "b", "]"}], ",", "Number"}], "]"}]}], 
            "}"}], ",", "\[IndentingNewLine]", 
           RowBox[{"{", 
            RowBox[{"\"\< p=\>\"", ",", 
             RowBox[{"InputField", "[", 
              RowBox[{
               RowBox[{"Dynamic", "[", "p", "]"}], ",", "Number"}], "]"}]}], 
            "}"}]}], "}"}], "]"}], ",", "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<k*{x,y} = \>\"", ",", 
           RowBox[{"Dynamic", "[", 
            RowBox[{
             RowBox[{"eccMult", "[", 
              RowBox[{"k", ",", 
               RowBox[{"{", 
                RowBox[{"x", ",", "y"}], "}"}], ",", "a", ",", "b", ",", 
               "p"}], "]"}], "\[LeftDoubleBracket]", "3", 
             "\[RightDoubleBracket]"}], "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<Order of operation: \>\"", ",", 
           RowBox[{"Dynamic", "[", 
            RowBox[{
             RowBox[{"eccMult", "[", 
              RowBox[{"k", ",", 
               RowBox[{"{", 
                RowBox[{"x", ",", "y"}], "}"}], ",", "a", ",", "b", ",", 
               "p"}], "]"}], "\[LeftDoubleBracket]", "2", 
             "\[RightDoubleBracket]"}], "]"}]}], "}"}], "]"}], ",", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<Terms involved: \>\"", ",", 
           RowBox[{"Dynamic", "[", 
            RowBox[{
             RowBox[{"eccMult", "[", 
              RowBox[{"k", ",", 
               RowBox[{"{", 
                RowBox[{"x", ",", "y"}], "}"}], ",", "a", ",", "b", ",", 
               "p"}], "]"}], "\[LeftDoubleBracket]", "1", 
             "\[RightDoubleBracket]"}], "]"}]}], "}"}], "]"}]}], "}"}], ",", 
      "Center"}], "]"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.700390312702499*^9, 3.7003904632950664`*^9}, {
  3.700390510246939*^9, 3.700390526186202*^9}, {3.700425323582782*^9, 
  3.700425327877554*^9}},ExpressionUUID->"46e92ad4-79d7-47eb-9088-\
4f0f11809f6d"],

Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`x$$ = 2, $CellContext`y$$ = 
   3, $CellContext`k$$ = 67, $CellContext`a$$ = 6, $CellContext`b$$ = 
   7, $CellContext`p$$ = 7}, 
   TagBox[GridBox[{
      {"\<\"Point Multiplication on Ep(a,b)\"\>"},
      {
       TagBox[GridBox[{
          {"\<\"k=\"\>", 
           InputFieldBox[Dynamic[$CellContext`k$$], Number]},
          {"\<\"x=\"\>", 
           InputFieldBox[Dynamic[$CellContext`x$$], Number]},
          {"\<\"y=\"\>", 
           InputFieldBox[Dynamic[$CellContext`y$$], Number]},
          {"\<\" a=\"\>", 
           InputFieldBox[Dynamic[$CellContext`a$$], Number]},
          {"\<\" b=\"\>", 
           InputFieldBox[Dynamic[$CellContext`b$$], Number]},
          {"\<\" p=\"\>", 
           InputFieldBox[Dynamic[$CellContext`p$$], Number]}
         },
         AutoDelete->False,
         GridBoxItemSize->{
          "Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
        "Grid"]},
      {
       TemplateBox[{"\"k*{x,y} = \"",DynamicBox[
          ToBoxes[
           Part[
            $CellContext`eccMult[$CellContext`k$$, {$CellContext`x$$, \
$CellContext`y$$}, $CellContext`a$$, $CellContext`b$$, $CellContext`p$$], 3], 
           StandardForm]]},
        "RowDefault"]},
      {
       TemplateBox[{"\"Order of operation: \"",DynamicBox[
          ToBoxes[
           Part[
            $CellContext`eccMult[$CellContext`k$$, {$CellContext`x$$, \
$CellContext`y$$}, $CellContext`a$$, $CellContext`b$$, $CellContext`p$$], 2], 
           StandardForm]]},
        "RowDefault"]},
      {
       TemplateBox[{"\"Terms involved: \"",DynamicBox[
          ToBoxes[
           Part[
            $CellContext`eccMult[$CellContext`k$$, {$CellContext`x$$, \
$CellContext`y$$}, $CellContext`a$$, $CellContext`b$$, $CellContext`p$$], 1], 
           StandardForm]]},
        "RowDefault"]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Center}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output",
 CellChangeTimes->{{3.700390356930256*^9, 3.700390412628046*^9}, 
   3.700390527327338*^9, 3.700425262765542*^9, 3.7004253285580397`*^9, 
   3.7004688352260084`*^9},ExpressionUUID->"eb3185ef-ee74-428c-aad7-\
733d38803fe9"]
}, Open  ]]
},
WindowSize->{872, 815},
WindowMargins->{{Automatic, 81}, {95, Automatic}},
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
Cell[1464, 33, 13697, 323, 1863, "Input", "ExpressionUUID" -> \
"79371eb9-da00-4832-8fca-9e3ec34dde9b"],
Cell[CellGroupData[{
Cell[15186, 360, 3664, 85, 463, "Input", "ExpressionUUID" -> \
"1a1f4f8b-d09a-4811-9c43-0cd5d8ae5d12"],
Cell[18853, 447, 2529, 55, 432, "Output", "ExpressionUUID" -> \
"aa078765-d7f2-4f3a-8a36-29c6a9e473cf"]
}, Open  ]],
Cell[CellGroupData[{
Cell[21419, 507, 3785, 92, 565, "Input", "ExpressionUUID" -> \
"4d2a352f-82ec-49d0-a7e2-fb588c31668e"],
Cell[25207, 601, 2322, 59, 456, "Output", "ExpressionUUID" -> \
"eb3185ef-ee74-428c-aad7-733d38803fe9"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature CwTOmABQLom@sCg2Z3OXV2ZA *)
