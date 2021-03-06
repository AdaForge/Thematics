------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--        Localization, Internationalization, Globalization for Ada         --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2012-2015, Vadim Godunko <vgodunko@gmail.com>                --
-- All rights reserved.                                                     --
--                                                                          --
-- Redistribution and use in source and binary forms, with or without       --
-- modification, are permitted provided that the following conditions       --
-- are met:                                                                 --
--                                                                          --
--  * Redistributions of source code must retain the above copyright        --
--    notice, this list of conditions and the following disclaimer.         --
--                                                                          --
--  * Redistributions in binary form must reproduce the above copyright     --
--    notice, this list of conditions and the following disclaimer in the   --
--    documentation and/or other materials provided with the distribution.  --
--                                                                          --
--  * Neither the name of the Vadim Godunko, IE nor the names of its        --
--    contributors may be used to endorse or promote products derived from  --
--    this software without specific prior written permission.              --
--                                                                          --
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS      --
-- "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT        --
-- LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    --
-- A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT     --
-- HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,   --
-- SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED --
-- TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR   --
-- PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF   --
-- LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING     --
-- NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS       --
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.             --
--                                                                          --
------------------------------------------------------------------------------
--  $Revision$ $Date$
------------------------------------------------------------------------------

pragma Restrictions (No_Elaboration_Code);
--  GNAT: enforce generation of preinitialized data section instead of
--  generation of elaboration code.

package Matreshka.Internals.Unicode.Ucd.Core_001F is

   pragma Preelaborate;

   Group_001F : aliased constant Core_Second_Stage
     := (16#08# .. 16#0F# =>  --  1F08 .. 1F0F
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#16# .. 16#17# =>  --  1F16 .. 1F17
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#18# .. 16#1D# =>  --  1F18 .. 1F1D
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  1F1E .. 1F1F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#28# .. 16#2F# =>  --  1F28 .. 1F2F
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#38# .. 16#3F# =>  --  1F38 .. 1F3F
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#46# .. 16#47# =>  --  1F46 .. 1F47
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#48# .. 16#4D# =>  --  1F48 .. 1F4D
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#4E# .. 16#4F# =>  --  1F4E .. 1F4F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#58#           =>  --  1F58
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#59#           =>  --  1F59
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5A#           =>  --  1F5A
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5B#           =>  --  1F5B
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5C#           =>  --  1F5C
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5D#           =>  --  1F5D
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#5E#           =>  --  1F5E
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#5F#           =>  --  1F5F
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#68# .. 16#6F# =>  --  1F68 .. 1F6F
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#71#           =>  --  1F71
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#73#           =>  --  1F73
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#75#           =>  --  1F75
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#77#           =>  --  1F77
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#79#           =>  --  1F79
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7B#           =>  --  1F7B
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7D#           =>  --  1F7D
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7E# .. 16#7F# =>  --  1F7E .. 1F7F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#80# .. 16#87# =>  --  1F80 .. 1F87
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#88# .. 16#8F# =>  --  1F88 .. 1F8F
          (Titlecase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#90# .. 16#97# =>  --  1F90 .. 1F97
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#98# .. 16#9F# =>  --  1F98 .. 1F9F
          (Titlecase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A0# .. 16#A7# =>  --  1FA0 .. 1FA7
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#A8# .. 16#AF# =>  --  1FA8 .. 1FAF
          (Titlecase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B2# .. 16#B4# =>  --  1FB2 .. 1FB4
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B5#           =>  --  1FB5
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#B7#           =>  --  1FB7
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#B8# .. 16#BB# =>  --  1FB8 .. 1FBB
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BC#           =>  --  1FBC
          (Titlecase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BD#           =>  --  1FBD
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BE#           =>  --  1FBE
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#BF# .. 16#C1# =>  --  1FBF .. 1FC1
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C2# .. 16#C4# =>  --  1FC2 .. 1FC4
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C5#           =>  --  1FC5
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#C7#           =>  --  1FC7
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#C8# .. 16#CB# =>  --  1FC8 .. 1FCB
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CC#           =>  --  1FCC
          (Titlecase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#CD# .. 16#CF# =>  --  1FCD .. 1FCF
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D3#           =>  --  1FD3
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#D4# .. 16#D5# =>  --  1FD4 .. 1FD5
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#D8# .. 16#DB# =>  --  1FD8 .. 1FDB
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#DC#           =>  --  1FDC
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#DD# .. 16#DF# =>  --  1FDD .. 1FDF
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E3#           =>  --  1FE3
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#E8# .. 16#EC# =>  --  1FE8 .. 1FEC
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#ED# .. 16#EF# =>  --  1FED .. 1FEF
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F0# .. 16#F1# =>  --  1FF0 .. 1FF1
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F2# .. 16#F4# =>  --  1FF2 .. 1FF4
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F5#           =>  --  1FF5
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#F7#           =>  --  1FF7
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#F8# .. 16#FB# =>  --  1FF8 .. 1FFB
          (Uppercase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Uppercase
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FC#           =>  --  1FFC
          (Titlecase_Letter, Neutral,
           Other, A_Letter, Upper, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Lowercased
              | Changes_When_Uppercased
              | Changes_When_Casefolded
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FD#           =>  --  1FFD
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Break_Before,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FE#           =>  --  1FFE
          (Modifier_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#FF#           =>  --  1FFF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         others           =>
          (Lowercase_Letter, Neutral,
           Other, A_Letter, Lower, Alphabetic,
           (Alphabetic
              | Cased
              | Changes_When_Uppercased
              | Changes_When_Titlecased
              | Changes_When_Casemapped
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | Lowercase
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_001F;
