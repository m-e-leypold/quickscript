
# Quickscript

## LICENSE NOTICE

Quickscript is released under GPL3, see section LICENSE in README.md and the
LICENSE in the top directory of the source tree.

## What is it?

A method to run compiled languages as scripts, like

    #!/usr/bin/env quickscript-ocaml
    (* -*- mode: tuareg -*- env: unix *) 

    let _ =
      print_string "hello, people!";
      print_newline ()

The file will be staged and compiled in ~/.quickscript/ocaml/unix and
executed from there. Compilation is of course cached.

Currently there is only OCaml support and environments have to be
created manually (or from this source tree).

## INSTALLING

You need to have lsd-base2 installed (see
https://github.com/m-e-leypold/lsd-base2). Then just type 'make
install' in the top directory of quickscript. As in lsd-base2,
quickscript will be "live" installed, that is, hooked under
~/.scripts.

A better (packagable) installation process will be forthcoming (some
time, but certainly be sped up by people actually using this).

## LICENSE

    Quickscript - a quick and dirty solution to run compiled languages as scripts
    Copyright (C) 2015 -- M E Leypold

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

