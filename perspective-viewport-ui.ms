/*
[DESCRIPTION]
	Manually override automatic switching from orthographic view to perspective view.

[INSTALLATION]
	(1) Copy "perspective-viewport-ui.ms" into your 3ds Max's "scripts" folder
		(e.g.: "C:\Program Files\Autodesk\3ds Max 2012\Scripts\")
	(2) Run "perspective-viewport-ui.ms"
		(e.g. #1: MAXScript > Run Script... > perspective-viewport-ui.ms)
		(e.g. #2: MAXScript Listener > fileIn "perspective-viewport-ui.ms")

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

try(destroyDialog PerspectiveViewportUI)catch()
rollout PerspectiveViewportUI " Set Viewport Mode "
(
	checkbutton btn_perspective "Perspective Only" pos:[8,8] width:104 height:24
	checkbutton btn_orthographic "Allow Orthographic" pos:[120,8] width:104 height:24

	fn Perspective = (
		registerRedrawViewsCallback checkViewport

		if viewport.getType() == #view_iso_user do
		(
			viewport.setType#view_persp_user
			format "Changed Orthographic to Perspective in current viewport.\n"
		)

		btn_orthographic.checked = false
	)

	fn Orthographic = (
		unRegisterRedrawViewsCallback checkViewport
		
		if viewport.getType() == #view_persp_user do
		(
			viewport.setType#view_iso_user
			format "Changed Perspective to Orthographic in current viewport.\n"
		)

		btn_perspective.checked = false
	)

	on PerspectiveViewportUI open do
	(
		format "\"Orthographic to Perspective - UI\" was started.\n"
		btn_perspective.checked = true
		Perspective()
	)

	on btn_perspective changed btn_perspective_state do
	(
		if btn_perspective_state == on do
		(
			PerspectiveViewportEnabled = true
			Perspective()
		)

	)

	on btn_orthographic changed btn_orthographic_state do
	(
		if btn_orthographic_state == on do
		(
			PerspectiveViewportEnabled = false
			Orthographic()
		)
	)
)

createDialog PerspectiveViewportUI 232 40