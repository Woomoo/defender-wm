#!/usr/bin/perl

#
#    IRC Defender (ConnectTek fork) - irc.connecttek.net
#    (C) Craig Edwards (brain) and various contributors, 2004-2005
#    Modifications (C) Chazz Wolcott (chazz) and ConnectTek Networks, 2009-2010
#
#    This program is free software; you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation; either version 2 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program; if not, write to the Free Software
#    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
#

use strict;
use warnings;
use IO::Socket;

$VERSION = "1.5.2+connecttek";
$DATE = "Aug 2010";

require "./message.pl";
require "./Modules/Main.pm";

&general_init;
&check_params;
&load_config;
&init_modules;
&connect;
&daemon;
while (1) {
&poll;
&reconnect;
}