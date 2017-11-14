# !! Warning: it is a poor man's script - need to make it concise (using parsing more) !!

library(shiny)
library(datasets)
library(ggplot2)

table.state.Alabama      = read.csv("./csv_files/table.state.Alabama.csv", sep=" ")
table.state.Alaska       = read.csv("./csv_files/table.state.Alaska.csv", sep=" ")
table.state.Arizona      = read.csv("./csv_files/table.state.Arizona.csv", sep=" ")
table.state.Arkansas     = read.csv("./csv_files/table.state.Arkansas.csv", sep=" ")
table.state.California   = read.csv("./csv_files/table.state.California.csv", sep=" ")
table.state.Colorado     = read.csv("./csv_files/table.state.Colorado.csv", sep=" ")
table.state.Connecticut  = read.csv("./csv_files/table.state.Connecticut.csv", sep=" ")
table.state.Delaware     = read.csv("./csv_files/table.state.Delaware.csv", sep=" ")
table.state.DofColumbia  = read.csv("./csv_files/table.state.DofColumbia.csv", sep=" ")
table.state.Florida      = read.csv("./csv_files/table.state.Florida.csv", sep=" ")
table.state.Georgia      = read.csv("./csv_files/table.state.Georgia.csv", sep=" ")
table.state.Hawaii       = read.csv("./csv_files/table.state.Hawaii.csv", sep=" ")
table.state.Idaho        = read.csv("./csv_files/table.state.Idaho.csv", sep=" ")
table.state.Illinois     = read.csv("./csv_files/table.state.Illinois.csv", sep=" ")
table.state.Indiana      = read.csv("./csv_files/table.state.Indiana.csv", sep=" ")
table.state.Iowa         = read.csv("./csv_files/table.state.Iowa.csv", sep=" ")
table.state.Kansas       = read.csv("./csv_files/table.state.Kansas.csv", sep=" ")
table.state.Kentucky     = read.csv("./csv_files/table.state.Kentucky.csv", sep=" ")
table.state.Louisiana    = read.csv("./csv_files/table.state.Louisiana.csv", sep=" ")
table.state.Maine        = read.csv("./csv_files/table.state.Maine.csv", sep=" ")
table.state.Maryland     = read.csv("./csv_files/table.state.Maryland.csv", sep=" ")
table.state.Massachusetts= read.csv("./csv_files/table.state.Massachusetts.csv", sep=" ")
table.state.Michigan     = read.csv("./csv_files/table.state.Michigan.csv", sep=" ")
table.state.Minnesota    = read.csv("./csv_files/table.state.Minnesota.csv", sep=" ")
table.state.Mississippi  = read.csv("./csv_files/table.state.Mississippi.csv", sep=" ")
table.state.Missouri     = read.csv("./csv_files/table.state.Missouri.csv", sep=" ")
table.state.Montana      = read.csv("./csv_files/table.state.Montana.csv", sep=" ")
table.state.Nebraska     = read.csv("./csv_files/table.state.Nebraska.csv", sep=" ")
table.state.Nevada       = read.csv("./csv_files/table.state.Nevada.csv", sep=" ")
table.state.NewHampshire = read.csv("./csv_files/table.state.NewHampshire.csv", sep=" ")
table.state.NewJersey    = read.csv("./csv_files/table.state.NewJersey.csv", sep=" ")
table.state.NewMexico    = read.csv("./csv_files/table.state.NewMexico.csv", sep=" ")
table.state.NewYork      = read.csv("./csv_files/table.state.NewYork.csv", sep=" ")
table.state.NorthCarolina= read.csv("./csv_files/table.state.NorthCarolina.csv", sep=" ")
table.state.NorthDakota  = read.csv("./csv_files/table.state.NorthDakota.csv", sep=" ")
table.state.Ohio         = read.csv("./csv_files/table.state.Ohio.csv", sep=" ")
table.state.Oklahoma     = read.csv("./csv_files/table.state.Oklahoma.csv", sep=" ")
table.state.Oregon       = read.csv("./csv_files/table.state.Oregon.csv", sep=" ")
table.state.Pennsylvania = read.csv("./csv_files/table.state.Pennsylvania.csv", sep=" ")
table.state.RhodeIsland  = read.csv("./csv_files/table.state.RhodeIsland.csv", sep=" ")
table.state.SouthCarolina= read.csv("./csv_files/table.state.SouthCarolina.csv", sep=" ")
table.state.SouthDakota  = read.csv("./csv_files/table.state.SouthDakota.csv", sep=" ")
table.state.Tennessee    = read.csv("./csv_files/table.state.Tennessee.csv", sep=" ")
table.state.Texas        = read.csv("./csv_files/table.state.Texas.csv", sep=" ")
table.state.Utah         = read.csv("./csv_files/table.state.Utah.csv", sep=" ")
table.state.Vermont      = read.csv("./csv_files/table.state.Vermont.csv", sep=" ")
table.state.Virginia     = read.csv("./csv_files/table.state.Virginia.csv", sep=" ")
table.state.Washington   = read.csv("./csv_files/table.state.Washington.csv", sep=" ")
table.state.WestVirginia = read.csv("./csv_files/table.state.WestVirginia.csv", sep=" ")
table.state.Wisconsin    = read.csv("./csv_files/table.state.Wisconsin.csv", sep=" ")
table.state.Wyoming      = read.csv("./csv_files/table.state.Wyoming.csv", sep=" ")

sorted.Empl.Alabama                 <- table.state.Alabama[order(table.state.Alabama$Fraction_Employment),]
sorted.Empl.Alaska                  <- table.state.Alaska[order(table.state.Alaska$Fraction_Employment),]
sorted.Empl.Arizona      	    <- table.state.Arizona[order(table.state.Arizona       $Fraction_Employment),]
sorted.Empl.Arkansas     	    <- table.state.Arkansas[order(table.state.Arkansas      $Fraction_Employment),]
sorted.Empl.California   	    <- table.state.California[order(table.state.California    $Fraction_Employment),]
sorted.Empl.Colorado     	    <- table.state.Colorado[order(table.state.Colorado      $Fraction_Employment),]
sorted.Empl.Connecticut  	    <- table.state.Connecticut[order(table.state.Connecticut   $Fraction_Employment),]
sorted.Empl.Delaware     	    <- table.state.Delaware[order(table.state.Delaware      $Fraction_Employment),]
sorted.Empl.DofColumbia  	    <- table.state.DofColumbia[order(table.state.DofColumbia   $Fraction_Employment),]
sorted.Empl.Florida      	    <- table.state.Florida[order(table.state.Florida       $Fraction_Employment),]
sorted.Empl.Georgia      	    <- table.state.Georgia[order(table.state.Georgia       $Fraction_Employment),]
sorted.Empl.Hawaii       	    <- table.state.Hawaii[order(table.state.Hawaii        $Fraction_Employment),]
sorted.Empl.Idaho        	    <- table.state.Idaho[order(table.state.Idaho         $Fraction_Employment),]
sorted.Empl.Illinois     	    <- table.state.Illinois[order(table.state.Illinois      $Fraction_Employment),]
sorted.Empl.Indiana      	    <- table.state.Indiana[order(table.state.Indiana       $Fraction_Employment),]
sorted.Empl.Iowa         	    <- table.state.Iowa[order(table.state.Iowa          $Fraction_Employment),]
sorted.Empl.Kansas       	    <- table.state.Kansas[order(table.state.Kansas        $Fraction_Employment),]
sorted.Empl.Kentucky     	    <- table.state.Kentucky[order(table.state.Kentucky      $Fraction_Employment),]
sorted.Empl.Louisiana    	    <- table.state.Louisiana[order(table.state.Louisiana     $Fraction_Employment),]
sorted.Empl.Maine        	    <- table.state.Maine[order(table.state.Maine         $Fraction_Employment),]
sorted.Empl.Maryland     	    <- table.state.Maryland[order(table.state.Maryland      $Fraction_Employment),]
sorted.Empl.Massachusetts	    <- table.state.Massachusetts[order(table.state.Massachusetts $Fraction_Employment),]
sorted.Empl.Michigan     	    <- table.state.Michigan[order(table.state.Michigan      $Fraction_Employment),]
sorted.Empl.Minnesota    	    <- table.state.Minnesota[order(table.state.Minnesota     $Fraction_Employment),]
sorted.Empl.Mississippi  	    <- table.state.Mississippi[order(table.state.Mississippi   $Fraction_Employment),]
sorted.Empl.Missouri     	    <- table.state.Missouri[order(table.state.Missouri      $Fraction_Employment),]
sorted.Empl.Montana      	    <- table.state.Montana[order(table.state.Montana       $Fraction_Employment),]
sorted.Empl.Nebraska     	    <- table.state.Nebraska[order(table.state.Nebraska      $Fraction_Employment),]
sorted.Empl.Nevada       	    <- table.state.Nevada[order(table.state.Nevada        $Fraction_Employment),]
sorted.Empl.NewHampshire 	    <- table.state.NewHampshire[order(table.state.NewHampshire  $Fraction_Employment),]
sorted.Empl.NewJersey    	    <- table.state.NewJersey[order(table.state.NewJersey     $Fraction_Employment),]
sorted.Empl.NewMexico    	    <- table.state.NewMexico[order(table.state.NewMexico     $Fraction_Employment),]
sorted.Empl.NewYork      	    <- table.state.NewYork[order(table.state.NewYork       $Fraction_Employment),]
sorted.Empl.NorthCarolina	    <- table.state.NorthCarolina[order(table.state.NorthCarolina $Fraction_Employment),]
sorted.Empl.NorthDakota  	    <- table.state.NorthDakota[order(table.state.NorthDakota   $Fraction_Employment),]
sorted.Empl.Ohio         	    <- table.state.Ohio[order(table.state.Ohio          $Fraction_Employment),]
sorted.Empl.Oklahoma     	    <- table.state.Oklahoma[order(table.state.Oklahoma      $Fraction_Employment),]
sorted.Empl.Oregon       	    <- table.state.Oregon[order(table.state.Oregon        $Fraction_Employment),]
sorted.Empl.Pennsylvania 	    <- table.state.Pennsylvania[order(table.state.Pennsylvania  $Fraction_Employment),]
sorted.Empl.RhodeIsland  	    <- table.state.RhodeIsland[order(table.state.RhodeIsland   $Fraction_Employment),]
sorted.Empl.SouthCarolina	    <- table.state.SouthCarolina[order(table.state.SouthCarolina $Fraction_Employment),]
sorted.Empl.SouthDakota  	    <- table.state.SouthDakota[order(table.state.SouthDakota   $Fraction_Employment),]
sorted.Empl.Tennessee    	    <- table.state.Tennessee[order(table.state.Tennessee     $Fraction_Employment),]
sorted.Empl.Texas        	    <- table.state.Texas[order(table.state.Texas         $Fraction_Employment),]
sorted.Empl.Utah         	    <- table.state.Utah[order(table.state.Utah          $Fraction_Employment),]
sorted.Empl.Vermont      	    <- table.state.Vermont[order(table.state.Vermont       $Fraction_Employment),]
sorted.Empl.Virginia     	    <- table.state.Virginia[order(table.state.Virginia      $Fraction_Employment),]
sorted.Empl.Washington   	    <- table.state.Washington[order(table.state.Washington    $Fraction_Employment),]
sorted.Empl.WestVirginia 	    <- table.state.WestVirginia[order(table.state.WestVirginia  $Fraction_Employment),]
sorted.Empl.Wisconsin    	    <- table.state.Wisconsin[order(table.state.Wisconsin     $Fraction_Employment),]
sorted.Empl.Wyoming                 <- table.state.Wyoming[order(table.state.Wyoming       $Fraction_Employment),]    

sorted.Payroll.Alabama              <- table.state.Alabama[order(table.state.Alabama$Payroll),]
sorted.Payroll.Alaska               <- table.state.Alaska[order(table.state.Alaska$Payroll),]
sorted.Payroll.Arizona      	    <- table.state.Arizona[order(table.state.Arizona       $Payroll),]
sorted.Payroll.Arkansas     	    <- table.state.Arkansas[order(table.state.Arkansas      $Payroll),]
sorted.Payroll.California   	    <- table.state.California[order(table.state.California    $Payroll),]
sorted.Payroll.Colorado     	    <- table.state.Colorado[order(table.state.Colorado      $Payroll),]
sorted.Payroll.Connecticut  	    <- table.state.Connecticut[order(table.state.Connecticut   $Payroll),]
sorted.Payroll.Delaware     	    <- table.state.Delaware[order(table.state.Delaware      $Payroll),]
sorted.Payroll.DofColumbia  	    <- table.state.DofColumbia[order(table.state.DofColumbia   $Payroll),]
sorted.Payroll.Florida      	    <- table.state.Florida[order(table.state.Florida       $Payroll),]
sorted.Payroll.Georgia      	    <- table.state.Georgia[order(table.state.Georgia       $Payroll),]
sorted.Payroll.Hawaii       	    <- table.state.Hawaii[order(table.state.Hawaii        $Payroll),]
sorted.Payroll.Idaho        	    <- table.state.Idaho[order(table.state.Idaho         $Payroll),]
sorted.Payroll.Illinois     	    <- table.state.Illinois[order(table.state.Illinois      $Payroll),]
sorted.Payroll.Indiana      	    <- table.state.Indiana[order(table.state.Indiana       $Payroll),]
sorted.Payroll.Iowa         	    <- table.state.Iowa[order(table.state.Iowa          $Payroll),]
sorted.Payroll.Kansas       	    <- table.state.Kansas[order(table.state.Kansas        $Payroll),]
sorted.Payroll.Kentucky     	    <- table.state.Kentucky[order(table.state.Kentucky      $Payroll),]
sorted.Payroll.Louisiana    	    <- table.state.Louisiana[order(table.state.Louisiana     $Payroll),]
sorted.Payroll.Maine        	    <- table.state.Maine[order(table.state.Maine         $Payroll),]
sorted.Payroll.Maryland     	    <- table.state.Maryland[order(table.state.Maryland      $Payroll),]
sorted.Payroll.Massachusetts	    <- table.state.Massachusetts[order(table.state.Massachusetts $Payroll),]
sorted.Payroll.Michigan     	    <- table.state.Michigan[order(table.state.Michigan      $Payroll),]
sorted.Payroll.Minnesota    	    <- table.state.Minnesota[order(table.state.Minnesota     $Payroll),]
sorted.Payroll.Mississippi  	    <- table.state.Mississippi[order(table.state.Mississippi   $Payroll),]
sorted.Payroll.Missouri     	    <- table.state.Missouri[order(table.state.Missouri      $Payroll),]
sorted.Payroll.Montana      	    <- table.state.Montana[order(table.state.Montana       $Payroll),]
sorted.Payroll.Nebraska     	    <- table.state.Nebraska[order(table.state.Nebraska      $Payroll),]
sorted.Payroll.Nevada       	    <- table.state.Nevada[order(table.state.Nevada        $Payroll),]
sorted.Payroll.NewHampshire 	    <- table.state.NewHampshire[order(table.state.NewHampshire  $Payroll),]
sorted.Payroll.NewJersey    	    <- table.state.NewJersey[order(table.state.NewJersey     $Payroll),]
sorted.Payroll.NewMexico    	    <- table.state.NewMexico[order(table.state.NewMexico     $Payroll),]
sorted.Payroll.NewYork      	    <- table.state.NewYork[order(table.state.NewYork       $Payroll),]
sorted.Payroll.NorthCarolina	    <- table.state.NorthCarolina[order(table.state.NorthCarolina $Payroll),]
sorted.Payroll.NorthDakota  	    <- table.state.NorthDakota[order(table.state.NorthDakota   $Payroll),]
sorted.Payroll.Ohio         	    <- table.state.Ohio[order(table.state.Ohio          $Payroll),]
sorted.Payroll.Oklahoma     	    <- table.state.Oklahoma[order(table.state.Oklahoma      $Payroll),]
sorted.Payroll.Oregon       	    <- table.state.Oregon[order(table.state.Oregon        $Payroll),]
sorted.Payroll.Pennsylvania 	    <- table.state.Pennsylvania[order(table.state.Pennsylvania  $Payroll),]
sorted.Payroll.RhodeIsland  	    <- table.state.RhodeIsland[order(table.state.RhodeIsland   $Payroll),]
sorted.Payroll.SouthCarolina	    <- table.state.SouthCarolina[order(table.state.SouthCarolina $Payroll),]
sorted.Payroll.SouthDakota  	    <- table.state.SouthDakota[order(table.state.SouthDakota   $Payroll),]
sorted.Payroll.Tennessee    	    <- table.state.Tennessee[order(table.state.Tennessee     $Payroll),]
sorted.Payroll.Texas        	    <- table.state.Texas[order(table.state.Texas         $Payroll),]
sorted.Payroll.Utah         	    <- table.state.Utah[order(table.state.Utah          $Payroll),]
sorted.Payroll.Vermont      	    <- table.state.Vermont[order(table.state.Vermont       $Payroll),]
sorted.Payroll.Virginia     	    <- table.state.Virginia[order(table.state.Virginia      $Payroll),]
sorted.Payroll.Washington   	    <- table.state.Washington[order(table.state.Washington    $Payroll),]
sorted.Payroll.WestVirginia 	    <- table.state.WestVirginia[order(table.state.WestVirginia  $Payroll),]
sorted.Payroll.Wisconsin    	    <- table.state.Wisconsin[order(table.state.Wisconsin     $Payroll),]
sorted.Payroll.Wyoming                 <- table.state.Wyoming[order(table.state.Wyoming       $Payroll),]    

df <- read.csv("./csv_files/Payroll_per_industry.csv", sep=" ")

df1 <- df[,c(1,20)]
colnames(df1) <- c("Payroll","State")
df1 <- df1[order(df1$Payroll),]

df2 <- df[,c(2,20)]
colnames(df2) <- c("Payroll","State")
df2 <- df2[order(df2$Payroll),]

df3 <- df[,c(3,20)]
colnames(df3) <- c("Payroll","State")
df3 <- df3[order(df3$Payroll),]

df4 <- df[,c(4,20)]
colnames(df4) <- c("Payroll","State")
df4 <- df4[order(df4$Payroll),]

df5 <- df[,c(5,20)]
colnames(df5) <- c("Payroll","State")
df5 <- df5[order(df5$Payroll),]

df6 <- df[,c(6,20)]
colnames(df6) <- c("Payroll","State")
df6 <- df6[order(df6$Payroll),]

df7 <- df[,c(7,20)]
colnames(df7) <- c("Payroll","State")
df7 <- df7[order(df7$Payroll),]

df8 <- df[,c(8,20)]
colnames(df8) <- c("Payroll","State")
df8 <- df8[order(df8$Payroll),]

df9 <- df[,c(9,20)]
colnames(df9) <- c("Payroll","State")
df9 <- df9[order(df9$Payroll),]

df10 <- df[,c(10,20)]
colnames(df10) <- c("Payroll","State")
df10 <- df10[order(df10$Payroll),]

df11 <- df[,c(11,20)]
colnames(df11) <- c("Payroll","State")
df11 <- df11[order(df11$Payroll),]

df12 <- df[,c(12,20)]
colnames(df12) <- c("Payroll","State")
df12 <- df12[order(df12$Payroll),]

df13 <- df[,c(13,20)]
colnames(df13) <- c("Payroll","State")
df13 <- df13[order(df13$Payroll),]

df14 <- df[,c(14,20)]
colnames(df14) <- c("Payroll","State")
df14 <- df14[order(df14$Payroll),]

df15 <- df[,c(15,20)]
colnames(df15) <- c("Payroll","State")
df15 <- df15[order(df15$Payroll),]

df16 <- df[,c(16,20)]
colnames(df16) <- c("Payroll","State")
df16 <- df16[order(df16$Payroll),]

df17 <- df[,c(17,20)]
colnames(df17) <- c("Payroll","State")
df17 <- df17[order(df17$Payroll),]

df18 <- df[,c(18,20)]
colnames(df18) <- c("Payroll","State")
df18 <- df18[order(df18$Payroll),]

df19 <- df[,c(19,20)]
colnames(df19) <- c("Payroll","State")
df19 <- df19[order(df19$Payroll),]


shinyServer(function(input, output){

  output$State <- renderText({ 
    paste("you have selected tabel.state.", input$state)
  })
  output$Industry <- renderText({ 
    paste("you have selected tabel.industry.", input$industry)
  })
  
  output$plot_Employment <- renderPlot({

    name.Alabama        <- sorted.Empl.Alabama           $NAICS_name
    name.Alaska         <- sorted.Empl.Alaska            $NAICS_name   
    name.Arizona      	<- sorted.Empl.Arizona      	 $NAICS_name
    name.Arkansas     	<- sorted.Empl.Arkansas     	 $NAICS_name
    name.California   	<- sorted.Empl.California   	 $NAICS_name
    name.Colorado     	<- sorted.Empl.Colorado     	 $NAICS_name
    name.Connecticut  	<- sorted.Empl.Connecticut  	 $NAICS_name
    name.Delaware     	<- sorted.Empl.Delaware     	 $NAICS_name
    name.DofColumbia  	<- sorted.Empl.DofColumbia  	 $NAICS_name
    name.Florida      	<- sorted.Empl.Florida      	 $NAICS_name
    name.Georgia      	<- sorted.Empl.Georgia      	 $NAICS_name
    name.Hawaii       	<- sorted.Empl.Hawaii       	 $NAICS_name
    name.Idaho        	<- sorted.Empl.Idaho        	 $NAICS_name
    name.Illinois     	<- sorted.Empl.Illinois     	 $NAICS_name
    name.Indiana      	<- sorted.Empl.Indiana      	 $NAICS_name
    name.Iowa         	<- sorted.Empl.Iowa         	 $NAICS_name
    name.Kansas       	<- sorted.Empl.Kansas       	 $NAICS_name
    name.Kentucky     	<- sorted.Empl.Kentucky     	 $NAICS_name
    name.Louisiana    	<- sorted.Empl.Louisiana    	 $NAICS_name
    name.Maine        	<- sorted.Empl.Maine        	 $NAICS_name
    name.Maryland     	<- sorted.Empl.Maryland     	 $NAICS_name
    name.Massachusetts	<- sorted.Empl.Massachusetts	 $NAICS_name
    name.Michigan     	<- sorted.Empl.Michigan     	 $NAICS_name
    name.Minnesota    	<- sorted.Empl.Minnesota    	 $NAICS_name
    name.Mississippi  	<- sorted.Empl.Mississippi  	 $NAICS_name
    name.Missouri     	<- sorted.Empl.Missouri     	 $NAICS_name
    name.Montana      	<- sorted.Empl.Montana      	 $NAICS_name
    name.Nebraska     	<- sorted.Empl.Nebraska     	 $NAICS_name
    name.Nevada       	<- sorted.Empl.Nevada       	 $NAICS_name
    name.NewHampshire 	<- sorted.Empl.NewHampshire 	 $NAICS_name
    name.NewJersey    	<- sorted.Empl.NewJersey    	 $NAICS_name
    name.NewMexico    	<- sorted.Empl.NewMexico    	 $NAICS_name
    name.NewYork      	<- sorted.Empl.NewYork      	 $NAICS_name
    name.NorthCarolina	<- sorted.Empl.NorthCarolina	 $NAICS_name
    name.NorthDakota  	<- sorted.Empl.NorthDakota  	 $NAICS_name
    name.Ohio         	<- sorted.Empl.Ohio         	 $NAICS_name
    name.Oklahoma     	<- sorted.Empl.Oklahoma     	 $NAICS_name
    name.Oregon       	<- sorted.Empl.Oregon       	 $NAICS_name
    name.Pennsylvania 	<- sorted.Empl.Pennsylvania 	 $NAICS_name
    name.RhodeIsland  	<- sorted.Empl.RhodeIsland  	 $NAICS_name
    name.SouthCarolina	<- sorted.Empl.SouthCarolina	 $NAICS_name
    name.SouthDakota  	<- sorted.Empl.SouthDakota  	 $NAICS_name
    name.Tennessee    	<- sorted.Empl.Tennessee    	 $NAICS_name
    name.Texas        	<- sorted.Empl.Texas        	 $NAICS_name
    name.Utah         	<- sorted.Empl.Utah         	 $NAICS_name
    name.Vermont      	<- sorted.Empl.Vermont      	 $NAICS_name
    name.Virginia     	<- sorted.Empl.Virginia     	 $NAICS_name
    name.Washington   	<- sorted.Empl.Washington   	 $NAICS_name
    name.WestVirginia 	<- sorted.Empl.WestVirginia 	 $NAICS_name
    name.Wisconsin    	<- sorted.Empl.Wisconsin     	 $NAICS_name
    name.Wyoming        <- sorted.Empl.Wyoming           $NAICS_name 
    
    ordered_name.Alabama            <- factor(name.Alabama             , levels = name.Alabama         )
    ordered_name.Alaska             <- factor(name.Alaska              , levels = name.Alaska          ) 
    ordered_name.Arizona      	    <- factor(name.Arizona             , levels = name.Arizona         )
    ordered_name.Arkansas     	    <- factor(name.Arkansas            , levels = name.Arkansas        )
    ordered_name.California   	    <- factor(name.California          , levels = name.California      )
    ordered_name.Colorado     	    <- factor(name.Colorado            , levels = name.Colorado        )
    ordered_name.Connecticut  	    <- factor(name.Connecticut         , levels = name.Connecticut     )
    ordered_name.Delaware     	    <- factor(name.Delaware            , levels = name.Delaware        )
    ordered_name.DofColumbia  	    <- factor(name.DofColumbia         , levels = name.DofColumbia     )
    ordered_name.Florida      	    <- factor(name.Florida             , levels = name.Florida         )
    ordered_name.Georgia      	    <- factor(name.Georgia             , levels = name.Georgia         )
    ordered_name.Hawaii       	    <- factor(name.Hawaii              , levels = name.Hawaii          )
    ordered_name.Idaho        	    <- factor(name.Idaho               , levels = name.Idaho           )
    ordered_name.Illinois     	    <- factor(name.Illinois            , levels = name.Illinois        )
    ordered_name.Indiana      	    <- factor(name.Indiana             , levels = name.Indiana         )
    ordered_name.Iowa         	    <- factor(name.Iowa                , levels = name.Iowa            )
    ordered_name.Kansas       	    <- factor(name.Kansas              , levels = name.Kansas          )
    ordered_name.Kentucky     	    <- factor(name.Kentucky            , levels = name.Kentucky        )
    ordered_name.Louisiana    	    <- factor(name.Louisiana           , levels = name.Louisiana       )
    ordered_name.Maine        	    <- factor(name.Maine               , levels = name.Maine           )
    ordered_name.Maryland     	    <- factor(name.Maryland            , levels = name.Maryland        )
    ordered_name.Massachusetts	    <- factor(name.Massachusetts       , levels = name.Massachusetts   )
    ordered_name.Michigan     	    <- factor(name.Michigan            , levels = name.Michigan        )
    ordered_name.Minnesota    	    <- factor(name.Minnesota           , levels = name.Minnesota       )
    ordered_name.Mississippi  	    <- factor(name.Mississippi         , levels = name.Mississippi     )
    ordered_name.Missouri     	    <- factor(name.Missouri            , levels = name.Missouri        )
    ordered_name.Montana      	    <- factor(name.Montana             , levels = name.Montana         )
    ordered_name.Nebraska     	    <- factor(name.Nebraska            , levels = name.Nebraska        )
    ordered_name.Nevada       	    <- factor(name.Nevada              , levels = name.Nevada          )
    ordered_name.NewHampshire 	    <- factor(name.NewHampshire        , levels = name.NewHampshire    )
    ordered_name.NewJersey    	    <- factor(name.NewJersey           , levels = name.NewJersey       )
    ordered_name.NewMexico    	    <- factor(name.NewMexico           , levels = name.NewMexico       )
    ordered_name.NewYork      	    <- factor(name.NewYork             , levels = name.NewYork         )
    ordered_name.NorthCarolina	    <- factor(name.NorthCarolina       , levels = name.NorthCarolina   )
    ordered_name.NorthDakota  	    <- factor(name.NorthDakota         , levels = name.NorthDakota     )
    ordered_name.Ohio         	    <- factor(name.Ohio                , levels = name.Ohio            )
    ordered_name.Oklahoma     	    <- factor(name.Oklahoma            , levels = name.Oklahoma        )
    ordered_name.Oregon       	    <- factor(name.Oregon              , levels = name.Oregon          )
    ordered_name.Pennsylvania 	    <- factor(name.Pennsylvania        , levels = name.Pennsylvania    )
    ordered_name.RhodeIsland  	    <- factor(name.RhodeIsland         , levels = name.RhodeIsland     )
    ordered_name.SouthCarolina	    <- factor(name.SouthCarolina       , levels = name.SouthCarolina   )
    ordered_name.SouthDakota  	    <- factor(name.SouthDakota         , levels = name.SouthDakota     )
    ordered_name.Tennessee    	    <- factor(name.Tennessee           , levels = name.Tennessee       )
    ordered_name.Texas        	    <- factor(name.Texas               , levels = name.Texas           )
    ordered_name.Utah         	    <- factor(name.Utah                , levels = name.Utah            )
    ordered_name.Vermont      	    <- factor(name.Vermont             , levels = name.Vermont         )
    ordered_name.Virginia     	    <- factor(name.Virginia            , levels = name.Virginia        )
    ordered_name.Washington   	    <- factor(name.Washington          , levels = name.Washington      )
    ordered_name.WestVirginia 	    <- factor(name.WestVirginia        , levels = name.WestVirginia    )
    ordered_name.Wisconsin    	    <- factor(name.Wisconsin           , levels = name.Wisconsin       )
    ordered_name.Wyoming            <- factor(name.Wyoming             , levels = name.Wyoming         ) 

    sorted.Empl.Alabama            <- cbind(sorted.Empl.Alabama         ,on = ordered_name.Alabama       )
    sorted.Empl.Alaska             <- cbind(sorted.Empl.Alaska          ,on = ordered_name.Alaska        )
    sorted.Empl.Arizona            <- cbind(sorted.Empl.Arizona         ,on = ordered_name.Arizona       ) 
    sorted.Empl.Arkansas           <- cbind(sorted.Empl.Arkansas        ,on = ordered_name.Arkansas      ) 
    sorted.Empl.California         <- cbind(sorted.Empl.California      ,on = ordered_name.California    ) 
    sorted.Empl.Colorado           <- cbind(sorted.Empl.Colorado        ,on = ordered_name.Colorado      ) 
    sorted.Empl.Connecticut        <- cbind(sorted.Empl.Connecticut     ,on = ordered_name.Connecticut   ) 
    sorted.Empl.Delaware           <- cbind(sorted.Empl.Delaware        ,on = ordered_name.Delaware      ) 
    sorted.Empl.DofColumbia        <- cbind(sorted.Empl.DofColumbia     ,on = ordered_name.DofColumbia   ) 
    sorted.Empl.Florida            <- cbind(sorted.Empl.Florida         ,on = ordered_name.Florida       ) 
    sorted.Empl.Georgia            <- cbind(sorted.Empl.Georgia         ,on = ordered_name.Georgia       ) 
    sorted.Empl.Hawaii             <- cbind(sorted.Empl.Hawaii          ,on = ordered_name.Hawaii        ) 
    sorted.Empl.Idaho              <- cbind(sorted.Empl.Idaho           ,on = ordered_name.Idaho         ) 
    sorted.Empl.Illinois           <- cbind(sorted.Empl.Illinois        ,on = ordered_name.Illinois      ) 
    sorted.Empl.Indiana            <- cbind(sorted.Empl.Indiana         ,on = ordered_name.Indiana       ) 
    sorted.Empl.Iowa               <- cbind(sorted.Empl.Iowa            ,on = ordered_name.Iowa          ) 
    sorted.Empl.Kansas             <- cbind(sorted.Empl.Kansas          ,on = ordered_name.Kansas        ) 
    sorted.Empl.Kentucky           <- cbind(sorted.Empl.Kentucky        ,on = ordered_name.Kentucky      ) 
    sorted.Empl.Louisiana          <- cbind(sorted.Empl.Louisiana       ,on = ordered_name.Louisiana     ) 
    sorted.Empl.Maine              <- cbind(sorted.Empl.Maine           ,on = ordered_name.Maine         ) 
    sorted.Empl.Maryland           <- cbind(sorted.Empl.Maryland        ,on = ordered_name.Maryland      ) 
    sorted.Empl.Massachusetts      <- cbind(sorted.Empl.Massachusetts   ,on = ordered_name.Massachusetts ) 
    sorted.Empl.Michigan           <- cbind(sorted.Empl.Michigan        ,on = ordered_name.Michigan      ) 
    sorted.Empl.Minnesota          <- cbind(sorted.Empl.Minnesota       ,on = ordered_name.Minnesota     ) 
    sorted.Empl.Mississippi        <- cbind(sorted.Empl.Mississippi     ,on = ordered_name.Mississippi   ) 
    sorted.Empl.Missouri           <- cbind(sorted.Empl.Missouri        ,on = ordered_name.Missouri      ) 
    sorted.Empl.Montana            <- cbind(sorted.Empl.Montana         ,on = ordered_name.Montana       ) 
    sorted.Empl.Nebraska           <- cbind(sorted.Empl.Nebraska        ,on = ordered_name.Nebraska      ) 
    sorted.Empl.Nevada             <- cbind(sorted.Empl.Nevada          ,on = ordered_name.Nevada        ) 
    sorted.Empl.NewHampshire       <- cbind(sorted.Empl.NewHampshire    ,on = ordered_name.NewHampshire  ) 
    sorted.Empl.NewJersey          <- cbind(sorted.Empl.NewJersey       ,on = ordered_name.NewJersey     ) 
    sorted.Empl.NewMexico          <- cbind(sorted.Empl.NewMexico       ,on = ordered_name.NewMexico     ) 
    sorted.Empl.NewYork            <- cbind(sorted.Empl.NewYork         ,on = ordered_name.NewYork       ) 
    sorted.Empl.NorthCarolina      <- cbind(sorted.Empl.NorthCarolina   ,on = ordered_name.NorthCarolina ) 
    sorted.Empl.NorthDakota        <- cbind(sorted.Empl.NorthDakota     ,on = ordered_name.NorthDakota   ) 
    sorted.Empl.Ohio               <- cbind(sorted.Empl.Ohio            ,on = ordered_name.Ohio          ) 
    sorted.Empl.Oklahoma           <- cbind(sorted.Empl.Oklahoma        ,on = ordered_name.Oklahoma      ) 
    sorted.Empl.Oregon             <- cbind(sorted.Empl.Oregon          ,on = ordered_name.Oregon        ) 
    sorted.Empl.Pennsylvania       <- cbind(sorted.Empl.Pennsylvania    ,on = ordered_name.Pennsylvania  ) 
    sorted.Empl.RhodeIsland        <- cbind(sorted.Empl.RhodeIsland     ,on = ordered_name.RhodeIsland   ) 
    sorted.Empl.SouthCarolina      <- cbind(sorted.Empl.SouthCarolina   ,on = ordered_name.SouthCarolina ) 
    sorted.Empl.SouthDakota        <- cbind(sorted.Empl.SouthDakota     ,on = ordered_name.SouthDakota   ) 
    sorted.Empl.Tennessee          <- cbind(sorted.Empl.Tennessee       ,on = ordered_name.Tennessee     ) 
    sorted.Empl.Texas              <- cbind(sorted.Empl.Texas           ,on = ordered_name.Texas         ) 
    sorted.Empl.Utah               <- cbind(sorted.Empl.Utah            ,on = ordered_name.Utah          ) 
    sorted.Empl.Vermont            <- cbind(sorted.Empl.Vermont         ,on = ordered_name.Vermont       ) 
    sorted.Empl.Virginia           <- cbind(sorted.Empl.Virginia        ,on = ordered_name.Virginia      ) 
    sorted.Empl.Washington         <- cbind(sorted.Empl.Washington      ,on = ordered_name.Washington    ) 
    sorted.Empl.WestVirginia       <- cbind(sorted.Empl.WestVirginia    ,on = ordered_name.WestVirginia  ) 
    sorted.Empl.Wisconsin          <- cbind(sorted.Empl.Wisconsin       ,on = ordered_name.Wisconsin     ) 
    sorted.Empl.Wyoming            <- cbind(sorted.Empl.Wyoming         ,on = ordered_name.Wyoming       )    

    datain <- switch(input$state,
                   "Alabama" =               sorted.Empl.Alabama,                   
                   "Alaska" =                sorted.Empl.Alaska,           
                   "Arizona" =               sorted.Empl.Arizona,      
                   "Arkansas" =              sorted.Empl.Arkansas,     
                   "California" =            sorted.Empl.California,   
                   "Colorado" =              sorted.Empl.Colorado,     
                   "Connecticut" =           sorted.Empl.Connecticut,  
                   "Delaware" =              sorted.Empl.Delaware,     
                   "District of Columbia" =  sorted.Empl.DofColumbia,  
                   "Florida" =               sorted.Empl.Florida,      
                   "Georgia" =               sorted.Empl.Georgia,      
                   "Hawaii" =                sorted.Empl.Hawaii,       
                   "Idaho" =                 sorted.Empl.Idaho,        
                   "Illinois" =              sorted.Empl.Illinois,     
                   "Indiana" =               sorted.Empl.Indiana  ,    
                   "Iowa" =                  sorted.Empl.Iowa      ,   
                   "Kansas" =                sorted.Empl.Kansas     ,  
                   "Kentucky" =              sorted.Empl.Kentucky    , 
                   "Louisiana" =             sorted.Empl.Louisiana    ,
                   "Maine" =                 sorted.Empl.Maine        ,
                   "Maryland" =              sorted.Empl.Maryland     ,
                   "Massachusetts" =         sorted.Empl.Massachusetts,
                   "Michigan" =              sorted.Empl.Michigan     ,
                   "Minnesota" =             sorted.Empl.Minnesota    ,
                   "Mississippi" =           sorted.Empl.Mississippi  ,
                   "Missouri" =              sorted.Empl.Missouri     ,
                   "Montana" =               sorted.Empl.Montana      ,
                   "Nebraska" =              sorted.Empl.Nebraska     ,
                   "Nevada" =                sorted.Empl.Nevada       ,
                   "New Hampshire" =         sorted.Empl.NewHampshire ,
                   "New Jersey" =            sorted.Empl.NewJersey    ,
                   "New Mexico" =            sorted.Empl.NewMexico    ,
                   "New York" =              sorted.Empl.NewYork      ,
                   "North Carolina" =        sorted.Empl.NorthCarolina,
                   "North Dakota" =          sorted.Empl.NorthDakota  ,
                   "Ohio" =                  sorted.Empl.Ohio         ,
                   "Oklahoma" =              sorted.Empl.Oklahoma     ,
                   "Oregon" =                sorted.Empl.Oregon       ,
                   "Pennsylvania" =          sorted.Empl.Pennsylvania ,
                   "Rhode Island" =          sorted.Empl.RhodeIsland  ,
                   "South Carolina" =        sorted.Empl.SouthCarolina,
                   "South Dakota" =          sorted.Empl.SouthDakota  ,
                   "Tennessee" =             sorted.Empl.Tennessee    ,
                   "Texas" =                 sorted.Empl.Texas        ,
                   "Utah" =                  sorted.Empl.Utah         ,
                   "Vermont" =               sorted.Empl.Vermont      ,
                   "Virginia" =              sorted.Empl.Virginia     ,
                   "Washington" =            sorted.Empl.Washington   ,
                   "West Virginia" =         sorted.Empl.WestVirginia ,
                   "Wisconsin" =             sorted.Empl.Wisconsin    ,
                   "Wyoming" =               sorted.Empl.Wyoming                      
                   )
    
    ggplot(data=datain,aes(y=Fraction_Employment, x=on, color="black", fill= "white")) + 
      geom_bar(stat="identity") + 
      coord_flip() + 
      theme(legend.position="none") + 
      xlab('')
  }) 
  
  output$plot_Payroll <- renderPlot({

    name.Alabama        <- sorted.Payroll.Alabama        $NAICS_name
    name.Alaska         <- sorted.Payroll.Alaska         $NAICS_name   
    name.Arizona      	<- sorted.Payroll.Arizona      	 $NAICS_name
    name.Arkansas     	<- sorted.Payroll.Arkansas     	 $NAICS_name
    name.California   	<- sorted.Payroll.California   	 $NAICS_name
    name.Colorado     	<- sorted.Payroll.Colorado     	 $NAICS_name
    name.Connecticut  	<- sorted.Payroll.Connecticut  	 $NAICS_name
    name.Delaware     	<- sorted.Payroll.Delaware     	 $NAICS_name
    name.DofColumbia  	<- sorted.Payroll.DofColumbia  	 $NAICS_name
    name.Florida      	<- sorted.Payroll.Florida      	 $NAICS_name
    name.Georgia      	<- sorted.Payroll.Georgia      	 $NAICS_name
    name.Hawaii       	<- sorted.Payroll.Hawaii       	 $NAICS_name
    name.Idaho        	<- sorted.Payroll.Idaho        	 $NAICS_name
    name.Illinois     	<- sorted.Payroll.Illinois     	 $NAICS_name
    name.Indiana      	<- sorted.Payroll.Indiana      	 $NAICS_name
    name.Iowa         	<- sorted.Payroll.Iowa         	 $NAICS_name
    name.Kansas       	<- sorted.Payroll.Kansas       	 $NAICS_name
    name.Kentucky     	<- sorted.Payroll.Kentucky     	 $NAICS_name
    name.Louisiana    	<- sorted.Payroll.Louisiana    	 $NAICS_name
    name.Maine        	<- sorted.Payroll.Maine        	 $NAICS_name
    name.Maryland     	<- sorted.Payroll.Maryland     	 $NAICS_name
    name.Massachusetts	<- sorted.Payroll.Massachusetts	 $NAICS_name
    name.Michigan     	<- sorted.Payroll.Michigan     	 $NAICS_name
    name.Minnesota    	<- sorted.Payroll.Minnesota    	 $NAICS_name
    name.Mississippi  	<- sorted.Payroll.Mississippi  	 $NAICS_name
    name.Missouri     	<- sorted.Payroll.Missouri     	 $NAICS_name
    name.Montana      	<- sorted.Payroll.Montana      	 $NAICS_name
    name.Nebraska     	<- sorted.Payroll.Nebraska     	 $NAICS_name
    name.Nevada       	<- sorted.Payroll.Nevada       	 $NAICS_name
    name.NewHampshire 	<- sorted.Payroll.NewHampshire 	 $NAICS_name
    name.NewJersey    	<- sorted.Payroll.NewJersey    	 $NAICS_name
    name.NewMexico    	<- sorted.Payroll.NewMexico    	 $NAICS_name
    name.NewYork      	<- sorted.Payroll.NewYork      	 $NAICS_name
    name.NorthCarolina	<- sorted.Payroll.NorthCarolina	 $NAICS_name
    name.NorthDakota  	<- sorted.Payroll.NorthDakota  	 $NAICS_name
    name.Ohio         	<- sorted.Payroll.Ohio         	 $NAICS_name
    name.Oklahoma     	<- sorted.Payroll.Oklahoma     	 $NAICS_name
    name.Oregon       	<- sorted.Payroll.Oregon       	 $NAICS_name
    name.Pennsylvania 	<- sorted.Payroll.Pennsylvania 	 $NAICS_name
    name.RhodeIsland  	<- sorted.Payroll.RhodeIsland  	 $NAICS_name
    name.SouthCarolina	<- sorted.Payroll.SouthCarolina	 $NAICS_name
    name.SouthDakota  	<- sorted.Payroll.SouthDakota  	 $NAICS_name
    name.Tennessee    	<- sorted.Payroll.Tennessee    	 $NAICS_name
    name.Texas        	<- sorted.Payroll.Texas        	 $NAICS_name
    name.Utah         	<- sorted.Payroll.Utah         	 $NAICS_name
    name.Vermont      	<- sorted.Payroll.Vermont      	 $NAICS_name
    name.Virginia     	<- sorted.Payroll.Virginia     	 $NAICS_name
    name.Washington   	<- sorted.Payroll.Washington   	 $NAICS_name
    name.WestVirginia 	<- sorted.Payroll.WestVirginia 	 $NAICS_name
    name.Wisconsin    	<- sorted.Payroll.Wisconsin      $NAICS_name
    name.Wyoming        <- sorted.Payroll.Wyoming        $NAICS_name 
    
    ordered_name.Alabama            <- factor(name.Alabama             , levels = name.Alabama         )
    ordered_name.Alaska             <- factor(name.Alaska              , levels = name.Alaska          ) 
    ordered_name.Arizona      	    <- factor(name.Arizona             , levels = name.Arizona         )
    ordered_name.Arkansas     	    <- factor(name.Arkansas            , levels = name.Arkansas        )
    ordered_name.California   	    <- factor(name.California          , levels = name.California      )
    ordered_name.Colorado     	    <- factor(name.Colorado            , levels = name.Colorado        )
    ordered_name.Connecticut  	    <- factor(name.Connecticut         , levels = name.Connecticut     )
    ordered_name.Delaware     	    <- factor(name.Delaware            , levels = name.Delaware        )
    ordered_name.DofColumbia  	    <- factor(name.DofColumbia         , levels = name.DofColumbia     )
    ordered_name.Florida      	    <- factor(name.Florida             , levels = name.Florida         )
    ordered_name.Georgia      	    <- factor(name.Georgia             , levels = name.Georgia         )
    ordered_name.Hawaii       	    <- factor(name.Hawaii              , levels = name.Hawaii          )
    ordered_name.Idaho        	    <- factor(name.Idaho               , levels = name.Idaho           )
    ordered_name.Illinois     	    <- factor(name.Illinois            , levels = name.Illinois        )
    ordered_name.Indiana      	    <- factor(name.Indiana             , levels = name.Indiana         )
    ordered_name.Iowa         	    <- factor(name.Iowa                , levels = name.Iowa            )
    ordered_name.Kansas       	    <- factor(name.Kansas              , levels = name.Kansas          )
    ordered_name.Kentucky     	    <- factor(name.Kentucky            , levels = name.Kentucky        )
    ordered_name.Louisiana    	    <- factor(name.Louisiana           , levels = name.Louisiana       )
    ordered_name.Maine        	    <- factor(name.Maine               , levels = name.Maine           )
    ordered_name.Maryland     	    <- factor(name.Maryland            , levels = name.Maryland        )
    ordered_name.Massachusetts	    <- factor(name.Massachusetts       , levels = name.Massachusetts   )
    ordered_name.Michigan     	    <- factor(name.Michigan            , levels = name.Michigan        )
    ordered_name.Minnesota    	    <- factor(name.Minnesota           , levels = name.Minnesota       )
    ordered_name.Mississippi  	    <- factor(name.Mississippi         , levels = name.Mississippi     )
    ordered_name.Missouri     	    <- factor(name.Missouri            , levels = name.Missouri        )
    ordered_name.Montana      	    <- factor(name.Montana             , levels = name.Montana         )
    ordered_name.Nebraska     	    <- factor(name.Nebraska            , levels = name.Nebraska        )
    ordered_name.Nevada       	    <- factor(name.Nevada              , levels = name.Nevada          )
    ordered_name.NewHampshire 	    <- factor(name.NewHampshire        , levels = name.NewHampshire    )
    ordered_name.NewJersey    	    <- factor(name.NewJersey           , levels = name.NewJersey       )
    ordered_name.NewMexico    	    <- factor(name.NewMexico           , levels = name.NewMexico       )
    ordered_name.NewYork      	    <- factor(name.NewYork             , levels = name.NewYork         )
    ordered_name.NorthCarolina	    <- factor(name.NorthCarolina       , levels = name.NorthCarolina   )
    ordered_name.NorthDakota  	    <- factor(name.NorthDakota         , levels = name.NorthDakota     )
    ordered_name.Ohio         	    <- factor(name.Ohio                , levels = name.Ohio            )
    ordered_name.Oklahoma     	    <- factor(name.Oklahoma            , levels = name.Oklahoma        )
    ordered_name.Oregon       	    <- factor(name.Oregon              , levels = name.Oregon          )
    ordered_name.Pennsylvania 	    <- factor(name.Pennsylvania        , levels = name.Pennsylvania    )
    ordered_name.RhodeIsland  	    <- factor(name.RhodeIsland         , levels = name.RhodeIsland     )
    ordered_name.SouthCarolina	    <- factor(name.SouthCarolina       , levels = name.SouthCarolina   )
    ordered_name.SouthDakota  	    <- factor(name.SouthDakota         , levels = name.SouthDakota     )
    ordered_name.Tennessee    	    <- factor(name.Tennessee           , levels = name.Tennessee       )
    ordered_name.Texas        	    <- factor(name.Texas               , levels = name.Texas           )
    ordered_name.Utah         	    <- factor(name.Utah                , levels = name.Utah            )
    ordered_name.Vermont      	    <- factor(name.Vermont             , levels = name.Vermont         )
    ordered_name.Virginia     	    <- factor(name.Virginia            , levels = name.Virginia        )
    ordered_name.Washington   	    <- factor(name.Washington          , levels = name.Washington      )
    ordered_name.WestVirginia 	    <- factor(name.WestVirginia        , levels = name.WestVirginia    )
    ordered_name.Wisconsin    	    <- factor(name.Wisconsin           , levels = name.Wisconsin       )
    ordered_name.Wyoming            <- factor(name.Wyoming             , levels = name.Wyoming         ) 

    sorted.Payroll.Alabama            <- cbind(sorted.Payroll.Alabama         ,on = ordered_name.Alabama       )
    sorted.Payroll.Alaska             <- cbind(sorted.Payroll.Alaska          ,on = ordered_name.Alaska        )
    sorted.Payroll.Arizona            <- cbind(sorted.Payroll.Arizona         ,on = ordered_name.Arizona       ) 
    sorted.Payroll.Arkansas           <- cbind(sorted.Payroll.Arkansas        ,on = ordered_name.Arkansas      ) 
    sorted.Payroll.California         <- cbind(sorted.Payroll.California      ,on = ordered_name.California    ) 
    sorted.Payroll.Colorado           <- cbind(sorted.Payroll.Colorado        ,on = ordered_name.Colorado      ) 
    sorted.Payroll.Connecticut        <- cbind(sorted.Payroll.Connecticut     ,on = ordered_name.Connecticut   ) 
    sorted.Payroll.Delaware           <- cbind(sorted.Payroll.Delaware        ,on = ordered_name.Delaware      ) 
    sorted.Payroll.DofColumbia        <- cbind(sorted.Payroll.DofColumbia     ,on = ordered_name.DofColumbia   ) 
    sorted.Payroll.Florida            <- cbind(sorted.Payroll.Florida         ,on = ordered_name.Florida       ) 
    sorted.Payroll.Georgia            <- cbind(sorted.Payroll.Georgia         ,on = ordered_name.Georgia       ) 
    sorted.Payroll.Hawaii             <- cbind(sorted.Payroll.Hawaii          ,on = ordered_name.Hawaii        ) 
    sorted.Payroll.Idaho              <- cbind(sorted.Payroll.Idaho           ,on = ordered_name.Idaho         ) 
    sorted.Payroll.Illinois           <- cbind(sorted.Payroll.Illinois        ,on = ordered_name.Illinois      ) 
    sorted.Payroll.Indiana            <- cbind(sorted.Payroll.Indiana         ,on = ordered_name.Indiana       ) 
    sorted.Payroll.Iowa               <- cbind(sorted.Payroll.Iowa            ,on = ordered_name.Iowa          ) 
    sorted.Payroll.Kansas             <- cbind(sorted.Payroll.Kansas          ,on = ordered_name.Kansas        ) 
    sorted.Payroll.Kentucky           <- cbind(sorted.Payroll.Kentucky        ,on = ordered_name.Kentucky      ) 
    sorted.Payroll.Louisiana          <- cbind(sorted.Payroll.Louisiana       ,on = ordered_name.Louisiana     ) 
    sorted.Payroll.Maine              <- cbind(sorted.Payroll.Maine           ,on = ordered_name.Maine         ) 
    sorted.Payroll.Maryland           <- cbind(sorted.Payroll.Maryland        ,on = ordered_name.Maryland      ) 
    sorted.Payroll.Massachusetts      <- cbind(sorted.Payroll.Massachusetts   ,on = ordered_name.Massachusetts ) 
    sorted.Payroll.Michigan           <- cbind(sorted.Payroll.Michigan        ,on = ordered_name.Michigan      ) 
    sorted.Payroll.Minnesota          <- cbind(sorted.Payroll.Minnesota       ,on = ordered_name.Minnesota     ) 
    sorted.Payroll.Mississippi        <- cbind(sorted.Payroll.Mississippi     ,on = ordered_name.Mississippi   ) 
    sorted.Payroll.Missouri           <- cbind(sorted.Payroll.Missouri        ,on = ordered_name.Missouri      ) 
    sorted.Payroll.Montana            <- cbind(sorted.Payroll.Montana         ,on = ordered_name.Montana       ) 
    sorted.Payroll.Nebraska           <- cbind(sorted.Payroll.Nebraska        ,on = ordered_name.Nebraska      ) 
    sorted.Payroll.Nevada             <- cbind(sorted.Payroll.Nevada          ,on = ordered_name.Nevada        ) 
    sorted.Payroll.NewHampshire       <- cbind(sorted.Payroll.NewHampshire    ,on = ordered_name.NewHampshire  ) 
    sorted.Payroll.NewJersey          <- cbind(sorted.Payroll.NewJersey       ,on = ordered_name.NewJersey     ) 
    sorted.Payroll.NewMexico          <- cbind(sorted.Payroll.NewMexico       ,on = ordered_name.NewMexico     ) 
    sorted.Payroll.NewYork            <- cbind(sorted.Payroll.NewYork         ,on = ordered_name.NewYork       ) 
    sorted.Payroll.NorthCarolina      <- cbind(sorted.Payroll.NorthCarolina   ,on = ordered_name.NorthCarolina ) 
    sorted.Payroll.NorthDakota        <- cbind(sorted.Payroll.NorthDakota     ,on = ordered_name.NorthDakota   ) 
    sorted.Payroll.Ohio               <- cbind(sorted.Payroll.Ohio            ,on = ordered_name.Ohio          ) 
    sorted.Payroll.Oklahoma           <- cbind(sorted.Payroll.Oklahoma        ,on = ordered_name.Oklahoma      ) 
    sorted.Payroll.Oregon             <- cbind(sorted.Payroll.Oregon          ,on = ordered_name.Oregon        ) 
    sorted.Payroll.Pennsylvania       <- cbind(sorted.Payroll.Pennsylvania    ,on = ordered_name.Pennsylvania  ) 
    sorted.Payroll.RhodeIsland        <- cbind(sorted.Payroll.RhodeIsland     ,on = ordered_name.RhodeIsland   ) 
    sorted.Payroll.SouthCarolina      <- cbind(sorted.Payroll.SouthCarolina   ,on = ordered_name.SouthCarolina ) 
    sorted.Payroll.SouthDakota        <- cbind(sorted.Payroll.SouthDakota     ,on = ordered_name.SouthDakota   ) 
    sorted.Payroll.Tennessee          <- cbind(sorted.Payroll.Tennessee       ,on = ordered_name.Tennessee     ) 
    sorted.Payroll.Texas              <- cbind(sorted.Payroll.Texas           ,on = ordered_name.Texas         ) 
    sorted.Payroll.Utah               <- cbind(sorted.Payroll.Utah            ,on = ordered_name.Utah          ) 
    sorted.Payroll.Vermont            <- cbind(sorted.Payroll.Vermont         ,on = ordered_name.Vermont       ) 
    sorted.Payroll.Virginia           <- cbind(sorted.Payroll.Virginia        ,on = ordered_name.Virginia      ) 
    sorted.Payroll.Washington         <- cbind(sorted.Payroll.Washington      ,on = ordered_name.Washington    ) 
    sorted.Payroll.WestVirginia       <- cbind(sorted.Payroll.WestVirginia    ,on = ordered_name.WestVirginia  ) 
    sorted.Payroll.Wisconsin          <- cbind(sorted.Payroll.Wisconsin       ,on = ordered_name.Wisconsin     ) 
    sorted.Payroll.Wyoming            <- cbind(sorted.Payroll.Wyoming         ,on = ordered_name.Wyoming       )  

      
    datain <- switch(input$state,
                     "Alabama" =               sorted.Payroll.Alabama,                   
                     "Alaska" =                sorted.Payroll.Alaska,           
                     "Arizona" =               sorted.Payroll.Arizona,      
                     "Arkansas" =              sorted.Payroll.Arkansas,     
                     "California" =            sorted.Payroll.California,   
                     "Colorado" =              sorted.Payroll.Colorado,     
                     "Connecticut" =           sorted.Payroll.Connecticut,  
                     "Delaware" =              sorted.Payroll.Delaware,     
                     "District of Columbia" =  sorted.Payroll.DofColumbia,  
                     "Florida" =               sorted.Payroll.Florida,      
                     "Georgia" =               sorted.Payroll.Georgia,      
                     "Hawaii" =                sorted.Payroll.Hawaii,       
                     "Idaho" =                 sorted.Payroll.Idaho,        
                     "Illinois" =              sorted.Payroll.Illinois,     
                     "Indiana" =               sorted.Payroll.Indiana  ,    
                     "Iowa" =                  sorted.Payroll.Iowa      ,   
                     "Kansas" =                sorted.Payroll.Kansas     ,  
                     "Kentucky" =              sorted.Payroll.Kentucky    , 
                     "Louisiana" =             sorted.Payroll.Louisiana    ,
                     "Maine" =                 sorted.Payroll.Maine        ,
                     "Maryland" =              sorted.Payroll.Maryland     ,
                     "Massachusetts" =         sorted.Payroll.Massachusetts,
                     "Michigan" =              sorted.Payroll.Michigan     ,
                     "Minnesota" =             sorted.Payroll.Minnesota    ,
                     "Mississippi" =           sorted.Payroll.Mississippi  ,
                     "Missouri" =              sorted.Payroll.Missouri     ,
                     "Montana" =               sorted.Payroll.Montana      ,
                     "Nebraska" =              sorted.Payroll.Nebraska     ,
                     "Nevada" =                sorted.Payroll.Nevada       ,
                     "New Hampshire" =         sorted.Payroll.NewHampshire ,
                     "New Jersey" =            sorted.Payroll.NewJersey    ,
                     "New Mexico" =            sorted.Payroll.NewMexico    ,
                     "New York" =              sorted.Payroll.NewYork      ,
                     "North Carolina" =        sorted.Payroll.NorthCarolina,
                     "North Dakota" =          sorted.Payroll.NorthDakota  ,
                     "Ohio" =                  sorted.Payroll.Ohio         ,
                     "Oklahoma" =              sorted.Payroll.Oklahoma     ,
                     "Oregon" =                sorted.Payroll.Oregon       ,
                     "Pennsylvania" =          sorted.Payroll.Pennsylvania ,
                     "Rhode Island" =          sorted.Payroll.RhodeIsland  ,
                     "South Carolina" =        sorted.Payroll.SouthCarolina,
                     "South Dakota" =          sorted.Payroll.SouthDakota  ,
                     "Tennessee" =             sorted.Payroll.Tennessee    ,
                     "Texas" =                 sorted.Payroll.Texas        ,
                     "Utah" =                  sorted.Payroll.Utah         ,
                     "Vermont" =               sorted.Payroll.Vermont      ,
                     "Virginia" =              sorted.Payroll.Virginia     ,
                     "Washington" =            sorted.Payroll.Washington   ,
                     "West Virginia" =         sorted.Payroll.WestVirginia ,
                     "Wisconsin" =             sorted.Payroll.Wisconsin    ,
                     "Wyoming" =               sorted.Payroll.Wyoming                      
    )
    ggplot(data=datain, aes(y=Payroll, x=on, color="black", fill= "white")) + 
      geom_bar(stat="identity") +  
      coord_flip() + 
      theme(legend.position="none") + 
      xlab('') 
  })



  industry <- reactive({
      switch(input$ind,
                               "Agriculture, Forestry, Fishing and Hunting" = df1,                              
                               "Mining, Quarrying, and Oil and Gas Extraction" = df2,
                               "Utilities" = df3,                                                               
                               "Construction" = df4,
                               "Manufacturing" = df5,                                                           
                               "Wholesale Trade" = df6,
                               "Retail Trade" = df7,                                                            
                               "Transportation and Warehousing" = df8,
                               "Information" = df9,                                                             
                               "Finance and Insurance" = df10,
                               "Real Estate and Rental and Leasing" = df11,                                      
                               "Professional, Scientific, and Technical Services" = df12,
                               "Management of Companies and Enterprises" = df13,                                
                               "Administrative and Support and Waste Management and Remediation Services" = df14,
                               "Educational Services" = df15,                                                
                               "Health Care and Social Assistance" = df16,
                               "Arts, Entertainment, and Recreation" = df17,                                     
                               "Accommodation and Food Services" = df18,
                               "Other Services (except Public Administration)" = df19 
             )
  })
  
  plot.ind <- reactive({
      tmp = industry()
      name <- paste(tmp$State)
      ordered_name <- factor(name, levels = name)
      tmp <- cbind(tmp,ordered.name = ordered_name)
      ggplot(data=tmp, aes(y = Payroll, x = ordered.name, color = "blue", fill = "white")) +
          geom_bar(stat="identity") +
              theme_bw() + 
                  theme(legend.position = "none") +
                      coord_flip()  
                          
      
  })
  
  output$plot_Payroll_byIndustry <- renderPlot({
      plot.ind()
  },width=600,height=800)
  
})
