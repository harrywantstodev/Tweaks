static BOOL isEnabled = YES; // Default value
static NSString* isTime = nil;

%hook SBStatusBarStateAggregator
-(void)_resetTimeItemFormatter
{
  if(isTime && isEnabled)
  {
    %orig;
    NSDateFormatter *dateFormat = MSHookIvar<NSDateFormatter *>(self, "_timeItemDateFormatter");
    {
      [dateFormat setDateFormat:isTime];
    }
  }
}
%end

static void loadPrefs()
{
    NSMutableDictionary *prefs = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/com.harrywantstodev.statustimemod.plist"];
    if(prefs)
    {
        isEnabled = ( [prefs objectForKey:@"isEnabled"] ? [[prefs objectForKey:@"isEnabled"] boolValue] : isEnabled );
        isTime = ( [prefs objectForKey:@"isTime"] ? [prefs objectForKey:@"isTime"] : isTime );
        [isTime retain];
    }
    [prefs release];
}

%ctor
{
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)loadPrefs, CFSTR("com.harrywantstodev.statustimemod/settingschanged"), NULL, CFNotificationSuspensionBehaviorCoalesce);
    loadPrefs();
}
