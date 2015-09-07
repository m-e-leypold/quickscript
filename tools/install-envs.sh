#!/bin/sh

# Quickscript - a quick and dirty solution to run compiled languages as scripts
# Copyright (C) 2015 -- M E Leypold
# 
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
# 

for E in $( ( cd env-templates; echo */*) ); do
    O="env-templates/$E"	
    if test -d "$O"; then
	D="$HOME/.quickscript/$E"
	rm -rf "$D/"*
	mkdir -p "$D/"
	cp -R "$O/"* "$D"
	echo "$D:"
	ls -l "$D"
    fi
done

