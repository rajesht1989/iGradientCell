//
//  TableViewCell.m
//  GradientCell
//
//  Created by Rajesh on 5/27/15.
//

#import "TableViewCell.h"

@implementation TableViewCell

- (void)awakeFromNib {
    [self.contentView setFrame:CGRectMake(0, 0, 320, 44)];
        imageView = [[UIImageView alloc] initWithFrame:self.contentView.bounds];
    [imageView setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth ];
            [self.contentView addSubview:imageView];
    
            viewGradient = [[UIView alloc] initWithFrame:self.contentView.bounds];
        [viewGradient setAutoresizingMask:UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth ];
            [self.contentView addSubview:viewGradient];
            gradientLayer = [CAGradientLayer layer];
            gradientLayer.frame = viewGradient.bounds;
            [gradientLayer setStartPoint:CGPointMake(0.0, 0.5)];
            [gradientLayer setEndPoint:CGPointMake(1.0, 0.5)];
            [viewGradient.layer insertSublayer:gradientLayer atIndex:0];
    
}

- (void)setImage:(UIImage *)image andColor:(UIColor *)color
{
    [imageView setImage:image];
    gradientLayer.colors = [NSArray arrayWithObjects:(id)[[UIColor clearColor] CGColor], (id)[color CGColor], nil];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
