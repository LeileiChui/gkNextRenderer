@echo off
setlocal enabledelayedexpansion

set options[0]=����׷����Ⱦ��(RTPipeline)
set options[1]=�ִ��ӳ���Ⱦ��
set options[2]=��ͳ�ӳ���Ⱦ��
set options[3]=����׷����Ⱦ��(RQ)
set options[4]=�����Ⱦ��
set options[5]=�˳�

set count=6

:menu
cls
echo ��ѡ��һ��ѡ�Ȼ�󰴻س���ȷ��:
for /L %%i in (0,1,%count%-1) do (
	echo %%i. !options[%%i]!
)

set /p choice=��������ѡ�� (0-%count%):

if %choice% geq 0 if %choice% lss %count% (
	goto execute
) else (
	echo ��Ч��ѡ�������ԡ�
	pause
	goto menu
)

:execute
if %choice%==5 goto exit

pushd bin
gkNextRenderer.exe --renderer=%choice% --locale=zhCN
popd

pause
goto menu

:exit
echo �ټ���
pause
exit