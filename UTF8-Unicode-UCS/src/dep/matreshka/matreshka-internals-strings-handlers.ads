------------------------------------------------------------------------------
--                                                                          --
--                            Matreshka Project                             --
--                                                                          --
--         Localization, Internationalization, Globalization for Ada        --
--                                                                          --
--                        Runtime Library Component                         --
--                                                                          --
------------------------------------------------------------------------------
--                                                                          --
-- Copyright © 2011-2013, Vadim Godunko <vgodunko@gmail.com>                --
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
--  This package declare interface to platform specific string handling
--  operations. Several children units provides platform specific
--  implementations.
------------------------------------------------------------------------------

package Matreshka.Internals.Strings.Handlers is

   pragma Preelaborate;

   type Abstract_String_Handler is abstract tagged limited null record;

   not overriding procedure Fill_Null_Terminator
    (Self   : Abstract_String_Handler;
     String : not null Shared_String_Access) is abstract;
   --  Fill null terminator after last used code point. On platforms where
   --  SIMD operations are supported it fills all unused elements in the
   --  vector where null terminator must be filled. This allows to simplify
   --  and speedup comparison operations becase where are no need to pay
   --  attention to the unused elements in the last used vector.

   not overriding function Is_Equal
    (Self  : Abstract_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean is abstract;
   not overriding function Is_Less
    (Self  : Abstract_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean is abstract;
   not overriding function Is_Greater
    (Self  : Abstract_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean is abstract;
   not overriding function Is_Less_Or_Equal
    (Self  : Abstract_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean is abstract;
   not overriding function Is_Greater_Or_Equal
    (Self  : Abstract_String_Handler;
     Left  : not null Shared_String_Access;
     Right : not null Shared_String_Access) return Boolean is abstract;
   --  Set of compare operations. All operations compare in code point order
   --  (they are handle UTF-16 surrogate pairs as one code point).

   not overriding function Index
    (Self          : Abstract_String_Handler;
     Item          : Matreshka.Internals.Strings.Shared_String_Access;
     From_Index    : Positive;
     From_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     To_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Code          : Matreshka.Internals.Unicode.Code_Point) return Natural;
   --  Returns index of first occurrence of the specified character in the
   --  string. From_Index and From_Position specify index of character and its
   --  position in internal representation from which search should start.
   --  To_Position specify position in internal data which is outside of the
   --  slice for search.

   not overriding function Index
    (Self          : Abstract_String_Handler;
     Item          : Matreshka.Internals.Strings.Shared_String_Access;
     From_Index    : Positive;
     From_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     To_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Pattern       : Matreshka.Internals.Strings.Shared_String_Access)
       return Natural;
   --  Returns index of the first occurrence of the specified pattern in the
   --  string. From_Index and From_Position specify index of character and its
   --  position in internal representation from which search should start.
   --  To_Position specify position in internal data which is outside of the
   --  slice for search.

   not overriding function Last_Index
    (Self          : Abstract_String_Handler;
     Item          : Matreshka.Internals.Strings.Shared_String_Access;
     From_Position : Matreshka.Internals.Utf16.Utf16_String_Index;
     To_Index      : Positive;
     To_Position   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Code          : Matreshka.Internals.Unicode.Code_Point) return Natural;
   --  Returns the index position of the last occurrence of the character in
   --  this string, searching backward, or zero if character is not found.
   --  From_Position specify position of first code unit of selected slice.
   --  To_Index specify index of last character of the selected slice, while
   --  To_Position specify first position of code point after last character in
   --  the slice.

   not overriding function Count
    (Self : Abstract_String_Handler;
     Item : Matreshka.Internals.Strings.Shared_String_Access;
     Code : Matreshka.Internals.Unicode.Code_Point)
       return Natural;
   --  Returns number of occurrences of Code in the string.

   not overriding function Starts_With
    (Self    : Abstract_String_Handler;
     Item    : not null Shared_String_Access;
     Pattern : not null Shared_String_Access) return Boolean;
   --  Returns True if the string starts with Pattern; otherwise returns false.

end Matreshka.Internals.Strings.Handlers;
