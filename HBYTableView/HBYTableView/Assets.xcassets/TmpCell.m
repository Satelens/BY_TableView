//
//  TmpCell.m
//  HBYTableView
//
//  Created by Satelens on 16/6/14.
//  Copyright © 2016年 Satelens. All rights reserved.
//

#import "TmpCell.h"
#import "HBYCellConfigure.h"

@interface TmpCell () <HBYCellConfigure>

@end

@implementation TmpCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.backgroundColor = [UIColor redColor];
        _label1 = [[UILabel alloc] init];
        _label1.translatesAutoresizingMaskIntoConstraints = NO;
        _label1.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:_label1];
        
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_label1]|" options:0 metrics:nil views:@{@"_label1": _label1}]];
        [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|[_label1]|" options:0 metrics:nil views:@{@"_label1": _label1}]];
    }
    return self;
}

-(void)configureCellWithModel:(id)model {
    _label1.text = model;
}


@end
