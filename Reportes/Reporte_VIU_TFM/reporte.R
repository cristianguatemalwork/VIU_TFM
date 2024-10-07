#Script generado para compilar el informe
message( paste( rep( '-', 100 ), collapse = '' ) )

# Carga información --------------------------------------------------------------------------------
message('\tCargando información' )
setwd( parametros$work_dir )

# Control ------------------------------------------------------------------------------------------
REP_copy_final <- FALSE
REP_knit_quiet <- TRUE
REP_hacer_graficos <- TRUE
REP_hacer_tablas <- TRUE
REP_latex_clean <- TRUE
REP_latex_aux_clean <- FALSE
REP_latex_quiet <- TRUE

# Parámetros ---------------------------------------------------------------------------------------
message('\tEstableciendo parámetros')
REP_rep_nom <- parametros$reporte_nombre
REP_empresa <- parametros$empresa
REP_rep_dir <- parametros$resultado_nombre
REP_rep_tab <- parametros$resultado_tablas
REP_rep_gra <- parametros$resultado_graficos
REP_rep_latex <- parametros$reporte_latex
REP_style <- 'style.tex'
REP_bib_ley <- 'Bibliografia_TFT.bib'

REP_fec_pub <- paste0( format( parametros$fec_pub, '%d' ), ' de '
                       ,toupper(substr(format( parametros$fec_pub, '%B' ),1,1))
                       ,substr(format( parametros$fec_pub, '%B' ),2
                               ,nchar(format( parametros$fec_pub, '%B' )))
                       ,' de '
                       , format( parametros$fec_pub, '%Y' ))

# REP_tit <- 'Nombre del Proyecto'
# REP_num<- parametros$num
REP_watermark <- paste0( 'Borrador ', parametros$fec_eje, ' ', format( Sys.time(), '%H:%M:%S' ) )
# REP_version <- digest( paste0( 'IESSDAIE', format( Sys.time(), '%Y%m%d%H' ) ), algo = 'sha256', file = FALSE )

# Copia de resultados  -----------------------------------------------------------------------------
REP_file_latex_org <- c( paste( parametros$work_dir, 'Reportes/Bibliografia_TFT.bib', sep = '' ) ,
                         paste( parametros$work_dir, 'Reportes/style.tex', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/Picture_TitlePage.jpg', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/image3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/image5.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/image6.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/dbscan.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/jerarquico.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/kmeans.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/supervisados.png', sep = '' ),
                         
                         #CLuster jerarquico
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_271_1.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_20889867_1.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_8804_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_3071_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_20857054_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_10133_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_20013447_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_3608_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_135752_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_154409_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_1908_2.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_20847366_2.png', sep = '' ),
                         
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_8804_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_3071_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_20857054_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_10133_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_20013447_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_3608_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_135752_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_154409_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_1908_3.png', sep = '' ),
                         paste( parametros$work_dir, 'Reportes/algoritmo_cj_20847366_3.png', sep = '' )
                         
                        )


REP_file_latex_des <- c( paste( REP_rep_dir, 'Bibliografia_TFT.bib', sep = '' ),
                         paste( REP_rep_dir, 'style.tex', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'Picture_TitlePage.jpg', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'image3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'image5.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'image6.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'dbscan.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'jerarquico.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'kmeans.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'supervisados.png', sep = '' ),
                         
                         #CLuster jerarquico
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_271_1.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_20889867_1.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_8804_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_3071_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_20857054_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_10133_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_20013447_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_3608_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_135752_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_154409_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_1908_2.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_20847366_2.png', sep = '' ),
                         
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_8804_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_3071_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_20857054_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_10133_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_20013447_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_3608_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_135752_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_154409_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_1908_3.png', sep = '' ),
                         paste( REP_rep_dir, 'graficos/', 'algoritmo_cj_20847366_3.png', sep = '' )
                        )

REP_file_latex_clean <- c( paste( REP_rep_dir, 'Bibliografia_TFT.bib', sep = '' ), 
                           paste( REP_rep_dir, 'style.tex', sep = '' ) )

file.copy( REP_file_latex_org, REP_file_latex_des, overwrite = TRUE  )

# Compilación reporte ------------------------------------------------------------------------------
message('\tInicio compilación')

# Genera información automática --------------------------------------------------------------------
#source( paste0( parametros$reporte_proyecto, 'auto_informacion.R' ), encoding = 'UTF-8', echo = FALSE )

# Kniting reporte ----------------------------------------------------------------------------------
setwd( parametros$reporte_proyecto ) 
knit( input = "reporte.Rnw", 
      output = paste0( REP_rep_dir, REP_rep_latex ),
      quiet = REP_knit_quiet, encoding = 'utf8' )

# Compilacion LaTeX --------------------------------------------------------------------------------
message( paste0( '\tInicio compilación LaTeX: ', Sys.time() ) )
setwd( REP_rep_dir )
tools::texi2pdf( REP_rep_latex, quiet = REP_latex_quiet, clean = REP_latex_clean )  
setwd( parametros$work_dir )
message( paste0( '\tFin compilación LaTeX: ', Sys.time() ) )

if( REP_latex_aux_clean ) {
  unlink( REP_file_latex_clean, recursive = TRUE )
}
####################################################################################################
message( paste( rep( '-', 100 ), collapse = '' ) )
rm( list = ls()[ !( ls() %in% c( 'parametros' ) ) ] )
gc()