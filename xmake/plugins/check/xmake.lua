--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-present, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        xmake.lua
--

task("check")
    set_category("plugin")
    on_run("main")
    set_menu {
        usage = "xmake check [options] [arguments]",
        description = "Check the project sourcecode and configuration.",
        options = {
            {'l', "list",      "k",  nil,   "Show all supported checkers list."},
            {nil, "info",      "kv", nil,   "Show the given checker information."},
            {nil, "level",     "kv", "all", "Just show information for the given level.", values = {"warn", "error", "all"}},
            {nil, "checkers",  "vs", nil,   "Use the given checkers to check project."}
        }
    }

