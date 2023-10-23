@AbapCatalog.sqlViewName: 'ZMBAYEL_V_002 '
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS-2'
define view ZMBAYEL_04675_CDS_002 
    as select from mara
     left outer join makt on makt.matnr = mara.matnr
{
    mara.matnr,
    makt.maktx
}
