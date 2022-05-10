# Unicode and String manipulations in UTF-8, UTF-16, ...

All about «Strings» for I/O - input and output - with the *real* world.

---

Inspired by the conversations on the subject started 2021-04-18 on Usenet [comp.lang.ada](https://groups.google.com/g/comp.lang.ada "Ada and Unicode")


See also [UTF-8 on Windows with Ada](https://stackoverflow.com/questions/48829940/utf-8-on-windows-with-ada "Stack Overflow")

---

## Some Definitions

«Strings» refer here as a user readable representation of text.

It is NOT the plain Ada type ’String’ encoded as array (<>) of Latin_1.Character


## Context

* Most (99%) of our plain text files are UTF-8 encoded
* Most (80%) of Web pages are encoded in UTF-8, the rest in Latin-1 .. Latin-15
* How are texts or Web pages in the Asian languages encoded ?
  * Dual direction (as in Sankrit)
* How are texts or Web pages in the Arabic languages encoded ?
  * Right to left direction, Dual direction

There are a lot of (Open Source) libraries aiming to manipulate «Strings» with different representations and coding shemes.

The most notable ones are present in:

* [Ada Standard Libraries](https://github.com/AdaForge/Thematics/blob/main/UTF8-Unicode-UCS/Lib_Analysis.md)
* [GNAT standard libraries extensions](https://github.com/AdaForge/Thematics/blob/main/UTF8-Unicode-UCS/Lib_Analysis.md)
* [DAK_simple_components](https://github.com/AdaForge/Thematics/blob/main/UTF8-Unicode-UCS/Lib_Analysis.md)
* [MATRESHKA](https://github.com/AdaForge/Thematics/blob/main/UTF8-Unicode-UCS/Lib_Analysis.md)
* [UXString](https://github.com/AdaForge/Thematics/blob/main/UTF8-Unicode-UCS/Lib_Analysis.md)
* [VSS](https://github.com/AdaForge/Thematics/blob/main/UTF8-Unicode-UCS/Lib_Analysis.md)
* [XMLada](https://github.com/AdaForge/Thematics/blob/main/UTF8-Unicode-UCS/Lib_Analysis.md)
  * [Documentation](https://docs.adacore.com/xmlada-docs/unicode.html "The Unicode module")
* ...

## Back to the basics

[UNICODE home page](https://home.unicode.org)
[Unicode® Technical Site](https://unicode.org/main.html)
[Unicode Basics](https://github.com/unicode-org/icu/blob/main/docs/userguide/icu/unicode.md)


## What we have

### Ada language definitions

* 3 characters sizes: 8, 16, 32 bits corresponding to  Latin-1, UTF-16, UTF-32
* 3 fixed Strings (array) of these 3 characters types
* 3 variable length Strings (Bounded) of these 3 characters types
  * with conversion functions
* 3 unlimited variable length Strings (Unbounded) of these 3 characters types
  * with conversion functions
  
`package Ada.Strings.UTF_Encoding`<br>
defines `UTF_String` / `TF_8_String` / `UTF_16_Wide_String` and Encoding_Schemes (`UTF_8`, `UTF_16BE`, `UTF_16LE`)

`package Ada.Strings.UTF_Encoding.*Strings`<br>
offers `Convert`, `Encode`, `Decode` functions with UTF_String / TF_8_String / UTF_16_Wide_String and Encoding_Scheme (UTF_8, UTF_16BE, UTF_16LE)

* **Source code** is treated (read) as UTF-8 (as standard)  
* **String literals** (with graphemes outside the Latin-1 character set) are UTF-32 encoded in Wide_Wide_String
* **Identifiers** *may* be UTF-32 encoded, albeit GNAT compiler recognizes the Latin-1 character set in source program identifiers

### [Specific GNAT extensions](https://gcc.gnu.org/onlinedocs/gcc-11.3.0/gnat_rm/Pragma-Wide_005fCharacter_005fEncoding.html#Pragma-Wide_005fCharacter_005fEncoding "pragma Wide_Character_Encoding")

  * `pragma Wide_Character_Encoding (...);`
    * for CHARACTER_LITERAL, use one of `h`, `u`, `s`, `e`, `8`, or `b`
      * `h` Hex encoding
      * `u` Upper half encoding
      * `s` Shift/JIS encoding
      * `e` EUC encoding
      * `8` UTF-8 encoding
      * `b` Brackets encoding only (default value)
    * for IDENTIFIERs, use one of `HEX`, `UPPER`, `SHIFT_JIS`, `EUC`, `UTF8`, or `BRACKETS`.

### At the [GNAT compiler](https://gcc.gnu.org/onlinedocs/gcc-11.3.0/gnat_ugn/Alphabetical-List-of-All-Switches.html#Alphabetical-List-of-All-Switches "switches") level

* switch for CHARACTER_LITERALs
  * `-gnatW` postfixed with one of `h`, `u`, `s`, `e`, `8`, or `b` Specifies the method of encoding for wide characters
* switch for IDENTIFIERs
  * `-gnati` postfixed with one of `1` `2` `3` `4` `5` `8` `9` `p` `f` `n` `w`
    * i.e Latin-[1,2,3,4,5,9=15] , `p`=IBMPC 437, `8`=IBMPC 850
    * `f`=Full upper-half allowed
    * `h`=No upper-half allowed
    * `w`=Wide-character codes 
* Unit names are best limited to ASCII character as they must correspond to the name of the file (FileSystem constraints)
  * You may associate the Unit-name to a specific file-name
    * through a specific GNAT pragma
      * `pragma Source_File_Name`
    * through a [GPRbuild definition](https://docs.adacore.com/live/wave/gprbuild/html/gprbuild_ug/gprbuild_ug/gnat_project_manager.html#naming-schemes) 
```Ada
package Naming is     
   for Spec ("monUnité") use "myUnit.ads";
   for Body ("momUnité") use "myUnit.adb";
```

## The needs

* Unicode Litterals in our Ada source files
* support of [Emoji](https://en.wikipedia.org/wiki/Emoji#Unicode_blocks)’s
* File I/O with UTF-8 text files
* BSD, Linux Console I/O with UTF-8
* Windows Console I/O with UTF-16 and Win-Latin-x, ...
* Filesystems names of files, directories
  * Apple HFS+, APFS  (UTF-8 FormD)
  * Microsoft NTFS
  * OpenZFS
  * Linux and BSD FS
  * Embedded systems ?
* Converting a file (ex: from latin-1/8bits to latin2/UTF-8)

| Usage / Lib | Ada | GNAT | XML | VSS | MATRESHKA | simple_component | UXString | |
| :---- |   :---: |   :---: |   :---: |   :---: |   :---: |   :---: |   :---: | |
| Stored as UTF-8 |  |  |  |  |  |  |  | |
| Grapheme |  |  |  |  |  |  |  | |
| Codepoint |  |  |  |  |  |  |  | |
| UCS Properties |  |  |  |  |  |  |  | |
| UCS Character Foldings |  |  |  |  |  |  |  | |
| UCS Case mapping |  |  |  |  |  |  |  | |
| UCS Bloc definitions |  |  |  |  |  |  |  | |
| UCS Line Break |  |  |  |  |  |  |  | |
| Grapheme iterator based on GraphemeBreak |  |  |  |  |  |  |  | |
| Basic String functions |  |  |  |  |  |  |  | |
| '=, substring, search, substitution |  |  |  |  |  |  |  | |
| To_String, From_String |  |  |  |  |  |  |  | |
| Advanced Strings sorting (Locale collation) |  |  |  |  |  |  |  | |
| Normalization |  |  |  |  |  |  |  | |
| UCS encoding form |  |  |  |  |  |  |  | |
| Encode / Decode UTF-16 LE/BE, UTF-32 |  |  |  |  |  |  |  | |
| Streams |  |  |  |  |  |  |  | |
| Text_IO |  |  |  |  |  |  |  | |
| Equiv. Bounded String |  |  |  |  |  |  |  | |
| Short string storage optimization |  |  |  |  |  |  |  | |


### Text file Import / Export scenario
> --The following steps are involved: (from Vadim Godunko)
> --     Latin1 string  (contains bytes associated with code points in Latin1)
> --       |    "use Unicode.CES.Basic_8bit.To_Utf32"
> --       v
> --     Utf32 latin1 string (contains code points in Latin1)
> --       |    "Convert argument to To_Utf32 should be
> --       v         Unicode.CCS.Iso_8859_1.Convert"
> --     Utf32 Unicode string (contains code points in Unicode)
> --       |    "use Unicode.CES.Utf8.From_Utf32"
> --       v
> --     Utf8 Unicode string (contains code points in Unicode)
> --       |    "Convert argument to From_Utf32 should be
> --       v         Unicode.CCS.Iso_8859_2.Convert"
> --     Utf8 Latin2 string (contains code points in Latin2)

## Questions

1. What is the *State of Art* ?
2. Which one is the best to Adopt ?
3. Do we need to design and implement a new definitive Universal «Strings» libary ?

## Benchmarking

### Apple Swift Standard Library

* [Swift](https://developer.apple.com/documentation/swift/string "Apple Developer Documentation")
 ** see [Topics](https://developer.apple.com/documentation/swift/string#topics) for the conversion functions

### Vocabulary

* [Grapheme](https://en.wikipedia.org/wiki/Grapheme) : smallest functional unit of a writing system. A specific shape that represents any particular grapheme in a specific typeface is called a *glyph*
* [Glyph](https://en.wikipedia.org/wiki/Glyph) : graphical representation of a *Grapheme* (Cf. Type face)
* [Code Points](https://en.wikipedia.org/wiki/Code_point) : Code points usually represent a single grapheme; ranges from 0 to 0x10FFFF
* Unicode scalars: same as code points except the 2,048 surrogate code points in the range 0xD800 to 0xDFFF (used by the UTF-16 encoding to represent code points greater than 65,535)
* extended grapheme cluster: consists of one or more Unicode scalars.
  * Naming of characters
  * [Character Foldings](http://www.unicode.org/L2/L2000/00261-tr25-0d1.html) : Accent folding, Case folding, Final forms folding, Kana folding, Width folding
  * UCS Sequence Identifiers
  * Subsets
  * [UCS encoding forms](https://en.wikipedia.org/wiki/Comparison_of_Unicode_encodings): UTF-8 , UTF-16 , UTF-32 (UCS-4)
* UCS Encoding schemes: UTF-8, UTF-16BE, UTF-16LE, UTF-16, UTF-32BE, UTF-32LE, UTF-32
* Combining characters
* Normalization forms: 'D', 'C', 'KD', 'KC' 
* 'D' :: Decomposition in 2 or more Code Points
* 'C' :: Composite characters (in 1 representation Code Points + possible marks)
* 'K' :: K as Compatibility

Note (source [Wikipedia](https://en.wikipedia.org/wiki/Universal_Coded_Character_Set#Differences_from_Unicode) )
Some applications support ISO 10646 characters but do not fully support Unicode. One such application, Xterm, can properly display all ISO 10646 characters that have a one-to-one character-to-glyph mapping[clarification needed] and a single directionality. It can handle some combining marks by simple overstriking methods, but cannot display Hebrew (bidirectional), Devanagari (one character to many glyphs) or Arabic (both features).

ISO/IEC 10646:2017 = Unicode 10.0

* Windows and Java are mostly UTF-16 systems
* XML : UTF-8
* HTTP headers : ASCII or [ISO-8859-1 Latin-1](https://en.wikipedia.org/wiki/ISO/IEC_8859-1)
* Other systems: 8 bits ASCII or [ISO-8859-1 Latin-1](https://en.wikipedia.org/wiki/ISO/IEC_8859-1)

### Ada 2022 Language Reference

[RTFM](http://www.ada-auth.org/standards/2xrm/html/RM-TOC.html "Ada Reference Manual \(Ada 202x Draft 32\)")

#### RM§ 2.1 Character Set

The character repertoire for the text of an Ada program consists of the entire coding space described by the [ISO/IEC 10646:2017 Universal Coded Character Set](https://en.wikipedia.org/wiki/Universal_Coded_Character_Set). This coding space is organized in planes, each plane comprising 65536 characters.
(...)

**An Ada implementation shall accept Ada source code in UTF-8 encoding**, with or without a BOM

#### RM§ 2.3 Identifiers

An identifier shall only contain characters that may be present in Normalization Form KC (as defined by Clause 21 of ISO/IEC 10646:2017).
Two identifiers are considered the same if they consist of the same sequence of characters after applying locale-independent simple case folding, as defined by documents referenced in Clause 2 of ISO/IEC 10646:2017.

#### RM§ 2.6 String Literals

The sequence of characters of a string_literal is formed from the sequence of string_elements. (i.e graphic_characters)

#### RM§ 3.5.2 Character Types

The predefined type **Character** is a character type whose values correspond to the 256 code points of Row 00 (also known as Latin-1) of the ISO/IEC 10646:2017 Basic Multilingual Plane (BMP).  
**Wide_Character** is a character type whose values correspond to the 65536 code points of the ISO/IEC 10646:2017 Basic Multilingual Plane (BMP). The first 256 values of Wide_Character have the same character_literal or language-defined name as defined for Character.
**Wide_Wide_Character** is a character type whose values correspond to the 2147483648 code points of the ISO/IEC 10646:2017 character set. The first 65536 values of Wide_Wide_Character have the same character_literal or language-defined name as defined for Wide_Character.

#### RM§ 3.6.3 String Types

There are three predefined string types, **String**, **Wide_String**, and **Wide_Wide_String**

#### RM§ A.3.4 The Package Characters.Conversions

```Ada
package Ada.Characters.Conversions
```

> (Character, Wide_Character, Wide_Wide_Character)<br>
> (String, Wide_String, Wide_Wide_String)<br>

#### RM§ A.4 String Handling

```Ada
package Ada.Strings
package Ada.Strings.Maps
package Ada.Strings.Fixed
package Ada.Strings.Bounded
package Ada.Strings.Unbounded
package Ada.Strings.Maps.Constants
```

> all with `String`, `Wide_String`, `Wide_Wide_String` variants

#### RM§ A.4.9 String Hashing

> all with `String`, `Wide_String`, `Wide_Wide_String` variants

A.4.10 String Comparison
> all with `String`, `Wide_String`, `Wide_Wide_String` variants

#### RM§ A.4.11 String Encoding

 ```Ada
subtype UTF_String is String;
subtype UTF_8_String is String;
subtype UTF_16_Wide_String is Wide_String;
```

 ```Ada
package Ada.Strings.UTF_Encoding
```

> UTF_String / UTF_8_String / UTF_16_Wide_String

```Ada
package Ada.Strings.UTF_Encoding.Conversions
```

> UTF_String  <-> UTF_8_String <-> UTF_16_Wide_String

```Ada
package Ada.Strings.UTF_Encoding.Strings
```

> Encode/Decode <-> UTF_String / UTF_8_String / UTF_16_Wide_String

```Ada
package Ada.Strings.UTF_Encoding.Wide_Strings
```

> Encode/Decode <-> UTF_String / UTF_8_String / UTF_16_Wide_String

```Ada
package Ada.Strings.UTF_Encoding.Wide_Wide_Strings
```

> Encode/Decode <-> UTF_String / UTF_8_String / UTF_16_Wide_String

```Ada
package Ada.Strings.Text_Buffers
```

> all with `String`, `Wide_String`, `Wide_Wide_String` variants

```Ada
package Ada.Wide_Wide_Characters.Unicode is
-- folding functions as defined by section 1 of ISO/IEC 10646:2003
function To_Lower_Case
     (U : Wide_Wide_Character) return Wide_Wide_Character;
function To_Upper_Case
     (U : Wide_Wide_Character) return Wide_Wide_Character;

package Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO is
-- with optional argument File : Ada.Wide_Wide_Text_IO.File_Type;
   function  Get_Line return Unbounded_Wide_Wide_String;
   procedure Get_Line (Item : out Unbounded_Wide_Wide_String);
   procedure Put (U : Unbounded_Wide_Wide_String);
   procedure Put_Line (U    : Unbounded_Wide_Wide_String);
```

### GNAT/GCC specific implementation

[RTFM gcc-11.3.0 RM](https://gcc.gnu.org/onlinedocs/gcc-11.3.0/gnat_rm/index.html#SEC_Contents "GNAT Reference Manual")

#### 11.2 [FORM Strings](https://gcc.gnu.org/onlinedocs/gcc-11.3.0/gnat_rm/FORM-Strings.html#FORM-Strings)

```
TEXT_TRANSLATION=[YES|NO|TEXT|BINARY|U8TEXT|WTEXT|U16TEXT]
SHARED=[YES|NO]
WCEM=[n|h|u|s|e|8|b]
ENCODING=[UTF8|8BITS]
```

 ```Ada
WC_Encoding_Letters : constant array (WC_Encoding_Method) of Character :=
     [WCEM_Hex       => 'h',
      WCEM_Upper     => 'u',
      WCEM_Shift_JIS => 's',
      WCEM_EUC       => 'e',
      WCEM_UTF8      => '8',
      WCEM_Brackets  => 'b'];
```

#### 11.5.6 [Text_IO Facilities for Unbounded Strings](https://gcc.gnu.org/onlinedocs/gcc-11.3.0/gnat_rm/Text_005fIO-Facilities-for-Unbounded-Strings.html#Text_005fIO-Facilities-for-Unbounded-Strings)

```Ada
package Ada.Strings.Unbounded.Text_IO
```

> all with `String`, `Wide_String`, `Wide_Wide_String` variants

 ```Ada
function Get_Line (File : File_Type) return Unbounded_String
```

> all with `String`, `Wide_String`, `Wide_Wide_String` variants

```Ada
procedure Put (File : File_Type; U : Unbounded_String)
```

> all with `String`, `Wide_String`, `Wide_Wide_String` variants

 ```Ada
procedure Put_Line (File : File_Type; U : Unbounded_String)
```

> all with `String`, `Wide_String`, `Wide_Wide_String` variants

### GNAT/GCC Additional Libraries

```Ada
package Ada.Wide_Characters.Unicode
package Ada.Wide_Wide_Characters.Unicode

-- Latin_1, Latin_9
package Ada.Characters.Wide_Latin_1
package Ada.Characters.Wide_Wide_Latin_1

package Ada.Characters.Wide_Latin_9
package Ada.Characters.Wide_Wide_Latin_9

-- UTF-8, UTF-32
package GNAT.UTF_32 renames System.UTF_32

package GNAT.Decode_UTF8_String
package GNAT.Encode_UTF8_String

-- Spelling_Checker
package GNAT.UTF_8_Spelling_Checker
package GNAT.Wide_Spelling_Checker
package GNAT.Wide_Wide_Spelling_Checker

-- String_Split
package GNAT.Wide_String_Split
package GNAT.Wide_Wide_String_Split

-- Unbounded Text_IO
package Ada.Strings.Wide_Unbounded.Wide_Text_IO
package Ada.Strings.Wide_Wide_Unbounded.Wide_Wide_Text_IO

-- C_Streams
package Ada.Wide_Text_IO.C_Streams
package Ada.Wide_Wide_Text_IO.C_Streams

-- Reset_Standard_Files
package Ada.Wide_Text_IO.Reset_Standard_Files
package Ada.Wide_Wide_Text_IO.Reset_Standard_Files
```
