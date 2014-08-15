Readme file for detab                             6 Sep 2001

This is yet another detab command.  It is fully functional,
but I am distributing it not because it's significantly
better than any other of the many detabs available, but rather
as an example of a complete VisualAge PL/I program, of which
there are relatively few.

To use this program you will need the PL/I DLLs.  The version
1.1 DLLs which were distributed with the compiler used to 
build the executable are in /pub/os2/dev/misc/pli11dll.zip.
If you have version 1.1 or a later version of PL/I you shouldn't 
need these DLL's.  Otherwise download them and unpack them into
an appropriate directory listed in LIBPATH.

The following files are in this zip archive:
  readme       - you're reading it.
  detab.exe    - the detab executable
  detab.pli    - the detab source
  makefile     - the makefile for the executable
                 I used gnu make 3.72.1
  plic.cmd     - a modified version of the IBM-supplied
                 Rexx command to invove the PL/I compiler.
                 This includes the required compiler options.

Unless you have the PL/I compiler the only file you need is detab.exe;
unpack it into any directory listed in PATH.

To use detab type the command:

  detab <input_file> [ <output_file> ] [ -n <number> ]

(<> and [], are for documentation purposes only).

e.g. : detab detab.pli detab.output -n 5

  <input_file> is the name of the file to be detabbed.

  <output_file> is the name of the detabbed output.  If <output_file>
  is omitted it will default to <input_file>.out
  for example detab.pli will generate a file called detab.pli.out

  -n indicates the number of spaces to be generated for each tabstop.
  if omitted the default is 10.  This parameter can be entered
  variously as -n5 -N 5 etc., with or without caps and a space.
  The value of n can be between 1 and 100.

The maximum length of lines in the input and output files is 1024.

-----
NOTE: This program will process input files with either standard
      OS/2 line terminators (CR/LF) or unix line terminators
      (LF only).  The output, however, will always be CR/LF
      terminated.  This is a change from the original.

Enjoy!
             Peter Flass       <Peter_Flass@Yahoo.com>


 
 
