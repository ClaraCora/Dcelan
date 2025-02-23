#import <UIKit/UIKit.h>


@interface AWELeftSideBarEntranceView : NSObject
@property (nonatomic, assign, readwrite, getter=isHidden) BOOL hidden;
@end


%hook AWELeftSideBarEntranceView

- (instancetype)initWithFrame:(CGRect)frame {
    self = %orig(frame);
    if (self) {
        self.hidden = YES;
    }
    return self;
}

%end

