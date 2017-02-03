{--------------------------------------------------------------------------------
* Description : scExcelExportConfig.inc - compiler directives
--------------------------------------------------------------------------------}
{$IFDEF VER290} // Delphi XE8 : Default Excel2010, ExcelXP can also be used
  {$DEFINE EXCEL2010}
  {$DEFINE DELPHIXE8}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER280} // Delphi XE7 : Default Excel2010, ExcelXP can also be used
  {$DEFINE EXCEL2010}
  {$DEFINE DELPHIXE7}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER270} // Delphi XE6 : Default Excel2010, ExcelXP can also be used
  {$DEFINE EXCEL2010}
  {$DEFINE DELPHIXE6}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER260} // Delphi XE5 : Default Excel2010, ExcelXP can also be used
  {$DEFINE EXCEL2010}
  {$DEFINE DELPHIXE5}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER250} // Delphi XE4 : Default Excel2010, ExcelXP can also be used
  {$DEFINE EXCEL2010}
  {$DEFINE DELPHIXE4}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER240} // Delphi XE3 : Default Excel2010, ExcelXP can also be used
  {$DEFINE EXCEL2010}
  {$DEFINE DELPHIXE3}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER230} // Delphi XE2 (2012) : Default Excel2010, ExcelXP can also be used
  {$DEFINE EXCEL2010}
  {$DEFINE DELPHIXE2}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER220} // Delphi XE (2011) : Default Excel2000, ExcelXP can also be used
  {$DEFINE EXCELXP}
  {$DEFINE DELPHIXE}
  {$DEFINE DELPHIXEORNEWER}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER210} // Delphi 2010 : Default Excel2000, ExcelXP can also be used
  {$DEFINE EXCEL2000}
  {$DEFINE DELPHI2010}
  {$DEFINE DELPHI2010ORNEWER}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER200} // Delphi 2009 : Default Excel2000, ExcelXP can also be used
  {$DEFINE EXCEL2000}
  {$DEFINE DELPHI2009}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}

{$IFDEF VER185} // Delphi 2007 :  Default Excel2000, ExcelXP can also be used
  {$DEFINE EXCEL2000}
  {$DEFINE DELPHI2007}
  {$DEFINE DELPHI2006ORNEWER}
{$ELSE} // else, because VER180 can also be used in Delphi 2007
{$IFDEF VER180} // Delphi 2006 : Default Excel2000, ExcelXP can also be used
  {$DEFINE EXCEL2000}
  {$DEFINE DELPHI2006}
  {$DEFINE DELPHI2006ORNEWER}
{$ENDIF}
{$ENDIF}

{$IFDEF VER170} // Delphi 2005 : Default Excel2000, ExcelXP can also be used
  {$DEFINE EXCEL2000}
  {$DEFINE DELPHI2005}
{$ENDIF}

{$IFDEF VER150} // Delphi 7 : Default Excel2000, ExcelXP and Excel97 can also be used
  {$DEFINE EXCEL2000}
  {$DEFINE DELPHI7}
{$ENDIF}

{$IFDEF VER140} //Delphi 6 : Default Excel2000, Excel97 can also be used
  {$DEFINE EXCEL2000}
  {$DEFINE DELPHI6}
{$ENDIF}

{$IFDEF VER130} //Delphi 5 : Default Excel97, Excel2000 can also be used when SP1 is installed
  {$DEFINE EXCEL97}
  {$DEFINE DELPHI5}
{$ENDIF}

// To override the default which is specified for each Delphi version
// just uncomment some of the following lines

// {$UNDEF EXCEL97}
// {$UNDEF EXCEL2000}
// {$UNDEF EXCELXP}
// {$UNDEF EXCEL2010}

// {$DEFINE EXCEL97}
// {$DEFINE EXCEL2000}
// {$DEFINE EXCELXP}
// {$DEFINE EXCEL2010}

// Excel 2000 is de default type library for compatibilty reasons with previous versions of the TscExcelExport component
// When using the TscExcelExport component for the first time, it is better to use the ExcelXP type library because this is a more recent version
// Delphi XE2 also contains the new Excel 2010 library. It will be the default but you have to change it if you would like to support older Excel versions.