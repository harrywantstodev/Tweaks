#include "stmRootListController.h"

@implementation stmRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [[self loadSpecifiersFromPlistName:@"Root" target:self] retain];
	}

	return _specifiers;
}
-(void)save
{
    [self.view endEditing:YES];
}

- (void)link {
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:@"http://momentjs.com/docs/#/displaying/format/"]];
}
-(void)respring {
         system("killall -9 SpringBoard");
      }
@end
