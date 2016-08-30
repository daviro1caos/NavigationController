//
//  ViewController.m
//  Navigation Controller
//
//  Created by Daniel on 8/3/16.
//  Copyright © 2016 DanielCompany. All rights reserved.
//

#import "Home.h"
//int destinationEstadosarmador;

@interface Home ()
@property NSMutableArray *destinationTitles;
@property NSMutableArray *destinationDescriptions;
@property NSMutableArray *destinationPhotos;

@property NSString *stTitleSelected;
@property NSString *stDescriptionSelected;
@property NSString *stPhotoSelected;

@property NSMutableArray *destinationTitlesNZ;
@property NSMutableArray *destinationDescriptionsNZ;
@property NSMutableArray *destinationPhotosNZ;



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
    
    
    self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"LaytonMountain.jpg", @"OremUniversity.jpg", @"provomontanas.jpg", @"SaladeroUtah.jpg",@"SandyCordillera.jpg", nil];
     self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
     self.destinationTitles         = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];

    self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"NZBay.jpg", @"NZnorthland.jpg", @"NZSangisborn.jpg", @"NZwaikato.jpg",@"NZauckland.jpg", nil];
    self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
    self.destinationTitles        = [[NSMutableArray alloc] initWithObjects: @"Bay", @"NuevaZelanda northland", @"Nueva Zelanda Sangisborn", @"NuevaZelanda Waikato",@"Nueva Zeanda auckland", nil];
    
    
    self.destinationPhotosNZ         = [[NSMutableArray alloc] initWithObjects: @"YakutiaEsquimal.jpg", @"YakutiaLago.jpg", @"YakutiaBlackForest.jpg", @"Yakutiamina.jpg",@"YakutiaMongol.jpg", nil];
    self.destinationDescriptionsNZ   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
    self.destinationTitlesNZ        = [[NSMutableArray alloc] initWithObjects: @"Bay", @"NuevaZelanda northland", @"Nueva Zelanda Sangisborn", @"NuevaZelanda Waikato",@"Nueva Zeanda auckland", nil];
    
    
    if(destinationEstadosarmador == 0)
        
    {
        
        self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"LaytonMountain.jpg", @"OremUniversity.jpg", @"provomontanas.jpg", @"SaladeroUtah.jpg",@"SandyCordillera.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Saladero", @"Mont;as con ciervos", @"Valley University", @"Cordillera Sasaht",@"Lagos de dehielo", nil];
        self.destinationTitles         = [[NSMutableArray alloc] initWithObjects: @"Salt lake city", @"Provo", @"Orem", @"Sandy",@"layton", nil];
        
        
    }
    else if(destinationEstadosarmador == 1)
    {
        self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"NZBay.jpg", @"NZnorthland.jpg", @"NZSangisborn.jpg", @"NZwaikato.jpg",@"NZauckland.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
        self.destinationTitles        = [[NSMutableArray alloc] initWithObjects: @"Bay", @"NuevaZelanda northland", @"Nueva Zelanda Sangisborn", @"NuevaZelanda Waikato",@"Nueva Zeanda auckland", nil];
        
    }
    
    else if(destinationEstadosarmador == 2)
    {
        
        self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"YakutiaEsquimal.jpg", @"YakutiaLago.jpg", @"YakutiaBlackForest.jpg", @"Yakutiamina.jpg",@"YakutiaMongol.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
        self.destinationTitles       = [[NSMutableArray alloc] initWithObjects: @"Bay", @"NuevaZelanda northland", @"Nueva Zelanda Sangisborn", @"NuevaZelanda Waikato",@"Nueva Zeanda auckland", nil];
        
        
    }
    
    else if(destinationEstadosarmador == 3)
    {
        self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"VmedanasOro.jpg", @"VSalBay.jpg", @"VSaltoAngel.jpg", @"Vsequia.jpg",@"Vsouth.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
        self.destinationTitles       = [[NSMutableArray alloc] initWithObjects: @"Bay", @"NuevaZelanda northland", @"Nueva Zelanda Sangisborn", @"NuevaZelanda Waikato",@"Nueva Zeanda auckland", nil];
        
    }
    
    else if(destinationEstadosarmador == 4)
    {
        self.destinationPhotos         = [[NSMutableArray alloc] initWithObjects: @"SBPresidente.jpg", @"SBTemplo.jpg", @"SBTobara.jpg", @"SBIslaPiedra.jpg",@"SBCocodrilario.jpg", nil];
        self.destinationDescriptions   = [[NSMutableArray alloc] initWithObjects: @"Desierto Navajo", @"Rio de deshielo", @"Lugar habitado mas frio del mundo", @"Cascada del salto",@"Muelle de San Blas", nil];
        self.destinationTitles       = [[NSMutableArray alloc] initWithObjects: @"Bay", @"NuevaZelanda northland", @"Nueva Zelanda Sangisborn", @"NuevaZelanda Waikato",@"Nueva Zeanda auckland", nil];
        
    }
    
    
    switch(destinationEstadosarmador)
    {
        case 0:
            
            break;
            
        case 1:
            
            
            break;
            
        case 2:
            
            break;
            
        case 3:
            
            break;
            
        case 4:
            
            break;
            
            
            
    }
    
    
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
    

    
       

    /*cell.imgDestination.image        = [UIImage imageNamed:self.destinationPhotosNZ[indexPath.row]];
    cell.lblDestination.text    = self.destinationTitlesNZ[indexPath.row];
    cell.lblDescription.text         = self.destinationDescriptionsNZ[indexPath.row];*/
    
    
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
