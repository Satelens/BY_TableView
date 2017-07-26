//
//  HBYDataSource.h
//  HBYTableView
//
//  Created by Satelens on 16/6/14.
//  Copyright © 2016年 Satelens. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HBYCellConfigure.h"

typedef void (^CellConfigureBefore)(id cell, id model, NSIndexPath * indexPath);

@interface HBYDataSource : NSObject <UITableViewDataSource>


//--------- For Code
- (id)initWithIdentifier:(NSString *)identifier configureBlock:(CellConfigureBefore)before;

//--------- For StoryBoard

@property (nonatomic, strong) NSString *cellIdentifier;

@property (nonatomic, copy) CellConfigureBefore cellConfigureBefore;

@property (nonatomic, assign) CGFloat cellH;

//---------Public

- (void)addModels:(NSArray *)models;

- (id)modelsAtIndexPath:(NSIndexPath *)indexPath;

@end
