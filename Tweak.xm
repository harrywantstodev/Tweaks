%hook SBSearchScrollView
-(bool) gestureRecognizerShouldBegin:(id)arg1
{
    return NO;
}
%end
