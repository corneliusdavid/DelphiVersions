unit uConditionalList;

interface

type
  TGetConditionalDefine = procedure(const CompDefined: string);

procedure GetConditionalDefines(GetCondDefProc: TGetConditionalDefine);

const
  IntroText = 'Delphi has compiler directives that are defined in each version of Delphi that ' +
              'you can use in your code to determine, at compile-time, what version of Delphi ' +
              'is being used. Additionally, there are other compiler-defined symbols that ' +
              'indicate what operating system or CPU architecture it is running on. This ' +
              'program, when compiled in various versions of Delphi show many of these symbols.'  +
              'Try compiling under different versions or platforms to see the differences.';
  RefText1 = 'http://docwiki.embarcadero.com/RADStudio/Tokyo/en/Compiler_Versions';
  RefText2 = 'http://docwiki.embarcadero.com/RADStudio/Tokyo/en/Conditional_compilation_(Delphi)';


implementation

procedure GetConditionalDefines(GetCondDefProc: TGetConditionalDefine);
begin
  // platform
  {$IFDEF LINUX}      GetCondDefProc('LINUX');                {$ENDIF}
  {$IFDEF LINUX32}    GetCondDefProc('LINUX32');              {$ENDIF}
  {$IFDEF LINUX64}    GetCondDefProc('LINUX64');              {$ENDIF}
  {$IFDEF MSWINDOWS}  GetCondDefProc('MSWINDOWS');            {$ENDIF}
  {$IFDEF WIN32}      GetCondDefProc('WIN32');                {$ENDIF}
  {$IFDEF WIN64}      GetCondDefProc('WIN64');                {$ENDIF}
  {$IFDEF IOS}        GetCondDefProc('IOS');                  {$ENDIF}
  {$IFDEF NATIVECODE} GetCondDefProc('NATIVECODE');           {$ENDIF}
  {$IFDEF MACOS}      GetCondDefProc('MACOS');                {$ENDIF}
  {$IFDEF MACOS32}    GetCondDefProc('MACOS32');              {$ENDIF}
  {$IFDEF MACOS64}    GetCondDefProc('MACOS64');              {$ENDIF}
  {$IFDEF POSIX}      GetCondDefProc('POSIX');                {$ENDIF}
  {$IFDEF POSIX32}    GetCondDefProc('POSIX32');              {$ENDIF}
  {$IFDEF POSIX64}    GetCondDefProc('POSIX64');              {$ENDIF}
  {$IFDEF ANDROID}    GetCondDefProc('ANDROID');              {$ENDIF}

  // cpu
  {$IFDEF CPU386}     GetCondDefProc('CPU386');               {$ENDIF}
  {$IFDEF CPUARM}     GetCondDefProc('CPUARM');               {$ENDIF}
  {$IFDEF CPUARM64}   GetCondDefProc('CPUARM64');             {$ENDIF}
  {$IFDEF CPUX86}     GetCondDefProc('CPUX86');               {$ENDIF}
  {$IFDEF CPUX64}     GetCondDefProc('CPUX64');               {$ENDIF}
  {$IFDEF CPU32BITS}  GetCondDefProc('CPU32BITS');            {$ENDIF}
  {$IFDEF CPU64BITS}  GetCondDefProc('CPU64BITS');            {$ENDIF}

  // application type
  {$IFDEF CONSOLE}    GetCondDefProc('CONSOLE');              {$ENDIF}

  // default build configurations
  {$IFDEF RELEASE}    GetCondDefProc('RELEASE');              {$ENDIF}
  {$IFDEF DEBUG}      GetCondDefProc('DEBUG');                {$ENDIF}

  // other options
  {$IFDEF CONDITIONALEXPRESSIONS} GetCondDefProc('CONDITIONALEXPRESSIONS'); {$ENDIF}

  // delphi versions
  {$IFDEF VER80}    GetCondDefProc('VER80: Delphi 1');     {$ENDIF}
  {$IFDEF VER90}    GetCondDefProc('VER90: Delphi 2');     {$ENDIF}
  {$IFDEF VER100}   GetCondDefProc('VER100: Delphi 3');    {$ENDIF}
  {$IFDEF VER120}   GetCondDefProc('VER120: Delphi 4');    {$ENDIF}
  {$IFDEF VER130}   GetCondDefProc('VER130: Delphi 5');    {$ENDIF}
  {$IFDEF VER140}   GetCondDefProc('VER140: Delphi 6, package version 60');    {$ENDIF}
  {$IFDEF VER150}   GetCondDefProc('VER150: Delphi 7, package version 70');    {$ENDIF}
  {$IFDEF VER160}   GetCondDefProc('VER160: Delphi 8, package version 80');    {$ENDIF}
  {$IFDEF VER170}   GetCondDefProc('VER170: Delphi 2005 (ver 9), package version 90'); {$ENDIF}
  {$IFDEF VER180}   GetCondDefProc('VER180: Delphi 2006 (ver 10), package version 100'); {$ENDIF}
  {$IFDEF VER180}   GetCondDefProc('VER180: Delphi 2007 (ver 11), package version 100'); {$ENDIF}
  {$IFDEF VER185}   GetCondDefProc('VER185: Delphi 2007 (ver 11), package version 110'); {$ENDIF}
  {$IFDEF VER200}   GetCondDefProc('VER200: Delphi 2009 (ver 12), package version 120'); {$ENDIF}
  {$IFDEF VER210}   GetCondDefProc('VER210: Delphi 2010 (ver 14), package version 140'); {$ENDIF}
  {$IFDEF VER220}   GetCondDefProc('VER220: Delphi XE (ver 15), package version 150');   {$ENDIF}
  {$IFDEF VER230}   GetCondDefProc('VER230: Delphi XE2 (ver 16), package version 160, 161');  {$ENDIF}
  {$IFDEF VER240}   GetCondDefProc('VER240: Delphi XE3 (ver 17), package version 170');  {$ENDIF}
  {$IFDEF VER250}   GetCondDefProc('VER250: Delphi XE4 (ver 18), package version 180');  {$ENDIF}
  {$IFDEF VER260}   GetCondDefProc('VER260: Delphi XE5 (ver 19), package version 190');  {$ENDIF}
  {$IFDEF VER270}   GetCondDefProc('VER270: Delphi XE6 (ver 20), package version 200');  {$ENDIF}
  {$IFDEF VER280}   GetCondDefProc('VER280: Delphi XE7 (ver 21), package version 210');  {$ENDIF}
  {$IFDEF VER290}   GetCondDefProc('VER290: Delphi XE8 (ver 22), package version 220');  {$ENDIF}
  {$IFDEF VER300}   GetCondDefProc('VER300: Delphi 10 Seattle (ver 23), package version 230');  {$ENDIF}
  {$IFDEF VER310}   GetCondDefProc('VER310: Delphi 10.1 Berlin (ver 24), package version 240');  {$ENDIF}
  {$IFDEF VER310}   GetCondDefProc('VER320: Delphi 10.2 Tokyo (ver 25), package version 250');  {$ENDIF}

end;

end.
