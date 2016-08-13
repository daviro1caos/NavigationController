//
//  Estados.m
//  Navigation Controller
//
//  Created by Daniel on 8/8/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import "Estados.h"

int destinationEstadosarmador=0;
@interface Estados ()



@property NSMutableArray *destinationTitlesUtah;
@property NSMutableArray *destinationDescriptionsUtah;
@property NSMutableArray *destinationPhotosUtah;

@property NSString *stTitleSelectedUtah;
@property NSString *stDescriptionSelectedUtah;
@property NSString *stPhotoSelectedUtah;



@end

@implementation Estados

/**********************************************************************************************/
#pragma mark - Initialization methods
/**********************************************************************************************/

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initController];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (void)initController {
    

    self.destinationPhotosUtah         = [[NSMutableArray alloc] initWithObjects: @"image1.png", @"image2.png", @"image3.png", @"image4.png",@"image5.png", nil];
    self.destinationDescriptionsUtah   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
    self.destinationTitlesUtah         = [[NSMutableArray alloc] initWithObjects: @"Utah", @"NuevaZelanda", @"Yakutia", @"Venezuela",@"San Blas", nil];
    
    /*self.destinationPhotosUtah         = [[NSMutableArray alloc] initWithObjects: @"NZauckland.jpg", @"NZBay.jpg", @"NZnorthland.jpg", @"NZSangisborn.jpg",@"NZSangisborn.jpg", nil];
    self.destinationDescriptionsUtah   = [[NSMutableArray alloc] initWithObjects: @"Norte sin invierno", @"desembocadura del Kaipara", @"paisajes verdes, colinas y actividad agropecuaria", @"rodeada por las cordilleras Mamaku",@" superficie terrestre más alejado", nil];
    self.destinationTitlesUtah         = [[NSMutableArray alloc] initWithObjects: @"Northland", @"Auckland", @"Waikato", @"Bay",@"San Gisborn", nil];*/
    
    /*self.destinationPhotosUtah         = [[NSMutableArray alloc] initWithObjects: @"LaytonMountain.jpg", @"OremUniversity.jpg", @"provomontanas.jpg", @"SaladeroUtah.jpg",@"SandyCordillero.jpg", nil];
    self.destinationDescriptionsUtah   = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
    self.destinationTitlesUtah         = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];*/
    
    
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
    return 5/*self.destinationTitlesUtah.count*/;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 110;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    //Initialize cells
    cellEstados *cell = (cellEstados *)[tableView dequeueReusableCellWithIdentifier:@"cellEstados"];
    
    if (cell == nil) {
        [tableView registerNib:[UINib nibWithNibName:@"cellEstados" bundle:nil] forCellReuseIdentifier:@"cellEstados"];
        cell = [tableView dequeueReusableCellWithIdentifier:@"cellEstados"];
    }
    //Fill cell with info from arrays
    cell.imgEstados.image        = [UIImage imageNamed:self.destinationPhotosUtah[indexPath.row]];
    cell.LabelDestiantionEstados.text    = self.destinationTitlesUtah[indexPath.row];
    cell.LabelDescriptionEstados.text         = self.destinationDescriptionsUtah[indexPath.row];
    
    
    
    return cell;
}
//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    self.stTitleSelectedUtah        = self.destinationTitlesUtah[indexPath.row];
    self.stDescriptionSelectedUtah  = self.destinationDescriptionsUtah[indexPath.row];
    self.stPhotoSelectedUtah        = self.destinationPhotosUtah[indexPath.row];
    [self performSegueWithIdentifier:@"Home" sender:self];
     //Home wordLevel  = indexPath.row;
    destinationEstadosarmador = indexPath.row;
    
}

/**********************************************************************************************/
#pragma mark - Navigation
/**********************************************************************************************/
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([segue.destinationViewController isKindOfClass:[Home class]]) {
       Home *destinationEstados     = [segue destinationViewController];
       destinationEstados.destinationTitlesUtah        = self.stTitleSelectedUtah;
       // Home wordLevel  = ;
       //destinationEstadosarmador  = self.stTitleSelectedUtah;
        /*destination.destinationDescription  = self.stDescriptionSelectedUtah;
        destination.destinationPhoto        = self.stPhotoSelectedUtah;*/
   }
}

@end
