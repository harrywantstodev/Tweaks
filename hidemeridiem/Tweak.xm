%hook SBStatusBarStateAggregator
-(void)_resetTimeItemFormatter
{
  %orig;
  NSDateFormatter *dateFormat = MSHookIvar<NSDateFormatter *>(self, "_timeItemDateFormatter");
{
  [dateFormat setDateFormat:@"h:mm"];
}
}


%end
