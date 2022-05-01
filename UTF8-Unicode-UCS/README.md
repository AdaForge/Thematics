= UTF8-Unicode-UCS

All about «Strings» for input and output with the *real* world.

== Definition

«Strings» refer here as a user readable representation of text.

It is NOT the plain Ada type ’String’ encoded as array (<>) of Latin_1.Character

== Context

* Most (99%) of our plain text files are UTF-8 encoded
* Most (80%) of Web pages are encoded in UTF-8, the rest in Latin-1 .. Latin-15
* How are texts or Web pages in the Asian languages encoded ?
  * Dual direction (as in Sankrit)
* How are texts or Web pages in the Arabic languages encoded ?
  *  Right to left direction

There are a lot of (Open Source) libraries aiming to manipulate «Strings» with different representations and coding shemes.

The most notable ones are present in:

* GNAT standard libraries extensions
* AdaCore GNATCOLL
* MATRESKA
* GNOGA
* UXString
* ...

== Questions

1. What is the *State of Art* ?
2. Which one is the best to Adopt ?
3. Do we need to design and implement a new definitive Universal «Strings» libary ?

== The needs

* Unicode Litterals in our Ada source files
* File I/O with UTF8 text files
* Console I/O with UTF8 (BSD, Linux),
* Windows Console I/O with Win-latin1 , ... 
* Filesystems names of files, directories
  * Apple HFS+, APFS  (UTF-8 FormD)
  * Microsoft NTFS
  * OpenZFS
  * Linux and BSD FS
  * 
  * Embedded sytems ?

== Back to the basics

[UNICODE home page](https://home.unicode.org)
[Unicode® Technical Site](https://unicode.org/main.html)

=== Vocabulary


* [Grapheme](https://en.wikipedia.org/wiki/Grapheme) : smallest functional unit of a writing system. A specific shape that represents any particular grapheme in a specific typeface is called a *glyph*
* [Glyph](https://en.wikipedia.org/wiki/Glyph) : graphical representation of a *Grapheme* (Cf. Type face)
* [Code Points](https://en.wikipedia.org/wiki/Code_point) : Code points usually represent a single grapheme
 * Naming of characters
 * [Character Foldings](http://www.unicode.org/L2/L2000/00261-tr25-0d1.html) : Accent folding, Case folding, Final forms folding, Kana folding, Width folding
 * UCS Sequence Identifiers
 * Subsets
 * [UCS encoding forms](https://en.wikipedia.org/wiki/Comparison_of_Unicode_encodings): UTF-8 , UTF-16 , UTF-32 (UCS-4)
 * UCS Encoding schemes: UTF-8, UTF-16BE, UTF-16LE, UTF-16, UTF-32BE, UTF-32LE, UTF-32
 * Combining characters
 * Normalization forms: 'D', 'C', 'KD', 'KC' 
 *  'D' :: Decomposition in 2 or more Code Points
 *  'C' :: Composite characters (in 1 representation Code Points + possible marks)
 *  'K' :: K as Compatibility

Note (source [Wikipedia](https://en.wikipedia.org/wiki/Universal_Coded_Character_Set#Differences_from_Unicode) )
Some applications support ISO 10646 characters but do not fully support Unicode. One such application, Xterm, can properly display all ISO 10646 characters that have a one-to-one character-to-glyph mapping[clarification needed] and a single directionality. It can handle some combining marks by simple overstriking methods, but cannot display Hebrew (bidirectional), Devanagari (one character to many glyphs) or Arabic (both features).

ISO/IEC 10646:2017 = Unicode 10.0

 * Windows and Java are mostly UTF-16 systems
 * XML : UTF-8
 * HTTP headers : ASCII or [ISO-8859-1 Latin-1](https://en.wikipedia.org/wiki/ISO/IEC_8859-1)
 * Other systems: 8 bits ASCII or [ISO-8859-1 Latin-1](https://en.wikipedia.org/wiki/ISO/IEC_8859-1)

=== Ada 2012 Language Reference

**§ 2.1 Character Set**
The character repertoire for the text of an Ada program consists of the entire coding space described by the [ISO/IEC 10646:2017 Universal Coded Character Set](https://en.wikipedia.org/wiki/Universal_Coded_Character_Set). This coding space is organized in planes, each plane comprising 65536 characters.
(...)
** An Ada implementation shall accept Ada source code in UTF-8 encoding**, with or without a BOM

**§ 2.3 Identifiers**
An identifier shall only contain characters that may be present in Normalization Form KC (as defined by Clause 21 of ISO/IEC 10646:2017).
Two identifiers are considered the same if they consist of the same sequence of characters after applying locale-independent simple case folding, as defined by documents referenced in Clause 2 of ISO/IEC 10646:2017.

**§ 2.6 String Literals**
The sequence of characters of a string_literal is formed from the sequence of string_elements. (i.e graphic_characters)

**§ 3.5.2 Character Types**
The predefined type **Character** is a character type whose values correspond to the 256 code points of Row 00 (also known as Latin-1) of the ISO/IEC 10646:2017 Basic Multilingual Plane (BMP).
**Wide_Character** is a character type whose values correspond to the 65536 code points of the ISO/IEC 10646:2017 Basic Multilingual Plane (BMP). The first 256 values of Wide_Character have the same character_literal or language-defined name as defined for Character.
**Wide_Wide_Character** is a character type whose values correspond to the 2147483648 code points of the ISO/IEC 10646:2017 character set. The first 65536 values of Wide_Wide_Character have the same character_literal or language-defined name as defined for Wide_Character.

**§ 3.6.3 String Types**
There are three predefined string types, **String**, **Wide_String**, and **Wide_Wide_String**

A.3.4 The Package Characters.Conversions
package Ada.Characters.Conversions 
    (Character, Wide_Character, Wide_Wide_Character)
    (String, Wide_String, Wide_Wide_String)

A.4 String Handling
package Ada.Strings
package Ada.Strings.Maps (String, Wide_String, Wide_Wide_String)
package Ada.Strings.Fixed (String, Wide_String, Wide_Wide_String)
package Ada.Strings.Bounded (String, Wide_String, Wide_Wide_String)
package Ada.Strings.Unbounded (String, Wide_String, Wide_Wide_String)
package Ada.Strings.Maps.Constants (String, Wide_String, Wide_Wide_String)
package Ada.Strings.Wide_Maps 
package Ada.Strings.Wide_Wide_Maps
A.4.9 String Hashing (String, Wide_String, Wide_Wide_String)
A.4.10 String Comparison (String, Wide_String, Wide_Wide_String)
A.4.11 String Encoding
    subtype UTF_String is String;
    subtype UTF_8_String is String;
    subtype UTF_16_Wide_String is Wide_String;
package Ada.Strings.UTF_Encoding
    UTF_String/UTF_8_String/UTF_16_Wide_String
package Ada.Strings.UTF_Encoding.Conversions
    UTF_String  <-> UTF_8_String <-> UTF_16_Wide_String
package Ada.Strings.UTF_Encoding.Strings
    Encode/Decode <-> UTF_String/UTF_8_String/UTF_16_Wide_String
package Ada.Strings.UTF_Encoding.Wide_Strings
    Encode/Decode <-> UTF_String/UTF_8_String/UTF_16_Wide_String
package Ada.Strings.UTF_Encoding.Wide_Wide_Strings
    Encode/Decode <-> UTF_String/UTF_8_String/UTF_16_Wide_String
package Ada.Strings.Text_Buffers  (String, Wide_String, Wide_Wide_String)

