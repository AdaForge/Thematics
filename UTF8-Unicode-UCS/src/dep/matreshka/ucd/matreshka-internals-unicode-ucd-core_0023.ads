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

package Matreshka.Internals.Unicode.Ucd.Core_0023 is

   pragma Preelaborate;

   Group_0023 : aliased constant Core_Second_Stage
     := (16#08#           =>  --  2308
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#09#           =>  --  2309
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#0A#           =>  --  230A
          (Open_Punctuation, Neutral,
           Other, Other, Close, Open_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#0B#           =>  --  230B
          (Close_Punctuation, Neutral,
           Other, Other, Close, Close_Punctuation,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#12#           =>  --  2312
          (Other_Symbol, Ambiguous,
           Other, Other, Other, Ambiguous,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#1A# .. 16#1B# =>  --  231A .. 231B
          (Other_Symbol, Neutral,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#20# .. 16#21# =>  --  2320 .. 2321
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#29#           =>  --  2329
          (Open_Punctuation, Wide,
           Other, Other, Close, Open_Punctuation,
           (Deprecated
              | Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#2A#           =>  --  232A
          (Close_Punctuation, Wide,
           Other, Other, Close, Close_Punctuation,
           (Deprecated
              | Pattern_Syntax
              | Grapheme_Base
              | Changes_When_NFKC_Casefolded => True,
            others => False)),
         16#7C#           =>  --  237C
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#9B# .. 16#B3# =>  --  239B .. 23B3
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B4# .. 16#B5# =>  --  23B4 .. 23B5
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#B7#           =>  --  23B7
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#D0#           =>  --  23D0
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#DC# .. 16#E1# =>  --  23DC .. 23E1
          (Math_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#E2#           =>  --  23E2
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Other_Math
              | Pattern_Syntax
              | Grapheme_Base
              | Math => True,
            others => False)),
         16#F0# .. 16#F3# =>  --  23F0 .. 23F3
          (Other_Symbol, Neutral,
           Other, Other, Other, Ideographic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)),
         16#FB# .. 16#FF# =>  --  23FB .. 23FF
          (Unassigned, Neutral,
           Other, Other, Other, Unknown,
           (Pattern_Syntax => True,
            others => False)),
         others           =>
          (Other_Symbol, Neutral,
           Other, Other, Other, Alphabetic,
           (Pattern_Syntax
              | Grapheme_Base => True,
            others => False)));

end Matreshka.Internals.Unicode.Ucd.Core_0023;
