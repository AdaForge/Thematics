------------------------------------------------------------------------------
--                        M A G I C   R U N T I M E                         --
--                                                                          --
--                    Copyright (C) 2020-2021, AdaCore                      --
--                                                                          --
-- This library is free software;  you can redistribute it and/or modify it --
-- under terms of the  GNU General Public License  as published by the Free --
-- Software  Foundation;  either version 3,  or (at your  option) any later --
-- version. This library is distributed in the hope that it will be useful, --
-- but WITHOUT ANY WARRANTY;  without even the implied warranty of MERCHAN- --
-- TABILITY or FITNESS FOR A PARTICULAR PURPOSE.                            --
--                                                                          --
-- As a special exception under Section 7 of GPL version 3, you are granted --
-- additional permissions described in the GCC Runtime Library Exception,   --
-- version 3.1, as published by the Free Software Foundation.               --
--                                                                          --
-- You should have received a copy of the GNU General Public License and    --
-- a copy of the GCC Runtime Library Exception along with this program;     --
-- see the files COPYING3 and COPYING.RUNTIME respectively.  If not, see    --
-- <http://www.gnu.org/licenses/>.                                          --
--                                                                          --
------------------------------------------------------------------------------
--  Conversion between standard string types and Magic_String.

with Ada.Strings.Unbounded;
with Ada.Strings.UTF_Encoding;
with Ada.Strings.Wide_Wide_Unbounded;

package VSS.Strings.Conversions is

   pragma Preelaborate;

   function To_Virtual_String
     (Item : Ada.Strings.UTF_Encoding.UTF_8_String) return Virtual_String;

   function To_Virtual_String
     (Item : Ada.Strings.Unbounded.Unbounded_String) return Virtual_String;
   --  Convert UTF-8 encoded unbounded string into Virtual_String.

   function To_Virtual_String
     (Item : Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String)
      return Virtual_String;
   --  Convert UCS-4 encoded unbounded string into Virtual_String.

   function To_UTF_8_String
     (Item : Virtual_String'Class)
      return Ada.Strings.UTF_Encoding.UTF_8_String;
   --  Convert virtual string into UTF-8 encoded string.

   function To_Unbounded_UTF_8_String
     (Item : Virtual_String'Class)
      return Ada.Strings.Unbounded.Unbounded_String;
   --  Convert virtual string into UTF-8 encoded unbounded string.

   function To_Wide_Wide_String
     (Item : Virtual_String'Class) return Wide_Wide_String;
   --  Convert virtual string into Wide_Wide_String.

   function To_Unbounded_Wide_Wide_String
     (Item : Virtual_String'Class)
      return Ada.Strings.Wide_Wide_Unbounded.Unbounded_Wide_Wide_String;
   --  Convert virtual string into Wide_Wide_String.

end VSS.Strings.Conversions;
