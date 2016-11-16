//
//  UIButton+AutolayoutExtension.h
//  DJAutoLayoutButton
//
//  Created by world on 16/11/16.
//  Copyright © 2016年 Dujiao. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, UIBUttonImagePosition) {
    UIBUttonImagePositionTop = 0, //image beyond label
    UIBUttonImagePositionLeft,    //image at the left of label
    UIBUttonImagePositionBottom,  //image beneath the label
    UIBUttonImagePositionRight    //image at the right of label
};

@interface UIButton (AutolayoutExtension)

/**
 * Set the title and image on button
 * @param imagePosition imagePosition
 * @param space the space between title and image
 */
- (void)layoutButtonWithImagePositionType:(UIBUttonImagePosition)imagePosition space:(CGFloat)space;

@end
