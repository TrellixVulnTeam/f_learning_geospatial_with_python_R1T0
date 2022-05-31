@echo off

IF "%1"=="" (
   echo kea-config.bat [OPTIONS]
   echo Options:
   echo     [--prefix]
   echo     [--version]
   echo     [--libs]
   echo     [--cflags]
   echo     [--includes]
   EXIT /B 1
) ELSE (
:printValue
    if "%1" neq "" (
	    IF "%1"=="--prefix" echo C:/Users/pnjoya/Documents/GitHub/f_learning_geospatial_with_python/pygeo/Library
	    IF "%1"=="--version" echo 1.4.14
	    IF "%1"=="--cflags" echo -IC:/Users/pnjoya/Documents/GitHub/f_learning_geospatial_with_python/pygeo/Library/include
	    IF "%1"=="--libs" echo -LIBPATH:C:/Users/pnjoya/Documents/GitHub/f_learning_geospatial_with_python/pygeo/Library/lib kea.lib 
	    IF "%1"=="--includes" echo C:/Users/pnjoya/Documents/GitHub/f_learning_geospatial_with_python/pygeo/Library/include
		shift
		goto :printValue
    )
	EXIT /B 0
)
