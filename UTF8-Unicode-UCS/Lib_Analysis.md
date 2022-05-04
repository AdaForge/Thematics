* Ada Language and Standard Libraries
* GNAT standard libraries extensions © Free Software Foundation, Inc./LGPL3
* DAK_simple_components © Dmitry A. Kazakov /LGPL2
* MATRESHKA © Vadim Godunko /≈MIT
* UXString  © Pascal Pignard /CeCILL V2.1
* VSS © Vadim Godunko @AdaCore, inc /LGPL v3
* XMLada © Emmanuel Briot, Nicolas Boulenguez @ACT-Europe /LGPL2 

# Ada Language and Standard Libraries

```Ada
package Standard is
   type Character is ( 16#00# .. 16#FF#); --  ISO 8859-1 character set
   type Wide_Character is (16#00_00# .. 16#FF_FF#); -- ISO/IEC 10646:2017 BMP. The first 256 positions have same content as Character
   type Wide_Wide_Character is (16#00_00_00_00# .. 16#7F_FF_FF_FF#); full ISO/IEC 10646:2017 character set. The first 65536 positions have same content as Wide_Character

   type String is array(Positive range <>) of Character;
   type Wide_String is array(Positive range <>) of Wide_Character;
   type Wide_Wide_String is array(Positive range <>) of Wide_Wide_Character;

package Ada.Strings.*_Bounded is
   type Bounded_String is private;
   type Bounded_Wide_String is private;
   type Bounded_Wide_Wide_String is private;

package Ada.Strings.*_Unbounded is
   type Unbounded_String is private;
   type Unbounded_Wide_String is private;
   type Unbounded_Wide_Wide_String is private;

package Ada.Strings.UTF_Encoding is
   type Encoding_Scheme is (UTF_8, UTF_16BE, UTF_16LE);
   subtype UTF_String is String;
   subtype UTF_8_String is String;
   subtype UTF_16_Wide_String is Wide_String;

package Ada.Strings.UTF_Encoding.*Strings
   function Convert
     (Item          : String / Wide_String / Wide_String;
      Input_Scheme  : Encoding_Scheme;
      Output_Scheme : Encoding_Scheme;
      Output_BOM    : Boolean  := False)
      return UTF_String / TF_8_String / UTF_16_Wide_String;
   function Encode 
     (Item          : String / Wide_String / Wide_String;
      Output_Scheme : Encoding_Scheme;
      Output_BOM    : Boolean  := False)
      return UTF_String / TF_8_String / UTF_16_Wide_String;
   function Decode 
     (Item          : UTF_String / TF_8_String / UTF_16_Wide_String)
      return String / Wide_String / Wide_String

```

# GNAT standard libraries extensions © Free Software Foundation, Inc. /LGPL v3

```Ada
package Ada.Wide_Wide_Characters.Unicode is
   function To_Lower_Case
     (U : Wide_Wide_Character) 
      return Wide_Wide_Character;
   function To_Upper_Case
     (U : Wide_Wide_Character)
      return Wide_Wide_Character;

package System.UTF_32 is
   type UTF_32 is range 0 .. 16#7FFF_FFFF#
   --  So far, the only defined character codes are in 0 .. 16#01_FFFF#
   function UTF_32_To_Upper_Case (U : UTF_32) return UTF_32;
   function UTF_32_To_Basic (U : UTF_32) return UTF_32;

package System.WCh_Cnv is
   type UTF_32_Code is range 0 .. 16#7FFF_FFFF#;
   type UTF_32_String is array (Positive range <>) of UTF_32_Code;
   function Char_Sequence_To_Wide_Char
     (C  : Character;
      EM : System.WCh_Con.WC_Encoding_Method) 
      return Wide_Character;
   function Char_Sequence_To_UTF_32
     (C  : Character;
      EM : System.WCh_Con.WC_Encoding_Method) 
      return UTF_32_Code;
   procedure Wide_Char_To_Char_Sequence
     (WC : Wide_Character;
      EM : System.WCh_Con.WC_Encoding_Method);
   procedure UTF_32_To_Char_Sequence
     (Val : UTF_32_Code;
      EM  : System.WCh_Con.WC_Encoding_Method);

package GNAT.Encode_UTF8_String is
  new GNAT.Encode_String (System.WCh_Con.WCEM_UTF8);
package GNAT.Decode_UTF8_String is
  new GNAT.Decode_String (System.WCh_Con.WCEM_UTF8);

package GNAT.Directory_Operations is
   subtype Dir_Name_Str is String;
```

# DAK_SIMPLE_COMPONENTS © Dmitry A. Kazakov /LGPL v2

> aicwl -- Ada Industrial Control Widgets Library<br>
> max_home_automation<br>

```Ada
package Strings_Edit.UTF8 is
   type Code_Point is mod 2**32;
   subtype UTF8_Code_Point is Code_Point range 0..16#10FFFF#;

   procedure Get
             (  Source  : String;
                Pointer : in out Integer;
                Value   : out UTF8_Code_Point
             );
   procedure Put
             (  Destination : in out String;
                Pointer     : in out Integer;
                Value       : UTF8_Code_Point
             );
   function Image (Value : UTF8_Code_Point) return String;

```

```Ada
package Strings_Edit.UTF8.Map is
   type Unicode_Set is (...) record
      Ptr : Code_Points_List_Ptr;
   end record;

   type Code_Points_List (Size : Positive) is (...) record
      Use_Count : Natural := 1;
      Length    : Natural := 0;
      Indicator : Unicode_Indicator_Function;
      Ranges    : Code_Points_Ranges (1..Size);
   end record;

   procedure Get
             (  Source  : String;
                Pointer : in out Integer;
                Blanks  : Unicode_Set
             );
   function Value
            (  Map     : Unicode_Mapping;
               Element : Character
            )  return UTF8_Code_Point;
   function Value
            (  Map     : Unicode_Mapping;
               Element : Wide_Character
            )  return UTF8_Code_Point;
   function Value
            (  Map     : Unicode_Mapping;
               Element : UTF8_Code_Point
            )  return UTF8_Code_Point;
   function To_Domain (Map : Unicode_Mapping) return String;
   function To_Mapping (From, To : String) return Unicode_Mapping;

```

# MATRESHKA © Vadim Godunko /≈MIT

```Ada
package Matreshka.Internals.Unicode is
   type Code_Unit_16 is mod 2**16;
   type Code_Unit_32 is mod 2**32;
   subtype Code_Point is Code_Unit_32 range 0 .. 16#10_FFFF#;

package Matreshka.Internals.Unicode.Ucd is
   type Code_Point_Sequence is array (Sequence_Index range <>) of Code_Point;
   type Collation_Element is record
      Primary   : Collation_Weight;
      Secondary : Collation_Weight;
      Trinary   : Collation_Weight;
   end record;
   type Decomposition_Kinds is (Canonical, Compatibility);
   type Collation_Element_Sequence is
      array (Sequence_Index range <>) of Collation_Element;

package Matreshka.Internals.Utf16 is
   type Utf16_String_Index is mod 2 ** 32;
   type Utf16_String is array (Utf16_String_Index range <>) of aliased Utf16_Code_Unit;
   function Unchecked_To_Code_Point
    (Item     : Utf16_String;
     Position : Utf16_String_Index)
     return Matreshka.Internals.Unicode.Code_Point;
  
package Matreshka.Internals.Text_Codecs.UTF8 is
   type UTF8_State is mod 2 ** 8;
   type UTF8_Decoder is (...) record
      State : UTF8_State                               := 0;
      Code  : Matreshka.Internals.Unicode.Code_Unit_32 := 0;
   end record;

package Matreshka.Internals.Unicode.Properties is
   function Simple_Casefold_Mapping (Code : Code_Point) return Code_Point;
   function Simple_Lowercase_Mapping (Code : Code_Point) return Code_Point;
   function Simple_Titlecase_Mapping (Code : Code_Point) return Code_Point;
   function Simple_Uppercase_Mapping (Code : Code_Point) return Code_Point;

package Matreshka.Internals.Unicode.Normalization is
   procedure NFC / NFD / NFKC / NFKD
    (Source      : not null Matreshka.Internals.Strings.Shared_String_Access;
     Destination : in out Matreshka.Internals.Strings.Shared_String_Access);

package Matreshka.Internals.Strings is

```

# UXString  © Pascal Pignard /CeCILL V2.1
> GNOGA project<br>

```Ada
package UXStrings is
   type Encoding_Scheme is (ASCII_7, Latin_1, UTF_8, UTF_16BE, UTF_16LE);
   subtype ASCII_Character is Ada.Characters.Handling.ISO_646;
   subtype ASCII_Character_Array is String with
        Dynamic_Predicate => (for all Item of ASCII_Character_Array => Item in ASCII_Character);
   subtype Latin_1_Character is Character;
   subtype Latin_1_Character_Array is String;
   subtype BMP_Character is Wide_Character;
   subtype BMP_Character_Array is Wide_String;
   subtype Unicode_Character is Wide_Wide_Character;
   subtype Unicode_Character_Array is Wide_Wide_String;

   subtype UTF_8_Character_Array is Ada.Strings.UTF_Encoding.UTF_String;
   subtype UTF_16_Character_Array is Ada.Strings.UTF_Encoding.UTF_String;

   type UXString is tagged private with
      Constant_Indexing => Element,
      Iterable          => (First => First, Next => Next, Has_Element => Has_Element, Element => Element),
      String_Literal    => From_Unicode;
   function To_UTF_8 
     (Source : UXString; 
      Output_BOM : Boolean := False) 
      return UTF_8_Character_Array;
   function From_UTF_8 (Source : UTF_8_Character_Array) return UXString;

   function To_UTF_16
     (Source : UXString; Output_Scheme : UTF_16_Encoding_Scheme; 
      Output_BOM : Boolean := False)
      return UTF_16_Character_Array;
   function From_UTF_16 
     (Source : UTF_16_Character_Array; 
      Input_Scheme : UTF_16_Encoding_Scheme)
      return UXString;
```

# VSS © Vadim Godunko @AdaCore, inc /LGPL v3

```Ada
package VSS.Implementation.Strings is
   type String_Data (In_Place : Boolean := False) is record
      Capacity : Character_Count := 0;

      Padding  : Boolean := False;
      --  This padding bit is not used in the code, but here for the benefit
      --  of dynamic memory analysis tools such as valgrind.

      case In_Place is
         when True =>
            Storage : System.Storage_Elements.Storage_Array (0 .. 19);

         when False =>
            Handler : String_Handler_Access;
            Pointer : System.Address;
      end case;
   end record;
   for String_Data use record
      Storage  at 0  range  0 .. 159;
      Handler  at 0  range  0 ..  63;
      Pointer  at 8  range  0 ..  63;
      Capacity at 20 range  0 ..  29;
      Padding  at 20 range 30 ..  30;
      In_Place at 20 range 31 ..  31;
   end record;

package VSS.Implementation.Referrers is
   type Magic_String_Base is
     abstract new Ada.Finalization.Controlled with record
      Limited_Head : Referal_Limited_Access;
      Limited_Tail : Referal_Limited_Access;
      Head         : Referal_Access;
      Tail         : Referal_Access;
   end record;


package VSS.Strings is
   type Virtual_String is
      new VSS.Implementation.Referrers.Magic_String_Base with record
          Data : aliased VSS.Implementation.Strings.String_Data;
   end record
      with String_Literal => To_Virtual_String;
      with Read  => Read,
           Write => Write;
   
   function To_Virtual_String
     (Item : Wide_Wide_String) 
      return Virtual_String;

   procedure Read
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Self   : out Virtual_String);
   procedure Write
     (Stream : not null access Ada.Streams.Root_Stream_Type'Class;
      Self   : Virtual_String);



```

# XMLada © Emmanuel Briot, Nicolas Boulenguez @ACT-Europe /LGPL2 

> gwindows/gnavi project<br>

```Ada
package Unicode is
   type Unicode_Char is mod 2**32;

package Unicode.CES is
   subtype Byte_Sequence is String;
   type Byte_Order is (High_Byte_First, Low_Byte_First);
   type Bom_Type is
     (Utf8_All, Utf16_LE, Utf16_BE, Utf32_LE, Utf32_BE, Ucs4_BE, Ucs4_LE, Ucs4_2143, Ucs4_3412, Unknown);
   type Read_Function is access
     procedure (Str   : Byte_Sequence;
                Index : in out Positive;
                Char  : out Unicode_Char);
   type Encode_Function is access
   procedure (Char   : Unicode_Char;
              Output : in out Byte_Sequence;
              Index  : in out Natural);

package Unicode.CES.Utf32 is
   subtype Utf32_String is String;
   subtype Utf32_LE_String is Utf32_String;
   subtype Utf32_BE_String is Utf32_String;
   procedure Encode
     (Char   : Unicode_Char;
      Output : in out Byte_Sequence;
      Index  : in out Natural);
  procedure Read
     (Str   : Utf32_LE_String;
      Index : in out Positive;
      Char  : out Unicode_Char);

package Unicode.CES.Utf8 is
   subtype Utf8_String is String;
   procedure Encode
     (Char   : Unicode_Char;
      Output : in out Byte_Sequence;
      Index  : in out Natural);
   procedure Read
     (Str   : Utf8_String;
      Index : in out Positive;
      Char  : out Unicode_Char);
   function From_Utf32 (Str : Unicode.CES.Utf32.Utf32_LE_String)
      return Utf8_String;
   function To_Utf32 (Str : Utf8_String)
      return Unicode.CES.Utf32.Utf32_LE_String;
   function To_Unicode_LE
     (Str   : Utf8_String;
      Cs    : Unicode.CCS.Character_Set := Unicode.CCS.Unicode_Character_Set;
      Order : Byte_Order := Default_Byte_Order) return Utf8_String;
   function To_CS
     (Str   : Utf8_String;
      Cs    : Unicode.CCS.Character_Set := Unicode.CCS.Unicode_Character_Set;
      Order : Byte_Order := Default_Byte_Order) 
      return Utf8_String;
```
