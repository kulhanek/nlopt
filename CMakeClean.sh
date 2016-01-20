#!/bin/bash

if [ $# -gt 0 ]
	then
		rm -rf `find . -name CMakeFiles`
		rm -rf `find . -name CMakeCache.txt`
		rm -rf `find . -name cmake_install.cmake`
		rm -rf `find . -name Makefile`
		rm -rf `find . -name '*~'`
		rm -rf `find . -name '*.o'`
		rm -rf `find . -name '*.a'`
		rm -rf `find . -name '*.so*'`
		rm -rf `find . -name '*.mod'`
        	rm -rf `find . -name 'moc_*.cpp'`
		rm -rf `find . -name '*.moc'`
		rm -rf `find . -name 'ui_*.h'`
        	rm -rf `find . -name 'qrc_*.cpp'`
		rm -rf `find . -name 'qrc_*.cxx'`
		rm -rf `find . -name '*.qrc.depends'`
		rm -rf `find . -name '*_automoc.cpp'`
		rm -rf bin/*
	else
		rm -rf `find . -name CMakeFiles`
		rm -rf `find . -name CMakeCache.txt`
		rm -rf `find . -name cmake_install.cmake`
		rm -rf `find . -name Makefile`
		rm -rf `find . -name '*~'`
		rm -rf `find . -name '*.o'`
        	rm -rf `find . -name '*.moc'`
        	rm -rf `find . -name 'moc_*.cpp'`
        	rm -rf `find . -name 'ui_*.h'`
        	rm -rf `find . -name 'qrc_*.cpp'`
        	rm -rf `find . -name 'qrc_*.cxx'`
		rm -rf `find . -name '*.qrc.depends'`
		rm -rf `find . -name '*_automoc.cpp'`
	fi
