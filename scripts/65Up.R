# -------------------------- #
## Population de 1960 à 2010

DFpercentage65UpByYears_init <- data.frame("Years" = 1960:2010, "Europe" = 1960:2010, "World"= 1960:2010)

# Pourcentage +65 ans Monde de 1960 à 2010
worldYears65Up <- rangeBetweenColumByName(world65Up, "X1960..YR1960.", "X2010..YR2010.")
worldYears <- rangeBetweenColumByName(world, "X1960..YR1960.", "X2010..YR2010.")
percentage65UpByYears_World <- 100 * worldYears65Up / worldYears
temp <- as.data.frame(t(percentage65UpByYears_World))
colnames(temp)[1] = "World"
DFpercentage65UpByYears_init$World <- temp$World

# Pourcentage +65 ans Europe de 1960 à 2010
europeYears65Up <- rangeBetweenColumByName(europe65Up, "X1960..YR1960.", "X2010..YR2010.")
europeYears <- rangeBetweenColumByName(europe, "X1960..YR1960.", "X2010..YR2010.")
percentage65UpByYears_Europe <- 100 * europeYears65Up / europeYears
temp <- as.data.frame(t(percentage65UpByYears_Europe))
colnames(temp)[1] = "Europe"
DFpercentage65UpByYears_init$Europe <- temp$Europe

# Création de la data frame pour le plot
DFpercentage65UpByYears_world <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'World') %>% 
  mutate(percentage65Up = World) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears_europe <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'Europe') %>% 
  mutate(percentage65Up = Europe) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears <- bind_rows(DFpercentage65UpByYears_world,DFpercentage65UpByYears_europe)

# -------------------------- #

# -------------------------- #
## Population de 2011 à 2017

DFpercentage65UpByYears_init <- data.frame("Years" = 2011:2017, "Europe" = 2011:2017, "World"= 2011:2017)

# Pourcentage +65 ans Monde de 2011 à 2017
worldYears65Up11_17 <- rangeBetweenColumByName(world65Up, "X2011..YR2011.", "X2017..YR2017.")
worldYears11_17 <- rangeBetweenColumByName(world, "X2011..YR2011.", "X2017..YR2017.")
percentage65UpByYears_World11_17 <- 100 * worldYears65Up11_17 / worldYears11_17
temp <- as.data.frame(t(percentage65UpByYears_World11_17))
colnames(temp)[1] = "World"
DFpercentage65UpByYears_init$World <- temp$World

# Pourcentage +65 ans Europe de 2011 à 2017
europeYears65Up11_17 <- rangeBetweenColumByName(europe65Up, "X2011..YR2011.", "X2017..YR2017.")
europeYears11_17 <- rangeBetweenColumByName(europe, "X2011..YR2011.", "X2017..YR2017.")
percentage65UpByYears_Europe11_17 <- 100 * europeYears65Up11_17 / europeYears11_17
temp <- as.data.frame(t(percentage65UpByYears_Europe11_17))
colnames(temp)[1] = "Europe"
DFpercentage65UpByYears_init$Europe <- temp$Europe

# Création de la data frame pour le plot
DFpercentage65UpByYears_world <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'World') %>% 
  mutate(percentage65Up = World) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears_europe <- DFpercentage65UpByYears_init %>% 
  mutate(region = 'Europe') %>% 
  mutate(percentage65Up = Europe) %>% 
  select(Years,region, percentage65Up)

DFpercentage65UpByYears11_17 <- bind_rows(DFpercentage65UpByYears_world,DFpercentage65UpByYears_europe)

# -------------------------- #