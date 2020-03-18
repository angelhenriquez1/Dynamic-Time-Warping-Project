# clearing list
rm(list = ls())

setwd("~/Desktop/#ECON 174 Project")

# library
library(ggplot2)
library(dtw)
library(readxl)
library(dtwclust)
library(dplyr)
library(lubridate)


# importing Real GDP data
# Argentina
fed_arg <- suppressWarnings(read_excel("NYGDPPCAPKDARG.xls", col_types = c("date", "numeric"), col_names = c("date", "arg_rgdp")))
fed_arg <- na.omit(fed_arg)
# Australia
fed_aus <- suppressWarnings(read_excel("NYGDPPCAPKDAUS.xls", col_types = c("date", "numeric"), col_names = c("date", "aus_rgdp")))
fed_aus <- na.omit(fed_aus)
# Burundi
fed_bdi <- suppressWarnings(read_excel("NYGDPPCAPKDBDI.xls", col_types = c("date", "numeric"), col_names = c("date", "bdi_rgdp")))
fed_bdi <- na.omit(fed_bdi)
# Belgium
fed_bel <- suppressWarnings(read_excel("NYGDPPCAPKDBEL.xls", col_types = c("date", "numeric"), col_names = c("date", "bel_rgdp")))
fed_bel <- na.omit(fed_bel)
# Benin
fed_ben <- suppressWarnings(read_excel("NYGDPPCAPKDBEN.xls", col_types = c("date", "numeric"), col_names = c("date", "ben_rgdp")))
fed_ben <- na.omit(fed_ben)
# Burkina Faso
fed_bfa <- suppressWarnings(read_excel("NYGDPPCAPKDBFA.xls", col_types = c("date", "numeric"), col_names = c("date", "bfa_rgdp")))
fed_bfa <- na.omit(fed_bfa)
# Bangladesh
fed_bgd <- suppressWarnings(read_excel("NYGDPPCAPKDBGD.xls", col_types = c("date", "numeric"), col_names = c("date", "bgd_rgdp")))
fed_bgd <- na.omit(fed_bgd)
# Bahamas
fed_bhs <- suppressWarnings(read_excel("NYGDPPCAPKDBHS.xls", col_types = c("date", "numeric"), col_names = c("date", "bhs_rgdp")))
fed_bhs <- na.omit(fed_bhs)
# Belize
fed_blz <- suppressWarnings(read_excel("NYGDPPCAPKDBLZ.xls", col_types = c("date", "numeric"), col_names = c("date", "blz_rgdp")))
fed_blz <- na.omit(fed_blz)
# Bolivia
fed_bol <- suppressWarnings(read_excel("NYGDPPCAPKDBOL.xls", col_types = c("date", "numeric"), col_names = c("date", "bol_rgdp")))
fed_bol <- na.omit(fed_bol)
# Brazil
fed_bra <- suppressWarnings(read_excel("NYGDPPCAPKDBRA.xls", col_types = c("date", "numeric"), col_names = c("date", "bra_rgdp")))
fed_bra <- na.omit(fed_bra)
# Botswana
fed_bwa <- suppressWarnings(read_excel("NYGDPPCAPKDBWA.xls", col_types = c("date", "numeric"), col_names = c("date", "bwa_rgdp")))
fed_bwa <- na.omit(fed_bwa)
# Canada
fed_can <- suppressWarnings(read_excel("NYGDPPCAPKDCAN.xls", col_types = c("date", "numeric"), col_names = c("date", "can_rgdp")))
fed_can <- na.omit(fed_can)
# Chile 
fed_chl <- suppressWarnings(read_excel("NYGDPPCAPKDCHL.xls", col_types = c("date", "numeric"), col_names = c("date", "chl_rgdp")))
fed_chl <- na.omit(fed_chl)
# China
fed_chn <- suppressWarnings(read_excel("NYGDPPCAPKDCHN.xls", col_types = c("date", "numeric"), col_names = c("date", "chn_rgdp")))
fed_chn <- na.omit(fed_chn)
# Republic of Cote d'Ivoire
fed_civ <- suppressWarnings(read_excel("NYGDPPCAPKDCIV.xls", col_types = c("date", "numeric"), col_names = c("date", "civ_rgdp")))
fed_civ <- na.omit(fed_civ)
# Cameroon
fed_cmr <- suppressWarnings(read_excel("NYGDPPCAPKDCMR.xls", col_types = c("date", "numeric"), col_names = c("date", "cmr_rgdp")))
fed_cmr <- na.omit(fed_cmr)
# Democratic Republic of Congo
fed_cod <- suppressWarnings(read_excel("NYGDPPCAPKDCOD.xls", col_types = c("date", "numeric"), col_names = c("date", "cod_rgdp")))
fed_cod <- na.omit(fed_cod)
# Republic of Congo
fed_cog <- suppressWarnings(read_excel("NYGDPPCAPKDCOG.xls", col_types = c("date", "numeric"), col_names = c("date", "cog_rgdp")))
fed_cog <- na.omit(fed_cog)
# Colombia
fed_col <- suppressWarnings(read_excel("NYGDPPCAPKDCOL.xls", col_types = c("date", "numeric"), col_names = c("date", "col_rgdp")))
fed_col <- na.omit(fed_col)
# Costa Rica
fed_cri <- suppressWarnings(read_excel("NYGDPPCAPKDCRI.xls", col_types = c("date", "numeric"), col_names = c("date", "cri_rgdp")))
fed_cri <- na.omit(fed_cri)
# Denmark
fed_dnk <- suppressWarnings(read_excel("NYGDPPCAPKDDNK.xls", col_types = c("date", "numeric"), col_names = c("date", "dnk_rgdp")))
fed_dnk <- na.omit(fed_dnk)
# Dominican Republic
fed_dom <- suppressWarnings(read_excel("NYGDPPCAPKDDOM.xls", col_types = c("date", "numeric"), col_names = c("date", "dom_rgdp")))
fed_dom <- na.omit(fed_dom)
# Algeria
fed_dza <- suppressWarnings(read_excel("NYGDPPCAPKDDZA.xls", col_types = c("date", "numeric"), col_names = c("date", "dza_rgdp")))
fed_dza <- na.omit(fed_dza)
# Ecuador
fed_ecu <- suppressWarnings(read_excel("NYGDPPCAPKDECU.xls", col_types = c("date", "numeric"), col_names = c("date", "ecu_rgdp")))
fed_ecu <- na.omit(fed_ecu)
# Egypt
fed_egy <- suppressWarnings(read_excel("NYGDPPCAPKDEGY.xls", col_types = c("date", "numeric"), col_names = c("date", "egy_rgdp")))
fed_egy <- na.omit(fed_egy)
# Spain
fed_esp <- suppressWarnings(read_excel("NYGDPPCAPKDESP.xls", col_types = c("date", "numeric"), col_names = c("date", "esp_rgdp")))
fed_esp <- na.omit(fed_esp)
# European Union 
fed_euu <- suppressWarnings(read_excel("NYGDPPCAPKDEUU.xls", col_types = c("date", "numeric"), col_names = c("date", "euu_rgdp")))
fed_euu <- na.omit(fed_euu)
# Finland
fed_fin <- suppressWarnings(read_excel("NYGDPPCAPKDFIN.xls", col_types = c("date", "numeric"), col_names = c("date", "fin_rgdp")))
fed_fin <- na.omit(fed_fin)
# Fiji
fed_fji <- suppressWarnings(read_excel("NYGDPPCAPKDFJI.xls", col_types = c("date", "numeric"), col_names = c("date", "fji_rgdp")))
fed_fji <- na.omit(fed_fji)
# France
fed_fra <- suppressWarnings(read_excel("NYGDPPCAPKDFRA.xls", col_types = c("date", "numeric"), col_names = c("date", "fra_rgdp")))
fed_fra <- na.omit(fed_fra)
# Gabon
fed_gab <- suppressWarnings(read_excel("NYGDPPCAPKDGAB.xls", col_types = c("date", "numeric"), col_names = c("date", "gab_rgdp")))
fed_gab <- na.omit(fed_gab)
# United Kingdom
fed_gbr <- suppressWarnings(read_excel("NYGDPPCAPKDGBR.xls", col_types = c("date", "numeric"), col_names = c("date", "gbr_rgdp")))
fed_gbr <- na.omit(fed_gbr)
# Ghana
fed_gha <- suppressWarnings(read_excel("NYGDPPCAPKDGHA.xls", col_types = c("date", "numeric"), col_names = c("date", "gha_rgdp")))
fed_gha <- na.omit(fed_gha)
# Greece
fed_grc <- suppressWarnings(read_excel("NYGDPPCAPKDGRC.xls", col_types = c("date", "numeric"), col_names = c("date", "grc_rgdp")))
fed_grc <- na.omit(fed_grc)
# Guatemala
fed_gtm <- suppressWarnings(read_excel("NYGDPPCAPKDGTM.xls", col_types = c("date", "numeric"), col_names = c("date", "gtm_rgdp")))
fed_gtm <- na.omit(fed_gtm)
# Guyana
fed_guy <- suppressWarnings(read_excel("NYGDPPCAPKDGUY.xls", col_types = c("date", "numeric"), col_names = c("date", "guy_rgdp")))
fed_guy <- na.omit(fed_guy)
# Honduras
fed_hnd <- suppressWarnings(read_excel("NYGDPPCAPKDHND.xls", col_types = c("date", "numeric"), col_names = c("date", "hnd_rgdp")))
fed_hnd <- na.omit(fed_hnd)
# Haiti
fed_hti <- suppressWarnings(read_excel("NYGDPPCAPKDHTI.xls", col_types = c("date", "numeric"), col_names = c("date", "hti_rgdp")))
fed_hti <- na.omit(fed_hti)
# Indonesia
fed_idn <- suppressWarnings(read_excel("NYGDPPCAPKDIDN.xls", col_types = c("date", "numeric"), col_names = c("date", "idn_rgdp")))
fed_idn <- na.omit(fed_idn)
# India
fed_ind <- suppressWarnings(read_excel("NYGDPPCAPKDIND.xls", col_types = c("date", "numeric"), col_names = c("date", "ind_rgdp")))
fed_ind <- na.omit(fed_ind)
# Iceland
fed_isl <- suppressWarnings(read_excel("NYGDPPCAPKDISL.xls", col_types = c("date", "numeric"), col_names = c("date", "isl_rgdp")))
fed_isl <- na.omit(fed_isl)
# Isreal
fed_isr <- suppressWarnings(read_excel("NYGDPPCAPKDISR.xls", col_types = c("date", "numeric"), col_names = c("date", "isr_rgdp")))
fed_isr <- na.omit(fed_isr)
# Italy
fed_ita <- suppressWarnings(read_excel("NYGDPPCAPKDITA.xls", col_types = c("date", "numeric"), col_names = c("date", "ita_rgdp")))
fed_ita <- na.omit(fed_ita)
# Japan
fed_jpn <- suppressWarnings(read_excel("NYGDPPCAPKDJPN.xls", col_types = c("date", "numeric"), col_names = c("date", "jpn_rgdp")))
fed_jpn <- na.omit(fed_jpn)
# Kenya
fed_ken <- suppressWarnings(read_excel("NYGDPPCAPKDKEN.xls", col_types = c("date", "numeric"), col_names = c("date", "ken_rgdp")))
fed_ken <- na.omit(fed_ken)
# Korea
fed_kor <- suppressWarnings(read_excel("NYGDPPCAPKDKOR.xls", col_types = c("date", "numeric"), col_names = c("date", "kor_rgdp")))
fed_kor <- na.omit(fed_kor)
# Luxembourg
fed_lux <- suppressWarnings(read_excel("NYGDPPCAPKDLUX.xls", col_types = c("date", "numeric"), col_names = c("date", "lux_rgdp")))
fed_lux <- na.omit(fed_lux)
# Mexico
fed_mex <- suppressWarnings(read_excel("NYGDPPCAPKDMEX.xls", col_types = c("date", "numeric"), col_names = c("date", "mex_rgdp")))
fed_mex <- na.omit(fed_mex)
# Myanmar
fed_mmr <- suppressWarnings(read_excel("NYGDPPCAPKDMMR.xls", col_types = c("date", "numeric"), col_names = c("date", "mmr_rgdp")))
fed_mmr <- na.omit(fed_mmr)
# Mauritania
fed_mrt <- suppressWarnings(read_excel("NYGDPPCAPKDMRT.xls", col_types = c("date", "numeric"), col_names = c("date", "mrt_rgdp")))
fed_mrt <- na.omit(fed_mrt)
# Malawi
fed_mwi <- suppressWarnings(read_excel("NYGDPPCAPKDMWI.xls", col_types = c("date", "numeric"), col_names = c("date", "mwi_rgdp")))
fed_mwi <- na.omit(fed_mwi)
# Malaysia
fed_mys <- suppressWarnings(read_excel("NYGDPPCAPKDMYS.xls", col_types = c("date", "numeric"), col_names = c("date", "mys_rgdp")))
fed_mys <- na.omit(fed_mys)
# Niger
fed_ner <- suppressWarnings(read_excel("NYGDPPCAPKDNER.xls", col_types = c("date", "numeric"), col_names = c("date", "ner_rgdp")))
fed_ner <- na.omit(fed_ner)
# Nigeria
fed_nga <- suppressWarnings(read_excel("NYGDPPCAPKDNGA.xls", col_types = c("date", "numeric"), col_names = c("date", "nga_rgdp")))
fed_nga <- na.omit(fed_nga)
# Nicaragua
fed_nic <- suppressWarnings(read_excel("NYGDPPCAPKDNIC.xls", col_types = c("date", "numeric"), col_names = c("date", "nic_rgdp")))
fed_nic <- na.omit(fed_nic)
# Netherlands
fed_nld <- suppressWarnings(read_excel("NYGDPPCAPKDNLD.xls", col_types = c("date", "numeric"), col_names = c("date", "nld_rgdp")))
fed_nld <- na.omit(fed_nld)
# Norway
fed_nor <- suppressWarnings(read_excel("NYGDPPCAPKDNOR.xls", col_types = c("date", "numeric"), col_names = c("date", "nor_rgdp")))
fed_nor <- na.omit(fed_nor)
# Nepal
fed_npl <- suppressWarnings(read_excel("NYGDPPCAPKDNPL.xls", col_types = c("date", "numeric"), col_names = c("date", "npl_rgdp")))
fed_npl <- na.omit(fed_npl)
# Pakistan
fed_pak <- suppressWarnings(read_excel("NYGDPPCAPKDPAK.xls", col_types = c("date", "numeric"), col_names = c("date", "pak_rgdp")))
fed_pak <- na.omit(fed_pak)
# Panama
fed_pan <- suppressWarnings(read_excel("NYGDPPCAPKDPAN.xls", col_types = c("date", "numeric"), col_names = c("date", "pan_rgdp")))
fed_pan <- na.omit(fed_pan)
# Peru
fed_per <- suppressWarnings(read_excel("NYGDPPCAPKDPER.xls", col_types = c("date", "numeric"), col_names = c("date", "per_rgdp")))
fed_per <- na.omit(fed_per)
# Philippines
fed_phl <- suppressWarnings(read_excel("NYGDPPCAPKDPHL.xls", col_types = c("date", "numeric"), col_names = c("date", "phl_rgdp")))
fed_phl <- na.omit(fed_phl)
# Papua New Guinea
fed_png <- suppressWarnings(read_excel("NYGDPPCAPKDPNG.xls", col_types = c("date", "numeric"), col_names = c("date", "png_rgdp")))
fed_png <- na.omit(fed_png)
# Puerto Rico
fed_pri <- suppressWarnings(read_excel("NYGDPPCAPKDPRI.xls", col_types = c("date", "numeric"), col_names = c("date", "pri_rgdp")))
fed_pri <- na.omit(fed_pri)
# Portugal
fed_prt <- suppressWarnings(read_excel("NYGDPPCAPKDPRT.xls", col_types = c("date", "numeric"), col_names = c("date", "prt_rgdp")))
fed_prt <- na.omit(fed_prt)
# Paraguay
fed_pry <- suppressWarnings(read_excel("NYGDPPCAPKDPRY.xls", col_types = c("date", "numeric"), col_names = c("date", "pry_rgdp")))
fed_pry <- na.omit(fed_pry)
# Rwanda
fed_rwa <- suppressWarnings(read_excel("NYGDPPCAPKDRWA.xls", col_types = c("date", "numeric"), col_names = c("date", "rwa_rgdp")))
fed_rwa <- na.omit(fed_rwa)
# Senegal
fed_sen <- suppressWarnings(read_excel("NYGDPPCAPKDSEN.xls", col_types = c("date", "numeric"), col_names = c("date", "sen_rgdp")))
fed_sen <- na.omit(fed_sen)
# Singapore
fed_sgp <- suppressWarnings(read_excel("NYGDPPCAPKDSGP.xls", col_types = c("date", "numeric"), col_names = c("date", "sgp_rgdp")))
fed_sgp <- na.omit(fed_sgp)
# Sierra Leone
fed_sle <- suppressWarnings(read_excel("NYGDPPCAPKDSLE.xls", col_types = c("date", "numeric"), col_names = c("date", "sle_rgdp")))
fed_sle <- na.omit(fed_sle)
# Suriname
fed_sur <- suppressWarnings(read_excel("NYGDPPCAPKDSUR.xls", col_types = c("date", "numeric"), col_names = c("date", "sur_rgdp")))
fed_sur <- na.omit(fed_sur)
# Sweden
fed_swe <- suppressWarnings(read_excel("NYGDPPCAPKDSWE.xls", col_types = c("date", "numeric"), col_names = c("date", "swe_rgdp")))
fed_swe <- na.omit(fed_swe)
# Seychelles
fed_syc <- suppressWarnings(read_excel("NYGDPPCAPKDSYC.xls", col_types = c("date", "numeric"), col_names = c("date", "syc_rgdp")))
fed_syc <- na.omit(fed_syc)
# Togo
fed_tgo <- suppressWarnings(read_excel("NYGDPPCAPKDTGO.xls", col_types = c("date", "numeric"), col_names = c("date", "tgo_rgdp")))
fed_tgo <- na.omit(fed_tgo)
# Thailand
fed_tha <- suppressWarnings(read_excel("NYGDPPCAPKDTHA.xls", col_types = c("date", "numeric"), col_names = c("date", "tha_rgdp")))
fed_tha <- na.omit(fed_tha)
# Turkey
fed_tur <- suppressWarnings(read_excel("NYGDPPCAPKDTUR.xls", col_types = c("date", "numeric"), col_names = c("date", "tur_rgdp")))
fed_tur <- na.omit(fed_tur)
# Uruguay
fed_ury <- suppressWarnings(read_excel("NYGDPPCAPKDURY.xls", col_types = c("date", "numeric"), col_names = c("date", "ury_rgdp")))
fed_ury <- na.omit(fed_ury)
# United States
fed_usa <- suppressWarnings(read_excel("NYGDPPCAPKDUSA.xls", col_types = c("date", "numeric"), col_names = c("date", "usa_rgdp")))
fed_usa <- na.omit(fed_usa)
# Saint Vincent and the Grenadines
fed_vct <- suppressWarnings(read_excel("NYGDPPCAPKDVCT.xls", col_types = c("date", "numeric"), col_names = c("date", "vct_rgdp")))
fed_vct <- na.omit(fed_vct)
# Bolivarian Republic of Venezuela
fed_ven <- suppressWarnings(read_excel("NYGDPPCAPKDVEN.xls", col_types = c("date", "numeric"), col_names = c("date", "ven_rgdp")))
fed_ven <- na.omit(fed_ven)
# World
fed_wld <- suppressWarnings(read_excel("NYGDPPCAPKDWLD.xls", col_types = c("date", "numeric"), col_names = c("date", "wld_rgdp")))
fed_wld <- na.omit(fed_wld)
# South Africa
fed_zaf <- suppressWarnings(read_excel("NYGDPPCAPKDZAF.xls", col_types = c("date", "numeric"), col_names = c("date", "zaf_rgdp")))
fed_zaf <- na.omit(fed_zaf)
# Zambia
fed_zmb <- suppressWarnings(read_excel("NYGDPPCAPKDZMB.xls", col_types = c("date", "numeric"), col_names = c("date", "zmb_rgdp")))
fed_zmb <- na.omit(fed_zmb)
# Zimbabwe
fed_zwe <- suppressWarnings(read_excel("NYGDPPCAPKDZWE.xls", col_types = c("date", "numeric"), col_names = c("date", "zwe_rgdp")))
fed_zwe <- na.omit(fed_zwe)

# merging all data
fed_data1 <- merge(fed_arg, fed_aus, by = c("date"))
fed_data1 <- merge(fed_data1, fed_bdi, by = c("date"))                           
fed_data1 <- merge(fed_data1, fed_bel, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ben, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_bfa, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_bgd, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_bhs, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_blz, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_bol, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_bra, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_bwa, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_can, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_chl, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_chn, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_civ, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_cmr, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_cod, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_cog, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_col, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_cri, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_dnk, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_dom, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_dza, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ecu, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_egy, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_esp, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_euu, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_fin, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_fji, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_fra, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_gab, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_gbr, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_gha, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_grc, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_gtm, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_guy, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_hnd, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_hti, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_idn, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ind, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_isl, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_isr, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ita, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_jpn, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ken, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_kor, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_lux, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_mex, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_mmr, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_mrt, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_mwi, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_mys, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ner, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_nga, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_nic, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_nld, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_nor, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_npl, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_pak, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_pan, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_per, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_phl, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_png, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_pri, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_prt, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_pry, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_rwa, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_sen, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_sgp, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_sle, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_sur, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_swe, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_syc, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_tgo, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_tha, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_tur, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ury, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_usa, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_vct, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_ven, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_wld, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_zaf, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_zmb, by = c("date")) 
fed_data1 <- merge(fed_data1, fed_zwe, by = c("date")) 

rm("fed_arg")                           
rm("fed_aus")                           
rm("fed_bdi")
rm("fed_bel")
rm("fed_ben")
rm("fed_bfa")
rm("fed_bgd")
rm("fed_bhs")
rm("fed_blz")
rm("fed_bol")
rm("fed_bra")
rm("fed_bwa")
rm("fed_can")
rm("fed_chl")
rm("fed_chn")
rm("fed_civ")
rm("fed_cmr")
rm("fed_cod")
rm("fed_cog")
rm("fed_col")
rm("fed_cri")
rm("fed_dnk")
rm("fed_dom")
rm("fed_dza")
rm("fed_ecu")
rm("fed_egy")
rm("fed_esp")
rm("fed_euu")
rm("fed_fin")
rm("fed_fji")
rm("fed_fra")
rm("fed_gab")
rm("fed_gbr")
rm("fed_gha")
rm("fed_grc")
rm("fed_gtm")
rm("fed_guy")
rm("fed_hnd")
rm("fed_hti")
rm("fed_idn")
rm("fed_ind")
rm("fed_isl")
rm("fed_isr")
rm("fed_ita")
rm("fed_jpn")
rm("fed_ken")
rm("fed_kor")
rm("fed_lux")
rm("fed_mex")
rm("fed_mmr")
rm("fed_mrt")
rm("fed_mwi")
rm("fed_mys")
rm("fed_ner")
rm("fed_nga")
rm("fed_nic")
rm("fed_nld")
rm("fed_nor")
rm("fed_npl")
rm("fed_pak")
rm("fed_pan")
rm("fed_per")
rm("fed_phl")
rm("fed_png")
rm("fed_pri")
rm("fed_prt")
rm("fed_pry")
rm("fed_rwa")
rm("fed_sen")
rm("fed_sgp")
rm("fed_sle")
rm("fed_sur")
rm("fed_swe")
rm("fed_syc")
rm("fed_tgo")
rm("fed_tha")
rm("fed_tur")
rm("fed_ury")
rm("fed_usa")
rm("fed_vct")
rm("fed_ven")
rm("fed_wld")
rm("fed_zaf")
rm("fed_zmb")
rm("fed_zwe")

# adjusting values to billions
fed_data1[2:86] <- fed_data1[2:86] / 1000

# isolating year value
fed_data1 <- suppressWarnings(fed_data1) %>% 
  mutate(date = ymd(date)) %>% 
  mutate_at(vars(date), funs(year, month, day))

fed_data1 <- fed_data1[c(87,2:86)]

fed_data <- fed_data1[,-1]
rownames(fed_data) <- fed_data1[,1]

fed_data_transpose <- data.frame(t(fed_data1[-1]))
colnames(fed_data_transpose) <- fed_data1[, 1]

rm("fed_data1")

# exporting to a csv file
write.csv(fed_data, file = "fed_data.csv")
write.csv(fed_data_transpose, file = "fed_data_transpose.csv")
