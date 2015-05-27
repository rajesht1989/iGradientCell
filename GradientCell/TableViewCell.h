//
//  TableViewCell.h
//  GradientCell
//
//  Created by Rajesh on 5/27/15.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell
{
    UIImageView *imageView;
    UIView *viewGradient;
    CAGradientLayer *gradientLayer;
}

- (void)setImage:(UIImage *)image andColor:(UIColor *)color;

@end
