#!/bin/bash
#
#   Copyright (c) 2014 Eaton
#
#   This program is free software; you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation; either version 2 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License along
#   with this program; if not, write to the Free Software Foundation, Inc.,
#   51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
#
#! \file    cmpjson-unsorted.sh
#  \brief   Simple wrapper for cmpjson.sh
#  \author  Jim Klimov <EvgenyKlimov@Eaton.com>
#  \details Simple wrapper for cmpjson.sh to do comparison of two
#           JSON markups in their original ordering of items.

CMPJSON="`dirname $0`/cmpjson.sh"
[ ! -x "$CMPJSON" ] && echo "ERROR: Can't find '$CMPJSON'!" >&2 && exit 1

JSONSH_OPTIONS='-N -Nnx=%.16f' \
JSONSH_OPTIONS_VERBOSE='-Nnx=%.16f' \
exec "$CMPJSON" "$@"
