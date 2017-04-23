/*
[DESCRIPTION]
	Add custom user interface item to custom category to allow adding the 'Switch Orthographic to Perspective' UI to a custom toolbar.

[INSTALLATION]
	(1) Make sure "perspective-viewport-ui.ms" exists in your 3ds Max's "scripts" folder
		(e.g.: "C:\Program Files\Autodesk\3ds Max 2012\Scripts\")
	(2) Copy "perspective-viewport-menu.ms" into your 3ds Max's "scripts" folder
		(e.g.: "C:\Program Files\Autodesk\3ds Max 2012\Scripts\")
	(3) Run "perspective-viewport-menu.ms"
		(e.g. #1: MAXScript > Run Script... > perspective-viewport-ui.ms)
		(e.g. #2: MAXScript Listener > fileIn "perspective-viewport-ui.ms")
	(4) Add 'Switch Orthographic to Perspective' to custom toolbar:
		right click custom toolbar > customize > Category: Custom > Drag "Switch Orthographic to Perspective" onto custom toolbar)

[VERSION]
	Version: 1.0
	Last Modified: 2017-04-24
	Tested with: 3ds Max 2012 64-bit

[INFO]
	Author: Arsène van de Bilt
	E-mail: arsene@vandebi.lt
	Website: http://arsene.vandebi.lt

[LICENSE]
	Copyright 2017 Arsène van de Bilt

	Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

	The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

	THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/


macroScript Perspective
category:"Custom"
toolTip:" Switch Orthographic to Perspective "
(
	fileIn "perspective-viewport-ui.ms"
)