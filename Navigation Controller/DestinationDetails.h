//
//  DestinationDetails.h
//  Navigation Controller
//
//  Created by Daniel on 8/4/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DestinationDetails : UIViewController

@property NSString *destinationTitle;
@property NSString *destinationDescription;
@property NSString *destinationPhoto;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription;
@property (strong, nonatomic) IBOutlet UILabel *imgDestination;

/*@property (strong, nonatomic) IBOutlet UIImageView *imgDestination;
@property (strong, nonatomic) IBOutlet UILabel *lblTitle;
@property (strong, nonatomic) IBOutlet UILabel *lblDescription;*/
@end
