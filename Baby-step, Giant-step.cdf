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
NotebookDataLength[     24066,        606]
NotebookOptionsPosition[     24391,        598]
NotebookOutlinePosition[     24765,        614]
CellTagsIndexPosition[     24722,        611]
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
        "p"}], "]"}]}]}], "\[IndentingNewLine]", "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
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
    "\[IndentingNewLine]", "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"BSGS", "[", 
   RowBox[{"p1_", ",", "p2_", ",", "a_", ",", "b_", ",", "order_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "x1", ",", "x2", ",", "y1", ",", "y2", ",", "hashtable", ",", "x", ",", 
      RowBox[{"tmpP", "=", 
       RowBox[{"{", 
        RowBox[{"\[Infinity]", ",", "\[Infinity]"}], "}"}]}], ",", 
      RowBox[{"steps", "=", "0"}], ",", "negxP1", ",", "i", ",", 
      RowBox[{"ans", "=", "0"}]}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x1", ",", "y1"}], "}"}], "=", "p1"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x2", ",", "y2"}], "}"}], "=", "p2"}], ";", 
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
          RowBox[{"tmpP", ",", "p1", ",", "a", ",", "b", ",", "order"}], 
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
             RowBox[{"-", "y1"}], ",", "order"}], "]"}]}], "}"}], ",", "a", 
         ",", "b", ",", "order"}], "]"}], "\[LeftDoubleBracket]", "3", 
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
          RowBox[{"Return", "[", "\"\<Cannot find k\>\"", "]"}]}], "]"}], ";",
         "\[IndentingNewLine]", 
        RowBox[{"tmpP", "=", 
         RowBox[{"eccAdd", "[", 
          RowBox[{"tmpP", ",", "negxP1", ",", "a", ",", "b", ",", "order"}], 
          "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"steps", "++"}], ";", "\[IndentingNewLine]", 
        RowBox[{"ans", "+=", "x"}], ";"}]}], "\[IndentingNewLine]", "]"}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"ans", "+", 
        RowBox[{"hashtable", "[", "tmpP", "]"}]}], ",", "steps"}], "}"}]}]}], 
   "\[IndentingNewLine]", "]"}]}]}], "Input",
 CellChangeTimes->{{3.7004381067202563`*^9, 3.7004382170909796`*^9}, {
   3.700438315201785*^9, 3.700438374017727*^9}, {3.7004384114191027`*^9, 
   3.7004384681483474`*^9}, {3.7004402817703*^9, 3.700440355073535*^9}, {
   3.7004461813345137`*^9, 3.7004462402906437`*^9}, {3.700446270874196*^9, 
   3.7004463870289507`*^9}, {3.700447397794243*^9, 3.7004473979728007`*^9}, {
   3.7004477690189075`*^9, 3.7004477908094816`*^9}, {3.70044783495119*^9, 
   3.700447869477517*^9}, {3.700447960857916*^9, 3.700448144647024*^9}, {
   3.7004481804569387`*^9, 3.700448185655677*^9}, {3.7004482182436028`*^9, 
   3.700448222203441*^9}, {3.700448406475259*^9, 3.7004484879942975`*^9}, {
   3.7004485274962616`*^9, 3.700448578316454*^9}, {3.700448689561823*^9, 
   3.7004486992967415`*^9}, {3.700448744281728*^9, 3.7004487473968744`*^9}, {
   3.7004490853987665`*^9, 3.7004491226120996`*^9}, {3.700449217622602*^9, 
   3.700449234367079*^9}, {3.700449275626908*^9, 3.700449291529338*^9}, {
   3.7004496120684333`*^9, 3.7004496244774036`*^9}, {3.7004496819361477`*^9, 
   3.700449773736925*^9}, {3.7004498149156523`*^9, 3.70044981591374*^9}, {
   3.700449854288269*^9, 3.7004499130601063`*^9}, {3.700450822485854*^9, 
   3.700450854636019*^9}, {3.700451051734249*^9, 3.7004510524425693`*^9}, {
   3.700451135487279*^9, 3.7004511581742373`*^9}, {3.7004512363718944`*^9, 
   3.700451301441123*^9}, {3.7004514021564856`*^9, 3.700451405589164*^9}, {
   3.7004516392235155`*^9, 3.7004516408489723`*^9}, 3.700451940830659*^9, {
   3.700452021217862*^9, 3.700452021673404*^9}, 3.700452857745452*^9, {
   3.700452936368726*^9, 3.700453029306669*^9}, {3.7004639188717613`*^9, 
   3.7004639196550255`*^9}, {3.7004640159049993`*^9, 3.700464035750129*^9}, {
   3.7004640706954684`*^9, 3.700464075988121*^9}, {3.700464233225154*^9, 
   3.700464235470022*^9}, {3.700465035466193*^9, 3.7004650649860153`*^9}, {
   3.7004686499965763`*^9, 3.7004687106690025`*^9}, 3.700468861205677*^9, {
   3.7004688941402273`*^9, 3.7004690373224983`*^9}, {3.7004690945755415`*^9, 
   3.7004691147234135`*^9}, {3.700469151732874*^9, 3.7004691735659075`*^9}, {
   3.7004692080646996`*^9, 3.7004693021155496`*^9}, {3.7004693604616165`*^9, 
   3.700469436039312*^9}, {3.70046949089822*^9, 3.70046950768909*^9}, {
   3.7004695600425587`*^9, 3.7004696313323984`*^9}, {3.7004696641926193`*^9, 
   3.7004697224986663`*^9}, 
   3.7005278614841647`*^9},ExpressionUUID->"06bae3a8-3edd-477f-8257-\
5ef5d6019c2e"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Panel", "[", 
  RowBox[{"DynamicModule", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"x1", "=", "200"}], ",", 
      RowBox[{"x2", "=", "4"}], ",", 
      RowBox[{"y1", "=", "39"}], ",", 
      RowBox[{"y2", "=", "148"}], ",", 
      RowBox[{"a", "=", "2"}], ",", 
      RowBox[{"b", "=", "3"}], ",", 
      RowBox[{"p", "=", "263"}]}], "}"}], ",", 
    RowBox[{"Column", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<Baby-step, Giant-step Attack\>\"", ",", 
        "\"\<find k s.t. k*{x1,y1}={x2,y2}\>\"", ",", 
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
            "}"}], ",", "\[IndentingNewLine]", 
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
            "}"}]}], "\[IndentingNewLine]", "}"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<k = \>\"", ",", 
           RowBox[{"Dynamic", "[", 
            RowBox[{
             RowBox[{"BSGS", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "y1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", 
               "p"}], "]"}], "\[LeftDoubleBracket]", "1", 
             "\[RightDoubleBracket]"}], "]"}]}], "}"}], "]"}], ",", 
        "\[IndentingNewLine]", 
        RowBox[{"Row", "[", 
         RowBox[{"{", 
          RowBox[{"\"\<steps = \>\"", ",", 
           RowBox[{"Dynamic", "[", 
            RowBox[{
             RowBox[{"BSGS", "[", 
              RowBox[{
               RowBox[{"{", 
                RowBox[{"x1", ",", "y1"}], "}"}], ",", 
               RowBox[{"{", 
                RowBox[{"x2", ",", "y2"}], "}"}], ",", "a", ",", "b", ",", 
               "p"}], "]"}], "\[LeftDoubleBracket]", "2", 
             "\[RightDoubleBracket]"}], "]"}]}], "}"}], "]"}]}], "}"}], ",", 
      "Center"}], "]"}]}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.700448639444699*^9, 3.7004486628441315`*^9}, {
   3.7004503312066917`*^9, 3.7004503320686407`*^9}, 3.700451426404985*^9, {
   3.7004515149869204`*^9, 3.7004515164209766`*^9}, {3.70045854310841*^9, 
   3.700458588375451*^9}, {3.700466294864376*^9, 3.7004663459988937`*^9}, {
   3.700466396460538*^9, 3.7004665172877474`*^9}, {3.700466551220805*^9, 
   3.7004665539157324`*^9}, {3.7004666237984066`*^9, 
   3.7004666256079764`*^9}, {3.700469727522094*^9, 3.700469806309457*^9}, {
   3.700469836603121*^9, 3.7004698645980806`*^9}, 3.7004699022861366`*^9, {
   3.700470064947672*^9, 
   3.7004700662382956`*^9}},ExpressionUUID->"cdd08301-50de-4d32-b266-\
e5dd183fc1d6"],

Cell[BoxData[
 PanelBox[
  DynamicModuleBox[{$CellContext`x1$$ = 200, $CellContext`x2$$ = 
   4, $CellContext`y1$$ = 39, $CellContext`y2$$ = 148, $CellContext`a$$ = 
   2, $CellContext`b$$ = 3, $CellContext`p$$ = 263}, 
   TagBox[GridBox[{
      {"\<\"Baby-step, Giant-step Attack\"\>"},
      {"\<\"find k s.t. k*{x1,y1}={x2,y2}\"\>"},
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
       TemplateBox[{"\"k = \"",DynamicBox[
          ToBoxes[
           Part[
            $CellContext`BSGS[{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}, $CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], 1], StandardForm]]},
        "RowDefault"]},
      {
       TemplateBox[{"\"steps = \"",DynamicBox[
          ToBoxes[
           Part[
            $CellContext`BSGS[{$CellContext`x1$$, $CellContext`y1$$}, \
{$CellContext`x2$$, $CellContext`y2$$}, $CellContext`a$$, $CellContext`b$$, \
$CellContext`p$$], 2], StandardForm]]},
        "RowDefault"]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Center}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}}],
    "Column"],
   DynamicModuleValues:>{}]]], "Output",
 CellChangeTimes->{{3.7004585895431185`*^9, 3.7004585979092803`*^9}, 
   3.7004639259890966`*^9, {3.7004640207529316`*^9, 3.7004640388884745`*^9}, 
   3.7004640786083603`*^9, 3.700464241710905*^9, {3.700465042474119*^9, 
   3.700465070504902*^9}, {3.7004663233743334`*^9, 3.700466346688863*^9}, 
   3.7004664169239225`*^9, {3.7004664568505683`*^9, 3.7004665176427298`*^9}, 
   3.700466554905472*^9, 3.700466626849371*^9, {3.7004686618488245`*^9, 
   3.700468672326645*^9}, 3.7004687182025185`*^9, 3.7004698073955097`*^9, 
   3.700469865420603*^9, 3.700469904502045*^9, 3.7004700671010885`*^9, 
   3.7005187869875903`*^9, 3.7005346696879797`*^9, 
   3.7005409989781055`*^9},ExpressionUUID->"d9b3efdd-acf8-4ea6-99b4-\
cd7cc76e9ed8"]
}, Open  ]]
},
WindowSize->{1012, 833},
WindowMargins->{{27, Automatic}, {-7, Automatic}},
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
Cell[1464, 33, 15825, 392, 2097, "Input", "ExpressionUUID" -> \
"06bae3a8-3edd-477f-8257-5ef5d6019c2e"],
Cell[CellGroupData[{
Cell[17314, 429, 4352, 103, 424, "Input", "ExpressionUUID" -> \
"cdd08301-50de-4d32-b266-e5dd183fc1d6"],
Cell[21669, 534, 2706, 61, 415, "Output", "ExpressionUUID" -> \
"d9b3efdd-acf8-4ea6-99b4-cd7cc76e9ed8"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature hupVtIamw66k9DK3qTBIqucF *)
