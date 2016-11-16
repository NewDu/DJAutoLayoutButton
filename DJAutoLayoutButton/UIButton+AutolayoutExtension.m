//
//  UIButton+AutolayoutExtension.m
//  DJAutoLayoutButton
//
//  Created by world on 16/11/16.
//  Copyright © 2016年 Dujiao. All rights reserved.
//

#import "UIButton+AutolayoutExtension.h"
#import <objc/runtime.h>

@implementation UIButton (AutolayoutExtension)

- (void)layoutButtonWithImagePositionType:(UIBUttonImagePosition)imagePosition space:(CGFloat)space {
    //1. Get the width and height of the title and image
    CGFloat titleWidth, titleHeight;
    CGFloat imageWidth, imageHeight;
    titleWidth = self.titleLabel.intrinsicContentSize.width; //ios8以后，titleLabel的的size为0
    titleHeight = self.titleLabel.intrinsicContentSize.height;
    imageWidth = self.imageView.frame.size.width;
    imageHeight = self.imageView.frame.size.height;
    
    //2. Init imageEdgeInsets and labelEdgeInsets
    UIEdgeInsets imageEdgeInsets = UIEdgeInsetsZero;
    UIEdgeInsets titleEdgeInsets = UIEdgeInsetsZero;
    
    //3. layout button
    switch (imagePosition) {
        case UIBUttonImagePositionTop:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, titleHeight+space/2, -titleWidth);
            titleEdgeInsets = UIEdgeInsetsMake(imageHeight+space/2, -imageWidth, 0, 0);
        }
            break;
        case UIBUttonImagePositionLeft:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, space/2);
            titleEdgeInsets = UIEdgeInsetsMake(0, space/2, 0, 0);
        }
            break;
        case UIBUttonImagePositionBottom:
        {
            imageEdgeInsets = UIEdgeInsetsMake(titleHeight+space/2, 0, 0, -titleWidth);
            titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth, imageHeight+space/2, 0);
        }
            break;
        case UIBUttonImagePositionRight:
        {
            imageEdgeInsets = UIEdgeInsetsMake(0, titleWidth+space/2, 0, -titleWidth);
            titleEdgeInsets = UIEdgeInsetsMake(0, -imageWidth, 0, imageWidth+space/2);
        }
            break;
            
        default:
            break;
    }
    [self setImageEdgeInsets:imageEdgeInsets];
    [self setTitleEdgeInsets:titleEdgeInsets];
}
@end
