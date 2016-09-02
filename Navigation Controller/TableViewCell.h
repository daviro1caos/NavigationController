//
//  TableViewCell.h
//  Navigation Controller
//
//  Created by Daniel on 9/1/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DestinationDetails.h"

@interface TableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel *LabelProducto;
@property (strong, nonatomic) IBOutlet UILabel *LabelPrecio;
@property (strong, nonatomic) IBOutlet UIImageView *imgProducto;

@end
