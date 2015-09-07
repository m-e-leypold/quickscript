# quickscript - a quick and dirty solution to run compiled languages as scripts
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

PRODUCT-NAME = quickscript

include $(shell mklib dot-script-installer.mklib)
install:   live-install
uninstall: live-uninstall
reinstall: uninstall install
setup:     project-setup

capture:
	./tools/capture.sh

# Stuff below hooks into the authors local infrastructur, you probably
# don't want or need that.

-include $(shell mklib lsd-local-project.mklib 2>/dev/null)

