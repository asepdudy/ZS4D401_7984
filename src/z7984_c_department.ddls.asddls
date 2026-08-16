@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Z7984_CDEPARTMENT'
@Metadata.ignorePropagatedAnnotations: true
define view entity Z7984_C_DEPARTMENT
  as select from Z7984_R_DEPARTMENT
{
  key Id,
      Description,
      HeadId,
      AssistantId,
      CreatedBy,
      CreatedAt,
      LocalLastChangedBy,
      LocalLastChangedAt,
      LastChangedAt,
      DepmentHeadId,
      DepmentAssistantId,
      /* Associations */
      _Assistant,
      _Employee,
      _Head
}
