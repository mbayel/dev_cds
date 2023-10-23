@AbapCatalog.sqlViewName: 'ZMBAYEL_V_003'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS EKKO EKPO'
define view ZMBAYEL_EKKO_CDS_003 
  as select from ekko
  left outer join ekpo on ekpo.ebeln = ekko.ebeln
  left outer join mara on mara.matnr = ekpo.matnr 
  left outer join makt on makt.matnr = mara.matnr
                      and makt.spras =$session.system_language
  left outer join lfa1 on lfa1.lifnr = ekko.lifnr
{
    ekpo.ebeln as Belge_No,
    ekpo.ebelp as Belge_No_Kalem,
    ekpo.matnr as Malzeme_No,
    ekpo.werks as Uretim_Yeri,
    ekpo.lgort as Depo_Yeri,
    makt.maktx as Malzeme_Metni,
    lfa1.lifnr as Hesap_No,
    lfa1.name1 as Ad_1,
    concat_with_space(lfa1.stras,lfa1.mcod3, 1) as Adress
    
}
