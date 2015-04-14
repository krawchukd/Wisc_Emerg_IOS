//
//  ChecklistListsTableViewCell.h
//  Emergency_Wisconsin_IOS
//
//  Created by David Krawchuk on 4/14/15.
//  Copyright (c) 2015 UniversityOfWisconsinParkside. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ChecklistListsTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIProgressView *progressBar;
@property (weak, nonatomic) IBOutlet UILabel *label;
@end
