#import <UIKit/UIKit.h>


@interface DUXBaseImageView : UIView
// 类方法和属性声明
@end


%hook DUXBaseImageView
- (instancetype)initWithFrame:(CGRect)frame {
    self = %orig(frame);
    if (self) {
        self.hidden = YES; // 隐藏视图
    }
    return self;
}
%end

