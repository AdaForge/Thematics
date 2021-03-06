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
-- Copyright © 2011, Vadim Godunko <vgodunko@gmail.com>                     --
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
--  This package provides UTF-16 encoded string utilities to interface Ada and
--  C. It is used by Oracle database driver, SQLite3 database driver and on
--  Windows.
------------------------------------------------------------------------------
with League.Strings;

package Matreshka.Internals.Strings.C is

   pragma Preelaborate;

   type Utf16_Code_Unit_Access is
     access all Matreshka.Internals.Utf16.Utf16_Code_Unit;
   pragma Convention (C, Utf16_Code_Unit_Access);

   function To_Valid_Universal_String
    (Text : Utf16_Code_Unit_Access) return League.Strings.Universal_String;
   --  Converts null-terminated text segment starting at specified position
   --  into Universal_String. String is trimed when invalid data is found.

   function To_Valid_Universal_String
    (Text : Utf16_Code_Unit_Access;
     Size : Matreshka.Internals.Utf16.Utf16_String_Index)
       return League.Strings.Universal_String;
   --  Converts text segment starting at specified position into
   --  Universal_String. String is trimed when invalid data is found.

   procedure Validate_And_Fixup
    (String : in out Shared_String_Access;
     Valid  : out Boolean);
   --  Validates data in the specified null-terminated string to be valid
   --  UTF-16, fixup Unused and Length and writes null terminator. Sets Valid
   --  to True when data is valid UTF-16, and to False otherwise. Invalid
   --  string is truncated to be valid, empty string is replaced by empty
   --  shared string.

   procedure Validate_And_Fixup
    (String : in out Shared_String_Access;
     Size   : Matreshka.Internals.Utf16.Utf16_String_Index;
     Valid  : out Boolean);
   --  Validates data in the specified string of size Size to be valid UTF-16,
   --  fixup Length and write null terminator. Sets Valid to True when data is
   --  valid UTF-16, and to False otherwise. Invalid string is truncated to be
   --  valid, empty string is replaced by empty shared string.

end Matreshka.Internals.Strings.C;
