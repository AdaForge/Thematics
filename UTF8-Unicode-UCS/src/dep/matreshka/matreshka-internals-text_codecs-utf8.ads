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
-- Copyright © 2010-2012, Vadim Godunko <vgodunko@gmail.com>                --
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
--  UTF-8 encoder and decoder.
--
--  Note: this package is not private child of Text_Codecs because it is used
--  in League.Strings directly.
------------------------------------------------------------------------------
private with Matreshka.Internals.Unicode;

package Matreshka.Internals.Text_Codecs.UTF8 is

   pragma Preelaborate;

   ------------------
   -- UTF8_Decoder --
   ------------------

   type UTF8_Decoder is new Abstract_Decoder with private;

   overriding function Is_Error (Self : UTF8_Decoder) return Boolean;

   overriding function Is_Mailformed
    (Self : UTF8_Decoder) return Boolean;

   overriding procedure Decode_Append
    (Self   : in out UTF8_Decoder;
     Data   : Ada.Streams.Stream_Element_Array;
     String : in out Matreshka.Internals.Strings.Shared_String_Access);

   function Decoder (Mode : Decoder_Mode) return Abstract_Decoder'Class;

   ------------------
   -- UTF8_Encoder --
   ------------------

   type UTF8_Encoder is new Abstract_Encoder with private;

   overriding procedure Encode
    (Self   : in out UTF8_Encoder;
     String : not null Matreshka.Internals.Strings.Shared_String_Access;
     Buffer : out MISEV.Shared_Stream_Element_Vector_Access);

   function Encoder return Abstract_Encoder'Class;

private

   type UTF8_State is mod 2 ** 8;

   type UTF8_Decoder is new Abstract_Decoder with record
      State : UTF8_State                               := 0;
      Code  : Matreshka.Internals.Unicode.Code_Unit_32 := 0;
   end record;

   type UTF8_Encoder is new Abstract_Encoder with null record;

end Matreshka.Internals.Text_Codecs.UTF8;
