/**
 * ---------------------------------------------------------------------------
 *   Copyright (C) 2008 0x6e6562
 *
 *   Licensed under the Apache License, Version 2.0 (the "License");
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 * ---------------------------------------------------------------------------
 **/
package org.amqp
{
    public class ConnectionParameters
    {
        public var username:String;
        public var password:String;
        public var serverhost:String;
        public var vhostpath:String;

        public var serverport:int = AMQP.PORT;

        public var useTLS:Boolean = false;
        public var tlsPort:int = 5673;
        public var options:* = null;

        public function get port():int {
            return useTLS ? tlsPort : serverport;
        }
    }
}
