@echo off
setlocal enabledelayedexpansion

rem menu for shapes
:menu
cls
echo 1. circle
echo 2. trianlge
echo 3. quadrilateral
set /p choice= "please choose a shape (1-3): "
if %choice%==1 goto circle
if %choice%==2 goto triangle
if %choice%==3 goto quadrilateral
echo Invalid choice, please select
again.
pause
goto menu

:circle
set /p radius = "enter the radius of the circle: "
set /a area = 3.14 * radius * radius
echo Thearea of the circle is %area%
pause
goto end

:triangle
set /p side1 = "enter the length of the first side: "
set /p side2 = "enter th length of the second side: "
set /p side 3 = "enter the length of the third side: "

set /a s=(side1 + side2 + side3) / 2
set /a area = !s! * (!s! - side1) * (!s! - side2) * (!s! - side3)
set /a area !area! **0.5

echo The area of the triangle is !area!

if %side1% == %side2# if %side2% == %side3% (
	echo The triangle is equilateral.
) else if %side1% == %side2% (
	echo The triangle is isosceles. 
) else if %side1% == %side3% (
	echo The triangle is isosceles.
) else if %side2% == %side3% (
	echo The triangle is isosceles.
) else ( 
	echo The triangle is scalene.
)
pause
goto end

:quadrilateral
set /p length = "Enter the length of the quadrilateral: "
set /p width = "Enter the width of the quadrilateal: "

set /a area=length * width 
echo The area of the quadrilateral is %area%

if %length%==%width% (
	echo The quadrilateral is a square.
) else ( 
	echo The quadrilateral is a rectangle.
)
pause
goto end

:end 
echo Script completed.
pause