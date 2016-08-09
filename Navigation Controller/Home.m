//
//  ViewController.m
//  Navigation Controller
//
//  Created by Daniel on 8/3/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import "Home.h"


@interface Home ()
@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationDescriptions;
@property NSMutableArray *destinationPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;



@end

@implementation Home

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view, typically from a nib.
}
//-------------------------------------------------------------------------------
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)initController {

    self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"image1.png", @"image2.png", @"image3.png", @"image4.png",@"image5.png", nil];
    self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
    self.destinationTitles         = [[NSMutableArray alloc] initWithObjects: @"Utah", @"NuevaZelanda", @"Yakutia", @"Venezuela",@"San Blas", nil];
    
    
    
    /*self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"LaytonMountain.jpg", @"OremUniversity.jpg", @"provomontanas.jpg", @"SaladeroUtah.jpg",@"SandyCordillero.jpg", nil];
    self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
    self.destinationTitles         = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];*/
    
    
    
    

     
     
     /*self.destinationPhotosNuevaZelanda         = [[NSMutableArray alloc] initWithObjects: @"image1_1.png", @"image1_2.png", @"image1_3.png", @"image1_4.png",@"image1_5.png", nil];
     self.destinationDescriptionsNuevaZelanda   = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
     self.destinationTitlesNuevaZelanda         = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];
     
     
     self.destinationPhotosYakutia         = [[NSMutableArray alloc] initWithObjects: @"image1_1.png", @"image1_2.png", @"image1_3.png", @"image1_4.png",@"image1_5.png", nil];
     self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
     self.destinationTitles         = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];
     
     
     self.destinationPhotosVenezuela         = [[NSMutableArray alloc] initWithObjects: @"image1_1.png", @"image1_2.png", @"image1_3.png", @"image1_4.png",@"image1_5.png", nil];
     self.destinationDescriptionsVenezuela    = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
     self.destinationTitlesVenezuela          = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];
     
     self.destinationPhotosSanblas         = [[NSMutableArray alloc] initWithObjects: @"image1_1.png", @"image1_2.png", @"image1_3.png", @"image1_4.png",@"image1_5.png", nil];
     self.destinationDescriptionsSanblas   = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
     self.destinationTitlesSanblas         = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];
     */
}
/**********************************************************************************************/
#pragma mark - Table source and delegate methods
/**********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.destinationTitles.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellHome *cell = (cellHome *)[tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellHome" bundle:nil] forCellReuseIdentifier:@"cellHome"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellHome"];
    }
    //Fill cell with info from arrays
    cell.imgDestination.image        = [UIImage imageNamed:self.destinationPhotos[indexPath.row]];
    cell.lblDestination.text    = self.destinationTitles[indexPath.row];
    cell.lblDescription.text         = self.destinationDescriptions[indexPath.row];
    
    
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSelected        = self.destinationTitles[indexPath.row];
    self.stDescriptionSelected  = self.destinationDescriptions[indexPath.row];
    self.stPhotoSelected        = self.destinationPhotos[indexPath.row];
    [self performSegueWithIdentifier:@"DestinationDetails" sender:self];
    
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[DestinationDetails class]]) {
       DestinationDetails *destination     = [segue destinationViewController];
        destination.destinationTitle        = self.stTitleSelected;
        destination.destinationDescription  = self.stDescriptionSelected;
        destination.destinationPhoto        = self.stPhotoSelected;
        
    }
}
    
@end
