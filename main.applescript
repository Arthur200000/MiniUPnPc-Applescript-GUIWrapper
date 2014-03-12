-- AppleScript GUI for MiniUPnPc
-- Copyright ý Arthur Wang <arthur200126@gmail.com>
-- All rights reserved.
--
--     Redistributions of source code must retain the above copyright
--       notice, this list of conditions and the following disclaimer.
--     Redistributions in binary form must reproduce the above copyright
--       notice, this list of conditions and the following disclaimer in the
--       documentation and/or other materials provided with the distribution.
--     Neither the name of the University of California, Berkeley nor the
--       names of its contributors may be used to endorse or promote products
--       derived from this software without specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS "AS IS" AND ANY
-- EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
-- WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
-- DISCLAIMED. IN NO EVENT SHALL THE REGENTS AND CONTRIBUTORS BE LIABLE FOR ANY
-- DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
-- (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
-- LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
-- ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
-- (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
-- SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

--MiniUPnPc is a BSD-licensed free software; MiniUPnPc is availabie at http://miniupnp.free.fr/ .
set user_locale to user locale of (get system info)

if user_locale = "zh_CN" then
	set port_desc to "ÊäÈë±¾µØ±»×ª·¢µÄ¶Ë¿ÚºÅ£º"
	set ext_desc to "ÊäÈë¸Ã¶Ë¿Ú×ª·¢µ½µÄÍâ²¿¶Ë¿ÚºÅ£º"
	set protocol_desc to "Ð­ÒéÀàÐÍ£º"
	set ip_prom to "ÇëÊäÈë½«±»Ö´ÐÐ¶Ë¿Ú×ª·¢µÄµçÄÔÔÚ¾ÖÓòÍøÄÚµÄIP£º"
else
	set port_desc to "Local Port£º"
	set ext_desc to "External Port:"
	set protocol_desc to "protocol"
	set ip_prom to "Enter IP Address:"
end if
set protocols to {"TCP", "UDP"}

set ipaddr to IPv4 address of (get system info)

set ipaddr to the text returned of (display dialog ip_prom with title "upnpc GUI" default answer IPv4 address of (get system info))
set port_local to the text returned of (display dialog port_desc with title "upnpc GUI" default answer 22)
set port_ext to the text returned of (display dialog ext_desc with title "upnpc GUI" default answer port_local)
set protocol to (choose from list protocols with prompt protocol_desc with title "upnpc GUI") as string
-- Having so many popup windows really sucksÿÿI'm considering to use something like Dialog MakerÿÿHowever it do costs some dollarsÿÿ


set upnpc to "upnpcwrapper " & " " & ipaddr & " " & port_local & " " & port_ext & " " & protocol
-- wrapper should look like this: (see http://stackoverflow.com/questions/1596945/building-osx-app-bundle) of course we should use ./upnpc $*
do shell script upnpc --with administrator privileges
-- Maybe I should have a button to choose some functions like Add Delete Status List Foo Foo Foo Fooÿÿ