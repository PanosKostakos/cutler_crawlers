library(OECD)

# Define Locations (L3)
PiThess <- "1+2+3_PU+3_IN+3_PR+NOG.GRC+EL527"
PiCork <- "1+2+3_PU+3_IN+3_PR+NOG.IRL+IE025"
PiAntw <- "1+2+3_PU+3_IN+3_PR+NOG.BEL+BE211"
PiAntal <-"1+2+3_PU+3_IN+3_PR+NOG.TUR+TR611"

#Define economic Indicators in new objects. 
Eco_OECD_RegionLabour_EmpPlaRes <- "EMP_Y15_MAX+EMP_Y15_64+EMP_Y15_24+EMP_RA_15_MAX+EMP_RA_15_64+EMP_RA_15_MAX_GR_2001+EMP_RA_15_64_GR_2001+EMP_RA_15_MAX_GR_2007+EMP_RA_15_64_GR_2007+EMP_RA_15_64_SEXDIF+EMP_RA_15_MAX_SEXDIF+EMP_PT+EMP_PT_SH+EMP_PT_SH_SEXDIF.T+F+M.ALL"
Eco_OECD_RegionLabour_LfPartRa <- "REG_LFS+POP_Y15_MAX+POP_Y15_64+LF_Y15_MAX+LF_Y15_64+LF_Y15_24+PARTIC_RA_15_MAX+PARTIC_RA_15_64+PARTIC_RA_15_MAX_GR_2001+PARTIC_RA_15_64_GR_2001+PARTIC_RA_15_MAX_GR_2007+PARTIC_RA_15_64_GR_2007+PARTIC_RA_15_MAX_SEXDIF+PARTIC_RA_15_64_SEXDIF.T+F+M.ALL"
Eco_OECD_RegionLabour_UnemReg <- "UNEM+UNEM_RA_15_MAX+UNEM_RA_15_64+UNEM_RA_15_MAX_GR_2007+UNEM_RA_15_64_GR_2007+UNEM_RA_15_MAX_SEXDIF+UNEM_RA_15_64_SEXDIF.T+F+M.ALL"
Eco_OECD_RegionEco_RegGdpTL2 <- "SNA_2008.GDP.REG+CURR_PR+USD_PPP+REAL_PR+REAL_PPP+PC+PC_CURR_PR+PC_USD_PPP+PC_REAL_PR+PC_REAL_PPP+GWTH_2007+GWTH_REAL_PR_2007+GWTH_PC_REAL_PR_2007+GWTH_2001+GWTH_REAL_PR_2001+GWTH_PC_REAL_PR_2001.ALL"
Eco_OECD_RegionEco_GDPLT3 <- "SNA_2008.GDP.REG+CURR_PR+USD_PPP+REAL_PR+REAL_PPP+PC+PC_CURR_PR+PC_USD_PPP+PC_REAL_PR+PC_REAL_PPP+GWTH_2007+GWTH_REAL_PR_2007+GWTH_PC_REAL_PR_2007+GWTH_2001+GWTH_REAL_PR_2001+GWTH_PC_REAL_PR_2001.ALL"
Eco_OECD_RegionEco_RegEmIndu <- "SNA_2008.EMP_IND_TOTAL+EMP_IND_10_VA+EMP_IND_10_VC+EMP_IND_10_VB_E+EMP_IND_10_VF+EMP_IND_10_VG_I+EMP_IND_10_VJ+EMP_IND_10_VK+EMP_IND_10_VL+EMP_IND_10_VM_N+EMP_IND_10_VO_Q+EMP_IND_10_VR_U.PER.ALL"
Eco_OECD_RegionEco_RegGVAWorker <- "SNA_2008.GVA_IND_TOTAL+GVA_IND_10_VA+GVA_IND_10_VC+GVA_IND_10_VB_E+GVA_IND_10_VF+GVA_IND_10_VG_I+GVA_IND_10_VJ+GVA_IND_10_VK+GVA_IND_10_VL+GVA_IND_10_VM_N+GVA_IND_10_VO_Q+GVA_IND_10_VR_U.PW_CURR_PR+PW_USD_PPP+PW_REAL_PR+PW_REAL_PPP.ALL"
Eco_OECD_RegionEco_RegIncPC <- "SNA_2008.INCOME_DISP+INCOME_PRIM.PC_CURR_PR+PC_USD_PPP+PC_REAL_PR+PC_REAL_PPP.ALL"


#Define the Filter in new objects. 
filter_PiThess_Eco_OECD_RegionLabour_EmpPlaRes <-paste(PiThess, Eco_OECD_RegionLabour_EmpPlaRes,sep=".")
filter_PiAntw_Eco_OECD_RegionLabour_EmpPlaRes <-paste(PiAntw, Eco_OECD_RegionLabour_EmpPlaRes,sep=".")
filter_PiCork_Eco_OECD_RegionLabour_EmpPlaRes <-paste(PiCork, Eco_OECD_RegionLabour_EmpPlaRes,sep=".")
filter_PiAntal_Eco_OECD_RegionLabour_EmpPlaRes <-paste(PiAntal, Eco_OECD_RegionLabour_EmpPlaRes,sep=".")
filter_PiThess_Eco_OECD_RegionLabour_LfPartRa <-paste(PiThess, Eco_OECD_RegionLabour_LfPartRa,sep=".")
filter_PiAntw_Eco_OECD_RegionLabour_LfPartRa <-paste(PiAntw, Eco_OECD_RegionLabour_LfPartRa,sep=".")
filter_PiCork_Eco_OECD_RegionLabour_LfPartRa <-paste(PiCork, Eco_OECD_RegionLabour_LfPartRa,sep=".")
filter_PiAntal_Eco_OECD_RegionLabour_LfPartRa <-paste(PiAntal, Eco_OECD_RegionLabour_LfPartRa,sep=".")
filter_PiThess_Eco_OECD_RegionLabour_UnemReg <-paste(PiThess, Eco_OECD_RegionLabour_UnemReg,sep=".")
filter_PiAntw_Eco_OECD_RegionLabour_UnemReg <-paste(PiAntw, Eco_OECD_RegionLabour_UnemReg,sep=".")
filter_PiCork_Eco_OECD_RegionLabour_UnemReg <-paste(PiCork, Eco_OECD_RegionLabour_UnemReg,sep=".")
filter_PiAntal_Eco_OECD_RegionLabour_UnemReg <-paste(PiAntal, Eco_OECD_RegionLabour_UnemReg,sep=".")
filter_PiThess_Eco_OECD_RegionEco_RegGdpTL2 <-paste(PiThess, Eco_OECD_RegionEco_RegGdpTL2,sep=".")
filter_PiAntw_Eco_OECD_RegionEco_RegGdpTL2 <-paste(PiAntw, Eco_OECD_RegionEco_RegGdpTL2,sep=".")
filter_PiCork_Eco_OECD_RegionEco_RegGdpTL2 <-paste(PiCork, Eco_OECD_RegionEco_RegGdpTL2,sep=".")
filter_PiAntal_Eco_OECD_RegionEco_RegGdpTL2 <-paste(PiAntal, Eco_OECD_RegionEco_RegGdpTL2,sep=".")
filter_PiThess_Eco_OECD_RegionEco_GDPLT3 <-paste(PiThess, Eco_OECD_RegionEco_GDPLT3,sep=".")
filter_PiAntw_Eco_OECD_RegionEco_GDPLT3 <-paste(PiAntw, Eco_OECD_RegionEco_GDPLT3,sep=".")
filter_PiCork_Eco_OECD_RegionEco_GDPLT3 <-paste(PiCork, Eco_OECD_RegionEco_GDPLT3,sep=".")
filter_PiAntal_Eco_OECD_RegionEco_GDPLT3 <-paste(PiAntal, Eco_OECD_RegionEco_GDPLT3,sep=".")
filter_PiThess_Eco_OECD_RegionEco_RegEmIndu <-paste(PiThess, Eco_OECD_RegionEco_RegEmIndu,sep=".")
filter_PiAntw_Eco_OECD_RegionEco_RegEmIndu <-paste(PiAntw, Eco_OECD_RegionEco_RegEmIndu,sep=".")
filter_PiCork_Eco_OECD_RegionEco_RegEmIndu <-paste(PiCork, Eco_OECD_RegionEco_RegEmIndu,sep=".")
filter_PiAntal_Eco_OECD_RegionEco_RegEmIndu <-paste(PiAntal, Eco_OECD_RegionEco_RegEmIndu,sep=".")
filter_PiThess_Eco_OECD_RegionEco_RegGVAWorker <-paste(PiThess, Eco_OECD_RegionEco_RegGVAWorker,sep=".")
filter_PiAntw_Eco_OECD_RegionEco_RegGVAWorker <-paste(PiAntw, Eco_OECD_RegionEco_RegGVAWorker,sep=".")
filter_PiCork_Eco_OECD_RegionEco_RegGVAWorker <-paste(PiCork, Eco_OECD_RegionEco_RegGVAWorker,sep=".")
filter_PiAntal_Eco_OECD_RegionEco_RegGVAWorker <-paste(PiAntal, Eco_OECD_RegionEco_RegGVAWorker,sep=".")
filter_PiThess_Eco_OECD_RegionEco_RegIncPC <-paste(PiThess, Eco_OECD_RegionEco_RegIncPC,sep=".")
filter_PiAntw_Eco_OECD_RegionEco_RegIncPC <-paste(PiAntw, Eco_OECD_RegionEco_RegIncPC,sep=".")
filter_PiCork_Eco_OECD_RegionEco_RegIncPC <-paste(PiCork, Eco_OECD_RegionEco_RegIncPC,sep=".")
filter_PiAntal_Eco_OECD_RegionEco_RegIncPC <-paste(PiAntal, Eco_OECD_RegionEco_RegIncPC,sep=".")


#Make the request with the "get_dataset" function and save the data in unique dataframes.
PiThess_Eco_OECD_RegionLabour_EmpPlaRes <-get_dataset("REGION_LABOUR", filter=filter_PiThess_Eco_OECD_RegionLabour_EmpPlaRes, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionLabour_EmpPlaRes <-get_dataset("REGION_LABOUR", filter=filter_PiAntw_Eco_OECD_RegionLabour_EmpPlaRes, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionLabour_EmpPlaRes <-get_dataset("REGION_LABOUR", filter=filter_PiCork_Eco_OECD_RegionLabour_EmpPlaRes, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionLabour_EmpPlaRes <-get_dataset("REGION_LABOUR", filter=filter_PiAntal_Eco_OECD_RegionLabour_EmpPlaRes, pre_formatted = TRUE)
PiThess_Eco_OECD_RegionLabour_LfPartRa <-get_dataset("REGION_LABOUR", filter=filter_PiThess_Eco_OECD_RegionLabour_LfPartRa, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionLabour_LfPartRa <-get_dataset("REGION_LABOUR", filter=filter_PiAntw_Eco_OECD_RegionLabour_LfPartRa, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionLabour_LfPartRa <-get_dataset("REGION_LABOUR", filter=filter_PiCork_Eco_OECD_RegionLabour_LfPartRa, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionLabour_LfPartRa <-get_dataset("REGION_LABOUR", filter=filter_PiAntal_Eco_OECD_RegionLabour_LfPartRa, pre_formatted = TRUE)
PiThess_Eco_OECD_RegionLabour_UnemReg <-get_dataset("REGION_LABOUR", filter=filter_PiThess_Eco_OECD_RegionLabour_UnemReg, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionLabour_UnemReg <-get_dataset("REGION_LABOUR", filter=filter_PiAntw_Eco_OECD_RegionLabour_UnemReg, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionLabour_UnemReg <-get_dataset("REGION_LABOUR", filter=filter_PiCork_Eco_OECD_RegionLabour_UnemReg, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionLabour_UnemReg <-get_dataset("REGION_LABOUR", filter=filter_PiAntal_Eco_OECD_RegionLabour_UnemReg, pre_formatted = TRUE)
PiThess_Eco_OECD_RegionEco_RegGdpTL2 <-get_dataset("REGION_ECONOM", filter=filter_PiThess_Eco_OECD_RegionEco_RegGdpTL2, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionEco_RegGdpTL2 <-get_dataset("REGION_ECONOM", filter=filter_PiAntw_Eco_OECD_RegionEco_RegGdpTL2, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionEco_RegGdpTL2 <-get_dataset("REGION_ECONOM", filter=filter_PiCork_Eco_OECD_RegionEco_RegGdpTL2, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionEco_RegGdpTL2 <-get_dataset("REGION_ECONOM", filter=filter_PiAntal_Eco_OECD_RegionEco_RegGdpTL2, pre_formatted = TRUE)
PiThess_Eco_OECD_RegionEco_GDPLT3 <-get_dataset("REGION_ECONOM", filter=filter_PiThess_Eco_OECD_RegionEco_GDPLT3, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionEco_GDPLT3 <-get_dataset("REGION_ECONOM", filter=filter_PiAntw_Eco_OECD_RegionEco_GDPLT3, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionEco_GDPLT3 <-get_dataset("REGION_ECONOM", filter=filter_PiCork_Eco_OECD_RegionEco_GDPLT3, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionEco_GDPLT3 <-get_dataset("REGION_ECONOM", filter=filter_PiAntal_Eco_OECD_RegionEco_GDPLT3, pre_formatted = TRUE)
PiThess_Eco_OECD_RegionEco_RegEmIndu <-get_dataset("REGION_ECONOM", filter=filter_PiThess_Eco_OECD_RegionEco_RegEmIndu, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionEco_RegEmIndu <-get_dataset("REGION_ECONOM", filter=filter_PiAntw_Eco_OECD_RegionEco_RegEmIndu, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionEco_RegEmIndu <-get_dataset("REGION_ECONOM", filter=filter_PiCork_Eco_OECD_RegionEco_RegEmIndu, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionEco_RegEmIndu <-get_dataset("REGION_ECONOM", filter=filter_PiAntal_Eco_OECD_RegionEco_RegEmIndu, pre_formatted = TRUE)
PiThess_Eco_OECD_RegionEco_RegGVAWorker <-get_dataset("REGION_ECONOM", filter=filter_PiThess_Eco_OECD_RegionEco_RegGVAWorker, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionEco_RegGVAWorker <-get_dataset("REGION_ECONOM", filter=filter_PiAntw_Eco_OECD_RegionEco_RegGVAWorker, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionEco_RegGVAWorker <-get_dataset("REGION_ECONOM", filter=filter_PiCork_Eco_OECD_RegionEco_RegGVAWorker, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionEco_RegGVAWorker <-get_dataset("REGION_ECONOM", filter=filter_PiAntal_Eco_OECD_RegionEco_RegGVAWorker, pre_formatted = TRUE)
PiThess_Eco_OECD_RegionEco_RegIncPC <-get_dataset("REGION_ECONOM", filter=filter_PiThess_Eco_OECD_RegionEco_RegIncPC, pre_formatted = TRUE)
PiAntw_Eco_OECD_RegionEco_RegIncPC <-get_dataset("REGION_ECONOM", filter=filter_PiAntw_Eco_OECD_RegionEco_RegIncPC, pre_formatted = TRUE)
PiCork_Eco_OECD_RegionEco_RegIncPC <-get_dataset("REGION_ECONOM", filter=filter_PiCork_Eco_OECD_RegionEco_RegIncPC, pre_formatted = TRUE)
PiAntal_Eco_OECD_RegionEco_RegIncPC<-get_dataset("REGION_ECONOM", filter=filter_PiAntal_Eco_OECD_RegionEco_RegIncPC, pre_formatted = TRUE)
