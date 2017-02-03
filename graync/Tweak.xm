%hook SBNotificationCenterViewController
-(BOOL)blursBackground
{
	return NO;
}
-(void)setBlursBackground:(BOOL)arg1
{
	arg1= NO;
}

%end