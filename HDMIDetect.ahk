main:
MsgBox, 65, Display Detector, Display Detector Is on active, 3
con := 0
Loop
{
    SysGet, var, MonitorCount	; or try:    SysGet, var, 80
    sleep 30000
    If (var > 1)
    {
        con := 1
    }
	Else
	{
		
	}
    
}
Until, con == 1
Goto, check
check:
Loop
{
	SysGet, var2, MonitorCount	; or try:    SysGet, var, 80
	sleep 30000
    If (var2 == 1)
    {
		MsgBox, 65, External Monitor Disconnected!, Requesting to force display adapter to intel, 5
        Run, resetdriver.bat,
    }

}
Until, var2 == 1
Goto, main



