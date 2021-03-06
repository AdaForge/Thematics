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

package Matreshka.Internals.Unicode.Ucd.Core_0019 is

   pragma Preelaborate;

   Group_0019 : aliased constant Core_Second_Stage
     := (16#00# .. 16#1E# =>  --  1900 .. 191E
          (Other_Letter, Neutral,
           Other, A_Letter, O_Letter, Alphabetic,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)),
         16#1F#           =>  --  191F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#20# .. 16#22# =>  --  1920 .. 1922
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#23# .. 16#26# =>  --  1923 .. 1926
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#27# .. 16#28# =>  --  1927 .. 1928
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#29# .. 16#2B# =>  --  1929 .. 192B
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#2C# .. 16#2F# =>  --  192C .. 192F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#30# .. 16#31# =>  --  1930 .. 1931
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#32#           =>  --  1932
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#33# .. 16#38# =>  --  1933 .. 1938
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Combining_Mark,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#39# .. 16#3B# =>  --  1939 .. 193B
          (Nonspacing_Mark, Neutral,
           Extend, Extend, Extend, Combining_Mark,
           (Diacritic
              | Case_Ignorable
              | Grapheme_Extend
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#3C# .. 16#3F# =>  --  193C .. 193F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#40#           =>  --  1940
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         16#41# .. 16#43# =>  --  1941 .. 1943
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#44# .. 16#45# =>  --  1944 .. 1945
          (Other_Punctuation, Neutral,
           Other, Other, S_Term, Exclamation,
           (STerm
              | Terminal_Punctuation
              | Grapheme_Base => True,
            others => False)),
         16#46# .. 16#4F# =>  --  1946 .. 194F
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#6E# .. 16#6F# =>  --  196E .. 196F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#75# .. 16#7F# =>  --  1975 .. 197F
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#AC# .. 16#AF# =>  --  19AC .. 19AF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#B0# .. 16#B4# =>  --  19B0 .. 19B4
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B5# .. 16#B7# =>  --  19B5 .. 19B7
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#B8# .. 16#B9# =>  --  19B8 .. 19B9
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BA#           =>  --  19BA
          (Spacing_Mark, Neutral,
           Spacing_Mark, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#BB# .. 16#C0# =>  --  19BB .. 19C0
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#C8# .. 16#C9# =>  --  19C8 .. 19C9
          (Spacing_Mark, Neutral,
           Other, Extend, Extend, Complex_Context,
           (Other_Alphabetic
              | Alphabetic
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#CA# .. 16#CF# =>  --  19CA .. 19CF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#D0# .. 16#D9# =>  --  19D0 .. 19D9
          (Decimal_Number, Neutral,
           Other, Numeric, Numeric, Numeric,
           (Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DA#           =>  --  19DA
          (Other_Number, Neutral,
           Other, Other, Other, Complex_Context,
           (Other_ID_Continue
              | Grapheme_Base
              | ID_Continue
              | XID_Continue => True,
            others => False)),
         16#DB# .. 16#DD# =>  --  19DB .. 19DD
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (others => False)),
         16#DE# .. 16#DF# =>  --  19DE .. 19DF
          (Other_Symbol, Neutral,
           Other, Other, Other, Complex_Context,
           (Grapheme_Base => True,
            others => False)),
         16#E0# .. 16#FF# =>  --  19E0 .. 19FF
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Grapheme_Base => True,
            others => False)),
         others           =>
          (Other_Letter, Neutral,
           Other, Other, O_Letter, Complex_Context,
           (Alphabetic
              | Grapheme_Base
              | ID_Continue
              | ID_Start
              | XID_Continue
              | XID_Start => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0019;
