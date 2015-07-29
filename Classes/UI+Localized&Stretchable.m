//
//  UI+Localized&Stretchable.m
//  Dealabs
//
//  Created by Raphaël Pinto on 28/07/2015.
//  Copyright (c) 2015 HUME Network. All rights reserved.
//

#import "UI+Localized&Stretchable.h"



#pragma mark -
#pragma mark UILabel + Localized
#pragma mark -



@implementation UILabel (UI_Localized)

- (void)awakeFromNib
{
    self.text = NSLocalizedString(self.text, self.text);
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.preferredMaxLayoutWidth = self.bounds.size.width;
}

@end



#pragma mark -
#pragma mark UITextfield + Localized
#pragma mark -



@implementation UITextField (UI_Localized)

- (void)awakeFromNib
{
    self.placeholder = NSLocalizedString(self.placeholder, @"");
    self.text = NSLocalizedString(self.text, @"");
    
    UIImage *bgImage = [self background];
    if (bgImage != nil)
    {
        bgImage = [bgImage stretchableImageWithLeftCapWidth:(int)bgImage.size.width / 2.0 topCapHeight:(int)bgImage.size.height / 2.0];
        [self setBackground:bgImage];
    }
}

@end



#pragma mark -
#pragma mark UIButton + Localized
#pragma mark -



@implementation UIButton (UI_Localized)

- (void)awakeFromNib
{
    [self setTitle:NSLocalizedString(self.titleLabel.text, @"") forState:UIControlStateNormal];
    [self setTitle:NSLocalizedString(self.titleLabel.text, @"") forState:UIControlStateSelected];
    [self setTitle:NSLocalizedString(self.titleLabel.text, @"") forState:UIControlStateDisabled];
    [self setTitle:NSLocalizedString(self.titleLabel.text, @"") forState:UIControlStateHighlighted];
    
    // BG Image
    UIImage *bgImage = [self backgroundImageForState:UIControlStateNormal];
    if (bgImage != nil)
    {
        bgImage = [bgImage stretchableImageWithLeftCapWidth:(int)bgImage.size.width / 2.0 topCapHeight:(int)bgImage.size.height / 2.0];
        [self setBackgroundImage:bgImage forState:UIControlStateNormal];		}
    
    UIImage *bgHlImage = [self backgroundImageForState:UIControlStateHighlighted];
    if (bgHlImage != nil)
    {
        bgHlImage = [bgHlImage stretchableImageWithLeftCapWidth:(int)bgHlImage.size.width / 2.0 topCapHeight:(int)bgHlImage.size.height / 2.0];
        [self setBackgroundImage:bgHlImage forState:UIControlStateHighlighted];
    }
    
    UIImage *bgSelectedImage = [self backgroundImageForState:UIControlStateSelected];
    if (bgSelectedImage != nil)
    {
        bgSelectedImage = [bgSelectedImage stretchableImageWithLeftCapWidth:(int)bgSelectedImage.size.width / 2.0 topCapHeight:(int)bgSelectedImage.size.height / 2.0];
        [self setBackgroundImage:bgSelectedImage forState:UIControlStateSelected];
    }
    
    UIImage *bgDisabledImage = [self backgroundImageForState:UIControlStateDisabled];
    if (bgDisabledImage != nil)
    {
        bgDisabledImage = [bgDisabledImage stretchableImageWithLeftCapWidth:(int)bgDisabledImage.size.width / 2.0 topCapHeight:(int)bgDisabledImage.size.height / 2.0];
        [self setBackgroundImage:bgDisabledImage forState:UIControlStateDisabled];
    }
    
    // Image
    UIImage *image = [self imageForState:UIControlStateNormal];
    if (image != nil)
    {
        image = [image stretchableImageWithLeftCapWidth:(int)image.size.width / 2.0 topCapHeight:(int)image.size.height / 2.0];
        [self setImage:image forState:UIControlStateNormal];
    }
    
    UIImage *hlImage = [self imageForState:UIControlStateHighlighted];
    if (hlImage != nil)
    {
        hlImage = [hlImage stretchableImageWithLeftCapWidth:(int)hlImage.size.width / 2.0 topCapHeight:(int)hlImage.size.height / 2.0];
        [self setImage:hlImage forState:UIControlStateHighlighted];
    }
    
    UIImage *selectedImage = [self imageForState:UIControlStateSelected];
    if (selectedImage != nil)
    {
        selectedImage = [selectedImage stretchableImageWithLeftCapWidth:(int)selectedImage.size.width / 2.0 topCapHeight:(int)selectedImage.size.height / 2.0];
        [self setImage:selectedImage forState:UIControlStateSelected];
    }
    
    UIImage *disabledImage = [self backgroundImageForState:UIControlStateDisabled];
    if (disabledImage != nil)
    {
        disabledImage = [disabledImage stretchableImageWithLeftCapWidth:(int)disabledImage.size.width / 2.0 topCapHeight:(int)disabledImage.size.height / 2.0];
        [self setImage:disabledImage forState:UIControlStateDisabled];
    }
}


- (CGSize) intrinsicContentSize
{
    CGSize s = [super intrinsicContentSize];
    
    return CGSizeMake(s.width + self.titleEdgeInsets.left + self.titleEdgeInsets.right,
                      s.height + self.titleEdgeInsets.top + self.titleEdgeInsets.bottom);
    
}


@end



#pragma mark -
#pragma mark UITextView + Localized
#pragma mark -



@implementation UITextView (UI_Localized)

- (void)awakeFromNib
{
    self.text = NSLocalizedString(self.text, @"");
}

@end
