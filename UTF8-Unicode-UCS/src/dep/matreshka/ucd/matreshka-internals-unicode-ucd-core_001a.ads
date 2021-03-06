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

package Matreshka.Internals.Unicode.Ucd.Core_001A is

   pragma Preelaborate;

   Group_001A : aliased constant Core_Second_Stage
     := (16#00# .. 16#16# =>  --  1A00 .. 1A16
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#17# .. 16#18# =>  --  1A17 .. 1A18
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#19# .. 16#1A# =>  --  1A19 .. 1A1A
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1B#           =>  --  1A1B
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#1E# .. 16#1F# =>  --  1A1E .. 1A1F
          (Other_Punctuation, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#20# .. 16#54# =>  --  1A20 .. 1A54
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#55#           =>  --  1A55
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#56#           =>  --  1A56
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#57#           =>  --  1A57
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#58# .. 16#5E# =>  --  1A58 .. 1A5E
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#60#           =>  --  1A60
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Case_Ignorable
              | Grapheme_Extend
              | Grapheme_Link
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#61#           =>  --  1A61
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#62#           =>  --  1A62
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#63# .. 16#64# =>  --  1A63 .. 1A64
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#65# .. 16#6C# =>  --  1A65 .. 1A6C
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6D# .. 16#72# =>  --  1A6D .. 1A72
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#73# .. 16#74# =>  --  1A73 .. 1A74
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#75# .. 16#7C# =>  --  1A75 .. 1A7C
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Complex_Context,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#7F#           =>  --  1A7F
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#80# .. 16#89# =>  --  1A80 .. 1A89
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#90# .. 16#99# =>  --  1A90 .. 1A99
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#A0# .. 16#A6# =>  --  1AA0 .. 1AA6
          (Other_Punctuation, Neutral,
           Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#A7#           =>  --  1AA7
          (Modifier_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Extender
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#A8# .. 16#AB# =>  --  1AA8 .. 1AAB
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Complex_Context,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#AC# .. 16#AD# =>  --  1AAC .. 1AAD
          (Other_Punctuation, Neutral,
           Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#B0# .. 16#BD# =>  --  1AB0 .. 1ABD
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BE#           =>  --  1ABE
          (Enclosing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Case_Ignorable
              | Grapheme_Extend => True,
            others => False)),
         others           =>
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_001A;
