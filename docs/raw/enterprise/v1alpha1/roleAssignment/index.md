# roleAssignment



## Subpackages

* [spec.parameters.forProvider.serviceAccountRefs](spec/parameters/forProvider/serviceAccountRefs.md)
* [spec.parameters.forProvider.teamRefs](spec/parameters/forProvider/teamRefs.md)
* [spec.parameters.forProvider.userRefs](spec/parameters/forProvider/userRefs.md)
* [spec.parameters.initProvider.serviceAccountRefs](spec/parameters/initProvider/serviceAccountRefs.md)
* [spec.parameters.initProvider.teamRefs](spec/parameters/initProvider/teamRefs.md)
* [spec.parameters.initProvider.userRefs](spec/parameters/initProvider/userRefs.md)

## Index

* [`fn new(name)`](#fn-new)
* [`fn withApiVersion()`](#fn-withapiversion)
* [`fn withKind()`](#fn-withkind)
* [`fn withMetadata(value)`](#fn-withmetadata)
* [`fn withMetadataMixin(value)`](#fn-withmetadatamixin)
* [`fn withSpec(value)`](#fn-withspec)
* [`fn withSpecMixin(value)`](#fn-withspecmixin)
* [`obj metadata`](#obj-metadata)
  * [`fn withAnnotations(value)`](#fn-metadatawithannotations)
  * [`fn withAnnotationsMixin(value)`](#fn-metadatawithannotationsmixin)
  * [`fn withClusterName(value)`](#fn-metadatawithclustername)
  * [`fn withCreationTimestamp(value)`](#fn-metadatawithcreationtimestamp)
  * [`fn withDeletionGracePeriodSeconds(value)`](#fn-metadatawithdeletiongraceperiodseconds)
  * [`fn withDeletionTimestamp(value)`](#fn-metadatawithdeletiontimestamp)
  * [`fn withFinalizers(value)`](#fn-metadatawithfinalizers)
  * [`fn withFinalizersMixin(value)`](#fn-metadatawithfinalizersmixin)
  * [`fn withGenerateName(value)`](#fn-metadatawithgeneratename)
  * [`fn withGeneration(value)`](#fn-metadatawithgeneration)
  * [`fn withLabels(value)`](#fn-metadatawithlabels)
  * [`fn withLabelsMixin(value)`](#fn-metadatawithlabelsmixin)
  * [`fn withManagedFields(value)`](#fn-metadatawithmanagedfields)
  * [`fn withManagedFieldsMixin(value)`](#fn-metadatawithmanagedfieldsmixin)
  * [`fn withName(value)`](#fn-metadatawithname)
  * [`fn withNamespace(value)`](#fn-metadatawithnamespace)
  * [`fn withOwnerReferences(value)`](#fn-metadatawithownerreferences)
  * [`fn withOwnerReferencesMixin(value)`](#fn-metadatawithownerreferencesmixin)
  * [`fn withResourceVersion(value)`](#fn-metadatawithresourceversion)
  * [`fn withSelfLink(value)`](#fn-metadatawithselflink)
  * [`fn withUid(value)`](#fn-metadatawithuid)
* [`obj spec`](#obj-spec)
  * [`fn withCompositionRef(value)`](#fn-specwithcompositionref)
  * [`fn withCompositionRefMixin(value)`](#fn-specwithcompositionrefmixin)
  * [`fn withCompositionRevisionRef(value)`](#fn-specwithcompositionrevisionref)
  * [`fn withCompositionRevisionRefMixin(value)`](#fn-specwithcompositionrevisionrefmixin)
  * [`fn withCompositionSelector(value)`](#fn-specwithcompositionselector)
  * [`fn withCompositionSelectorMixin(value)`](#fn-specwithcompositionselectormixin)
  * [`fn withCompositionUpdatePolicy(value)`](#fn-specwithcompositionupdatepolicy)
  * [`fn withParameters(value)`](#fn-specwithparameters)
  * [`fn withParametersMixin(value)`](#fn-specwithparametersmixin)
  * [`fn withWriteConnectionSecretToRef(value)`](#fn-specwithwriteconnectionsecrettoref)
  * [`fn withWriteConnectionSecretToRefMixin(value)`](#fn-specwithwriteconnectionsecrettorefmixin)
  * [`obj compositionRef`](#obj-speccompositionref)
    * [`fn withName(value)`](#fn-speccompositionrefwithname)
  * [`obj compositionRevisionRef`](#obj-speccompositionrevisionref)
    * [`fn withName(value)`](#fn-speccompositionrevisionrefwithname)
  * [`obj compositionSelector`](#obj-speccompositionselector)
    * [`fn withMatchLabels(value)`](#fn-speccompositionselectorwithmatchlabels)
    * [`fn withMatchLabelsMixin(value)`](#fn-speccompositionselectorwithmatchlabelsmixin)
  * [`obj parameters`](#obj-specparameters)
    * [`fn withDeletionPolicy(value="Delete")`](#fn-specparameterswithdeletionpolicy)
    * [`fn withExternalName(value)`](#fn-specparameterswithexternalname)
    * [`fn withForProvider(value)`](#fn-specparameterswithforprovider)
    * [`fn withForProviderMixin(value)`](#fn-specparameterswithforprovidermixin)
    * [`fn withInitProvider(value)`](#fn-specparameterswithinitprovider)
    * [`fn withInitProviderMixin(value)`](#fn-specparameterswithinitprovidermixin)
    * [`fn withManagementPolicies(value=["*"])`](#fn-specparameterswithmanagementpolicies)
    * [`fn withManagementPoliciesMixin(value=["*"])`](#fn-specparameterswithmanagementpoliciesmixin)
    * [`fn withProviderConfigRef(value={"name": "default"})`](#fn-specparameterswithproviderconfigref)
    * [`fn withProviderConfigRefMixin(value={"name": "default"})`](#fn-specparameterswithproviderconfigrefmixin)
    * [`fn withPublishConnectionDetailsTo(value)`](#fn-specparameterswithpublishconnectiondetailsto)
    * [`fn withPublishConnectionDetailsToMixin(value)`](#fn-specparameterswithpublishconnectiondetailstomixin)
    * [`fn withSelectorLabel(value)`](#fn-specparameterswithselectorlabel)
    * [`fn withWriteConnectionSecretToRef(value)`](#fn-specparameterswithwriteconnectionsecrettoref)
    * [`fn withWriteConnectionSecretToRefMixin(value)`](#fn-specparameterswithwriteconnectionsecrettorefmixin)
    * [`obj forProvider`](#obj-specparametersforprovider)
      * [`fn withOrgId(value)`](#fn-specparametersforproviderwithorgid)
      * [`fn withOrganizationRef(value)`](#fn-specparametersforproviderwithorganizationref)
      * [`fn withOrganizationRefMixin(value)`](#fn-specparametersforproviderwithorganizationrefmixin)
      * [`fn withOrganizationSelector(value)`](#fn-specparametersforproviderwithorganizationselector)
      * [`fn withOrganizationSelectorMixin(value)`](#fn-specparametersforproviderwithorganizationselectormixin)
      * [`fn withRoleRef(value)`](#fn-specparametersforproviderwithroleref)
      * [`fn withRoleRefMixin(value)`](#fn-specparametersforproviderwithrolerefmixin)
      * [`fn withRoleSelector(value)`](#fn-specparametersforproviderwithroleselector)
      * [`fn withRoleSelectorMixin(value)`](#fn-specparametersforproviderwithroleselectormixin)
      * [`fn withRoleUid(value)`](#fn-specparametersforproviderwithroleuid)
      * [`fn withServiceAccountRefs(value)`](#fn-specparametersforproviderwithserviceaccountrefs)
      * [`fn withServiceAccountRefsMixin(value)`](#fn-specparametersforproviderwithserviceaccountrefsmixin)
      * [`fn withServiceAccountSelector(value)`](#fn-specparametersforproviderwithserviceaccountselector)
      * [`fn withServiceAccountSelectorMixin(value)`](#fn-specparametersforproviderwithserviceaccountselectormixin)
      * [`fn withServiceAccounts(value)`](#fn-specparametersforproviderwithserviceaccounts)
      * [`fn withServiceAccountsMixin(value)`](#fn-specparametersforproviderwithserviceaccountsmixin)
      * [`fn withTeamRefs(value)`](#fn-specparametersforproviderwithteamrefs)
      * [`fn withTeamRefsMixin(value)`](#fn-specparametersforproviderwithteamrefsmixin)
      * [`fn withTeamSelector(value)`](#fn-specparametersforproviderwithteamselector)
      * [`fn withTeamSelectorMixin(value)`](#fn-specparametersforproviderwithteamselectormixin)
      * [`fn withTeams(value)`](#fn-specparametersforproviderwithteams)
      * [`fn withTeamsMixin(value)`](#fn-specparametersforproviderwithteamsmixin)
      * [`fn withUserRefs(value)`](#fn-specparametersforproviderwithuserrefs)
      * [`fn withUserRefsMixin(value)`](#fn-specparametersforproviderwithuserrefsmixin)
      * [`fn withUserSelector(value)`](#fn-specparametersforproviderwithuserselector)
      * [`fn withUserSelectorMixin(value)`](#fn-specparametersforproviderwithuserselectormixin)
      * [`fn withUsers(value)`](#fn-specparametersforproviderwithusers)
      * [`fn withUsersMixin(value)`](#fn-specparametersforproviderwithusersmixin)
      * [`obj organizationRef`](#obj-specparametersforproviderorganizationref)
        * [`fn withName(value)`](#fn-specparametersforproviderorganizationrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderorganizationrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderorganizationrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderorganizationrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderorganizationrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderorganizationrefpolicywithresolve)
      * [`obj organizationSelector`](#obj-specparametersforproviderorganizationselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersforproviderorganizationselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersforproviderorganizationselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersforproviderorganizationselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderorganizationselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderorganizationselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderorganizationselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderorganizationselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderorganizationselectorpolicywithresolve)
      * [`obj roleRef`](#obj-specparametersforproviderroleref)
        * [`fn withName(value)`](#fn-specparametersforproviderrolerefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderrolerefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderrolerefwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderrolerefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderrolerefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderrolerefpolicywithresolve)
      * [`obj roleSelector`](#obj-specparametersforproviderroleselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersforproviderroleselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersforproviderroleselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersforproviderroleselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderroleselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderroleselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderroleselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderroleselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderroleselectorpolicywithresolve)
      * [`obj serviceAccountSelector`](#obj-specparametersforproviderserviceaccountselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersforproviderserviceaccountselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersforproviderserviceaccountselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersforproviderserviceaccountselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderserviceaccountselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderserviceaccountselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderserviceaccountselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderserviceaccountselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderserviceaccountselectorpolicywithresolve)
      * [`obj teamSelector`](#obj-specparametersforproviderteamselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersforproviderteamselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersforproviderteamselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersforproviderteamselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderteamselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderteamselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderteamselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderteamselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderteamselectorpolicywithresolve)
      * [`obj userSelector`](#obj-specparametersforprovideruserselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersforprovideruserselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersforprovideruserselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersforprovideruserselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersforprovideruserselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforprovideruserselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersforprovideruserselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforprovideruserselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforprovideruserselectorpolicywithresolve)
    * [`obj initProvider`](#obj-specparametersinitprovider)
      * [`fn withOrgId(value)`](#fn-specparametersinitproviderwithorgid)
      * [`fn withOrganizationRef(value)`](#fn-specparametersinitproviderwithorganizationref)
      * [`fn withOrganizationRefMixin(value)`](#fn-specparametersinitproviderwithorganizationrefmixin)
      * [`fn withOrganizationSelector(value)`](#fn-specparametersinitproviderwithorganizationselector)
      * [`fn withOrganizationSelectorMixin(value)`](#fn-specparametersinitproviderwithorganizationselectormixin)
      * [`fn withRoleRef(value)`](#fn-specparametersinitproviderwithroleref)
      * [`fn withRoleRefMixin(value)`](#fn-specparametersinitproviderwithrolerefmixin)
      * [`fn withRoleSelector(value)`](#fn-specparametersinitproviderwithroleselector)
      * [`fn withRoleSelectorMixin(value)`](#fn-specparametersinitproviderwithroleselectormixin)
      * [`fn withRoleUid(value)`](#fn-specparametersinitproviderwithroleuid)
      * [`fn withServiceAccountRefs(value)`](#fn-specparametersinitproviderwithserviceaccountrefs)
      * [`fn withServiceAccountRefsMixin(value)`](#fn-specparametersinitproviderwithserviceaccountrefsmixin)
      * [`fn withServiceAccountSelector(value)`](#fn-specparametersinitproviderwithserviceaccountselector)
      * [`fn withServiceAccountSelectorMixin(value)`](#fn-specparametersinitproviderwithserviceaccountselectormixin)
      * [`fn withServiceAccounts(value)`](#fn-specparametersinitproviderwithserviceaccounts)
      * [`fn withServiceAccountsMixin(value)`](#fn-specparametersinitproviderwithserviceaccountsmixin)
      * [`fn withTeamRefs(value)`](#fn-specparametersinitproviderwithteamrefs)
      * [`fn withTeamRefsMixin(value)`](#fn-specparametersinitproviderwithteamrefsmixin)
      * [`fn withTeamSelector(value)`](#fn-specparametersinitproviderwithteamselector)
      * [`fn withTeamSelectorMixin(value)`](#fn-specparametersinitproviderwithteamselectormixin)
      * [`fn withTeams(value)`](#fn-specparametersinitproviderwithteams)
      * [`fn withTeamsMixin(value)`](#fn-specparametersinitproviderwithteamsmixin)
      * [`fn withUserRefs(value)`](#fn-specparametersinitproviderwithuserrefs)
      * [`fn withUserRefsMixin(value)`](#fn-specparametersinitproviderwithuserrefsmixin)
      * [`fn withUserSelector(value)`](#fn-specparametersinitproviderwithuserselector)
      * [`fn withUserSelectorMixin(value)`](#fn-specparametersinitproviderwithuserselectormixin)
      * [`fn withUsers(value)`](#fn-specparametersinitproviderwithusers)
      * [`fn withUsersMixin(value)`](#fn-specparametersinitproviderwithusersmixin)
      * [`obj organizationRef`](#obj-specparametersinitproviderorganizationref)
        * [`fn withName(value)`](#fn-specparametersinitproviderorganizationrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderorganizationrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderorganizationrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderorganizationrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderorganizationrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderorganizationrefpolicywithresolve)
      * [`obj organizationSelector`](#obj-specparametersinitproviderorganizationselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersinitproviderorganizationselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersinitproviderorganizationselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersinitproviderorganizationselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderorganizationselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderorganizationselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderorganizationselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderorganizationselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderorganizationselectorpolicywithresolve)
      * [`obj roleRef`](#obj-specparametersinitproviderroleref)
        * [`fn withName(value)`](#fn-specparametersinitproviderrolerefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderrolerefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderrolerefwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderrolerefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderrolerefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderrolerefpolicywithresolve)
      * [`obj roleSelector`](#obj-specparametersinitproviderroleselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersinitproviderroleselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersinitproviderroleselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersinitproviderroleselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderroleselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderroleselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderroleselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderroleselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderroleselectorpolicywithresolve)
      * [`obj serviceAccountSelector`](#obj-specparametersinitproviderserviceaccountselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersinitproviderserviceaccountselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersinitproviderserviceaccountselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersinitproviderserviceaccountselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderserviceaccountselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderserviceaccountselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderserviceaccountselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderserviceaccountselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderserviceaccountselectorpolicywithresolve)
      * [`obj teamSelector`](#obj-specparametersinitproviderteamselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersinitproviderteamselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersinitproviderteamselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersinitproviderteamselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderteamselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderteamselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderteamselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderteamselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderteamselectorpolicywithresolve)
      * [`obj userSelector`](#obj-specparametersinitprovideruserselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersinitprovideruserselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersinitprovideruserselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersinitprovideruserselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersinitprovideruserselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitprovideruserselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitprovideruserselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitprovideruserselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitprovideruserselectorpolicywithresolve)
    * [`obj providerConfigRef`](#obj-specparametersproviderconfigref)
      * [`fn withName(value)`](#fn-specparametersproviderconfigrefwithname)
      * [`fn withPolicy(value)`](#fn-specparametersproviderconfigrefwithpolicy)
      * [`fn withPolicyMixin(value)`](#fn-specparametersproviderconfigrefwithpolicymixin)
      * [`obj policy`](#obj-specparametersproviderconfigrefpolicy)
        * [`fn withResolution(value="Required")`](#fn-specparametersproviderconfigrefpolicywithresolution)
        * [`fn withResolve(value)`](#fn-specparametersproviderconfigrefpolicywithresolve)
    * [`obj publishConnectionDetailsTo`](#obj-specparameterspublishconnectiondetailsto)
      * [`fn withConfigRef(value={"name": "default"})`](#fn-specparameterspublishconnectiondetailstowithconfigref)
      * [`fn withConfigRefMixin(value={"name": "default"})`](#fn-specparameterspublishconnectiondetailstowithconfigrefmixin)
      * [`fn withMetadata(value)`](#fn-specparameterspublishconnectiondetailstowithmetadata)
      * [`fn withMetadataMixin(value)`](#fn-specparameterspublishconnectiondetailstowithmetadatamixin)
      * [`fn withName(value)`](#fn-specparameterspublishconnectiondetailstowithname)
      * [`obj configRef`](#obj-specparameterspublishconnectiondetailstoconfigref)
        * [`fn withName(value)`](#fn-specparameterspublishconnectiondetailstoconfigrefwithname)
        * [`fn withPolicy(value)`](#fn-specparameterspublishconnectiondetailstoconfigrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparameterspublishconnectiondetailstoconfigrefwithpolicymixin)
        * [`obj policy`](#obj-specparameterspublishconnectiondetailstoconfigrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparameterspublishconnectiondetailstoconfigrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparameterspublishconnectiondetailstoconfigrefpolicywithresolve)
      * [`obj metadata`](#obj-specparameterspublishconnectiondetailstometadata)
        * [`fn withAnnotations(value)`](#fn-specparameterspublishconnectiondetailstometadatawithannotations)
        * [`fn withAnnotationsMixin(value)`](#fn-specparameterspublishconnectiondetailstometadatawithannotationsmixin)
        * [`fn withLabels(value)`](#fn-specparameterspublishconnectiondetailstometadatawithlabels)
        * [`fn withLabelsMixin(value)`](#fn-specparameterspublishconnectiondetailstometadatawithlabelsmixin)
        * [`fn withType(value)`](#fn-specparameterspublishconnectiondetailstometadatawithtype)
    * [`obj writeConnectionSecretToRef`](#obj-specparameterswriteconnectionsecrettoref)
      * [`fn withName(value)`](#fn-specparameterswriteconnectionsecrettorefwithname)
      * [`fn withNamespace(value)`](#fn-specparameterswriteconnectionsecrettorefwithnamespace)
  * [`obj writeConnectionSecretToRef`](#obj-specwriteconnectionsecrettoref)
    * [`fn withName(value)`](#fn-specwriteconnectionsecrettorefwithname)
    * [`fn withNamespace(value)`](#fn-specwriteconnectionsecrettorefwithnamespace)

## Fields

### fn new

```jsonnet
new(name)
```

PARAMETERS:

* **name** (`string`)

`new` creates a new instance
### fn withApiVersion

```jsonnet
withApiVersion()
```



### fn withKind

```jsonnet
withKind()
```



### fn withMetadata

```jsonnet
withMetadata(value)
```

PARAMETERS:

* **value** (`object`)

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
### fn withMetadataMixin

```jsonnet
withMetadataMixin(value)
```

PARAMETERS:

* **value** (`object`)

ObjectMeta is metadata that all persisted resources must have, which includes all objects users must create.
### fn withSpec

```jsonnet
withSpec(value)
```

PARAMETERS:

* **value** (`object`)


### fn withSpecMixin

```jsonnet
withSpecMixin(value)
```

PARAMETERS:

* **value** (`object`)


### obj metadata


#### fn metadata.withAnnotations

```jsonnet
metadata.withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
#### fn metadata.withAnnotationsMixin

```jsonnet
metadata.withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Annotations is an unstructured key value map stored with a resource that may be set by external tools to store and retrieve arbitrary metadata. They are not queryable and should be preserved when modifying objects. More info: http://kubernetes.io/docs/user-guide/annotations
#### fn metadata.withClusterName

```jsonnet
metadata.withClusterName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the cluster which the object belongs to. This is used to distinguish resources with same name and namespace in different clusters. This field is not set anywhere right now and apiserver is going to ignore it if set in create or update request.
#### fn metadata.withCreationTimestamp

```jsonnet
metadata.withCreationTimestamp(value)
```

PARAMETERS:

* **value** (`string`)

CreationTimestamp is a timestamp representing the server time when this object was created. It is not guaranteed to be set in happens-before order across separate operations. Clients may not set this value. It is represented in RFC3339 form and is in UTC.

Populated by the system. Read-only. Null for lists. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
#### fn metadata.withDeletionGracePeriodSeconds

```jsonnet
metadata.withDeletionGracePeriodSeconds(value)
```

PARAMETERS:

* **value** (`integer`)

Number of seconds allowed for this object to gracefully terminate before it will be removed from the system. Only set when deletionTimestamp is also set. May only be shortened. Read-only.
#### fn metadata.withDeletionTimestamp

```jsonnet
metadata.withDeletionTimestamp(value)
```

PARAMETERS:

* **value** (`string`)

DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This field is set by the server when a graceful deletion is requested by the user, and is not directly settable by a client. The resource is expected to be deleted (no longer visible from resource lists, and not reachable by name) after the time in this field, once the finalizers list is empty. As long as the finalizers list contains items, deletion is blocked. Once the deletionTimestamp is set, this value may not be unset or be set further into the future, although it may be shortened or the resource may be deleted prior to this time. For example, a user may request that a pod is deleted in 30 seconds. The Kubelet will react by sending a graceful termination signal to the containers in the pod. After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the container and after cleanup, remove the pod from the API. In the presence of network partitions, this object may still exist after this timestamp, until an administrator or automated process can determine the resource is fully terminated. If not set, graceful deletion of the object has not been requested.

Populated by the system when a graceful deletion is requested. Read-only. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
#### fn metadata.withFinalizers

```jsonnet
metadata.withFinalizers(value)
```

PARAMETERS:

* **value** (`array`)

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
#### fn metadata.withFinalizersMixin

```jsonnet
metadata.withFinalizersMixin(value)
```

PARAMETERS:

* **value** (`array`)

Must be empty before the object is deleted from the registry. Each entry is an identifier for the responsible component that will remove the entry from the list. If the deletionTimestamp of the object is non-nil, entries in this list can only be removed. Finalizers may be processed and removed in any order.  Order is NOT enforced because it introduces significant risk of stuck finalizers. finalizers is a shared field, any actor with permission can reorder it. If the finalizer list is processed in order, then this can lead to a situation in which the component responsible for the first finalizer in the list is waiting for a signal (field value, external system, or other) produced by a component responsible for a finalizer later in the list, resulting in a deadlock. Without enforced ordering finalizers are free to order amongst themselves and are not vulnerable to ordering changes in the list.
#### fn metadata.withGenerateName

```jsonnet
metadata.withGenerateName(value)
```

PARAMETERS:

* **value** (`string`)

GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF the Name field has not been provided. If this field is used, the name returned to the client will be different than the name passed. This value will also be combined with a unique suffix. The provided value has the same validation rules as the Name field, and may be truncated by the length of the suffix required to make the value unique on the server.

If this field is specified and the generated name exists, the server will NOT return a 409 - instead, it will either return 201 Created or 500 with Reason ServerTimeout indicating a unique name could not be found in the time allotted, and the client should retry (optionally after the time indicated in the Retry-After header).

Applied only if Name is not specified. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
#### fn metadata.withGeneration

```jsonnet
metadata.withGeneration(value)
```

PARAMETERS:

* **value** (`integer`)

A sequence number representing a specific generation of the desired state. Populated by the system. Read-only.
#### fn metadata.withLabels

```jsonnet
metadata.withLabels(value)
```

PARAMETERS:

* **value** (`object`)

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
#### fn metadata.withLabelsMixin

```jsonnet
metadata.withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Map of string keys and values that can be used to organize and categorize (scope and select) objects. May match selectors of replication controllers and services. More info: http://kubernetes.io/docs/user-guide/labels
#### fn metadata.withManagedFields

```jsonnet
metadata.withManagedFields(value)
```

PARAMETERS:

* **value** (`array`)

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
#### fn metadata.withManagedFieldsMixin

```jsonnet
metadata.withManagedFieldsMixin(value)
```

PARAMETERS:

* **value** (`array`)

ManagedFields maps workflow-id and version to the set of fields that are managed by that workflow. This is mostly for internal housekeeping, and users typically shouldn't need to set or understand this field. A workflow can be the user's name, a controller's name, or the name of a specific apply path like "ci-cd". The set of fields is always in the version that the workflow used when modifying the object.
#### fn metadata.withName

```jsonnet
metadata.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name must be unique within a namespace. Is required when creating resources, although some resources may allow a client to request the generation of an appropriate name automatically. Name is primarily intended for creation idempotence and configuration definition. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/identifiers#names
#### fn metadata.withNamespace

```jsonnet
metadata.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace defines the space within which each name must be unique. An empty namespace is equivalent to the "default" namespace, but "default" is the canonical representation. Not all objects are required to be scoped to a namespace - the value of this field for those objects will be empty.

Must be a DNS_LABEL. Cannot be updated. More info: http://kubernetes.io/docs/user-guide/namespaces
#### fn metadata.withOwnerReferences

```jsonnet
metadata.withOwnerReferences(value)
```

PARAMETERS:

* **value** (`array`)

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
#### fn metadata.withOwnerReferencesMixin

```jsonnet
metadata.withOwnerReferencesMixin(value)
```

PARAMETERS:

* **value** (`array`)

List of objects depended by this object. If ALL objects in the list have been deleted, this object will be garbage collected. If this object is managed by a controller, then an entry in this list will point to this controller, with the controller field set to true. There cannot be more than one managing controller.
#### fn metadata.withResourceVersion

```jsonnet
metadata.withResourceVersion(value)
```

PARAMETERS:

* **value** (`string`)

An opaque value that represents the internal version of this object that can be used by clients to determine when objects have changed. May be used for optimistic concurrency, change detection, and the watch operation on a resource or set of resources. Clients must treat these values as opaque and passed unmodified back to the server. They may only be valid for a particular resource or set of resources.

Populated by the system. Read-only. Value must be treated as opaque by clients and . More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
#### fn metadata.withSelfLink

```jsonnet
metadata.withSelfLink(value)
```

PARAMETERS:

* **value** (`string`)

SelfLink is a URL representing this object. Populated by the system. Read-only.

DEPRECATED Kubernetes will stop propagating this field in 1.20 release and the field is planned to be removed in 1.21 release.
#### fn metadata.withUid

```jsonnet
metadata.withUid(value)
```

PARAMETERS:

* **value** (`string`)

UID is the unique in time and space value for this object. It is typically generated by the server on successful creation of a resource and is not allowed to change on PUT operations.

Populated by the system. Read-only. More info: http://kubernetes.io/docs/user-guide/identifiers#uids
### obj spec


#### fn spec.withCompositionRef

```jsonnet
spec.withCompositionRef(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionRefMixin

```jsonnet
spec.withCompositionRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionRevisionRef

```jsonnet
spec.withCompositionRevisionRef(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionRevisionRefMixin

```jsonnet
spec.withCompositionRevisionRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionSelector

```jsonnet
spec.withCompositionSelector(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionSelectorMixin

```jsonnet
spec.withCompositionSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withCompositionUpdatePolicy

```jsonnet
spec.withCompositionUpdatePolicy(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Automatic"`, `"Manual"`


#### fn spec.withParameters

```jsonnet
spec.withParameters(value)
```

PARAMETERS:

* **value** (`object`)

RoleAssignmentSpec defines the desired state of RoleAssignment
#### fn spec.withParametersMixin

```jsonnet
spec.withParametersMixin(value)
```

PARAMETERS:

* **value** (`object`)

RoleAssignmentSpec defines the desired state of RoleAssignment
#### fn spec.withWriteConnectionSecretToRef

```jsonnet
spec.withWriteConnectionSecretToRef(value)
```

PARAMETERS:

* **value** (`object`)


#### fn spec.withWriteConnectionSecretToRefMixin

```jsonnet
spec.withWriteConnectionSecretToRefMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### obj spec.compositionRef


##### fn spec.compositionRef.withName

```jsonnet
spec.compositionRef.withName(value)
```

PARAMETERS:

* **value** (`string`)


#### obj spec.compositionRevisionRef


##### fn spec.compositionRevisionRef.withName

```jsonnet
spec.compositionRevisionRef.withName(value)
```

PARAMETERS:

* **value** (`string`)


#### obj spec.compositionSelector


##### fn spec.compositionSelector.withMatchLabels

```jsonnet
spec.compositionSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)


##### fn spec.compositionSelector.withMatchLabelsMixin

```jsonnet
spec.compositionSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)


#### obj spec.parameters


##### fn spec.parameters.withDeletionPolicy

```jsonnet
spec.parameters.withDeletionPolicy(value="Delete")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Delete"`
   - valid values: `"Orphan"`, `"Delete"`

DeletionPolicy specifies what will happen to the underlying external
when this managed resource is deleted - either "Delete" or "Orphan" the
external resource.
This field is planned to be deprecated in favor of the ManagementPolicies
field in a future release. Currently, both could be set independently and
non-default values would be honored if the feature flag is enabled.
See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
##### fn spec.parameters.withExternalName

```jsonnet
spec.parameters.withExternalName(value)
```

PARAMETERS:

* **value** (`string`)

The name of the managed resource inside the Provider.
By default Providers give external resources the same name as the Kubernetes object. A provider uses the external name to lookup a managed resource in an external system. The provider looks up the resource in the external system to determine if it exists, and if it matches the managed resource’s desired state. If the provider can’t find the resource, it creates it.

Docs: https://docs.crossplane.io/latest/concepts/managed-resources/#naming-external-resources

##### fn spec.parameters.withForProvider

```jsonnet
spec.parameters.withForProvider(value)
```

PARAMETERS:

* **value** (`object`)


##### fn spec.parameters.withForProviderMixin

```jsonnet
spec.parameters.withForProviderMixin(value)
```

PARAMETERS:

* **value** (`object`)


##### fn spec.parameters.withInitProvider

```jsonnet
spec.parameters.withInitProvider(value)
```

PARAMETERS:

* **value** (`object`)

THIS IS A BETA FIELD. It will be honored
unless the Management Policies feature flag is disabled.
InitProvider holds the same fields as ForProvider, with the exception
of Identifier and other resource reference fields. The fields that are
in InitProvider are merged into ForProvider when the resource is created.
The same fields are also added to the terraform ignore_changes hook, to
avoid updating them after creation. This is useful for fields that are
required on creation, but we do not desire to update them after creation,
for example because of an external controller is managing them, like an
autoscaler.
##### fn spec.parameters.withInitProviderMixin

```jsonnet
spec.parameters.withInitProviderMixin(value)
```

PARAMETERS:

* **value** (`object`)

THIS IS A BETA FIELD. It will be honored
unless the Management Policies feature flag is disabled.
InitProvider holds the same fields as ForProvider, with the exception
of Identifier and other resource reference fields. The fields that are
in InitProvider are merged into ForProvider when the resource is created.
The same fields are also added to the terraform ignore_changes hook, to
avoid updating them after creation. This is useful for fields that are
required on creation, but we do not desire to update them after creation,
for example because of an external controller is managing them, like an
autoscaler.
##### fn spec.parameters.withManagementPolicies

```jsonnet
spec.parameters.withManagementPolicies(value=["*"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["*"]`

THIS IS A BETA FIELD. It is on by default but can be opted out
through a Crossplane feature flag.
ManagementPolicies specify the array of actions Crossplane is allowed to
take on the managed and external resources.
This field is planned to replace the DeletionPolicy field in a future
release. Currently, both could be set independently and non-default
values would be honored if the feature flag is enabled. If both are
custom, the DeletionPolicy field will be ignored.
See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
##### fn spec.parameters.withManagementPoliciesMixin

```jsonnet
spec.parameters.withManagementPoliciesMixin(value=["*"])
```

PARAMETERS:

* **value** (`array`)
   - default value: `["*"]`

THIS IS A BETA FIELD. It is on by default but can be opted out
through a Crossplane feature flag.
ManagementPolicies specify the array of actions Crossplane is allowed to
take on the managed and external resources.
This field is planned to replace the DeletionPolicy field in a future
release. Currently, both could be set independently and non-default
values would be honored if the feature flag is enabled. If both are
custom, the DeletionPolicy field will be ignored.
See the design doc for more information: https://github.com/crossplane/crossplane/blob/499895a25d1a1a0ba1604944ef98ac7a1a71f197/design/design-doc-observe-only-resources.md?plain=1#L223
and this one: https://github.com/crossplane/crossplane/blob/444267e84783136daa93568b364a5f01228cacbe/design/one-pager-ignore-changes.md
##### fn spec.parameters.withProviderConfigRef

```jsonnet
spec.parameters.withProviderConfigRef(value={"name": "default"})
```

PARAMETERS:

* **value** (`object`)
   - default value: `{"name": "default"}`

ProviderConfigReference specifies how the provider that will be used to
create, observe, update, and delete this managed resource should be
configured.
##### fn spec.parameters.withProviderConfigRefMixin

```jsonnet
spec.parameters.withProviderConfigRefMixin(value={"name": "default"})
```

PARAMETERS:

* **value** (`object`)
   - default value: `{"name": "default"}`

ProviderConfigReference specifies how the provider that will be used to
create, observe, update, and delete this managed resource should be
configured.
##### fn spec.parameters.withPublishConnectionDetailsTo

```jsonnet
spec.parameters.withPublishConnectionDetailsTo(value)
```

PARAMETERS:

* **value** (`object`)

PublishConnectionDetailsTo specifies the connection secret config which
contains a name, metadata and a reference to secret store config to
which any connection details for this managed resource should be written.
Connection details frequently include the endpoint, username,
and password required to connect to the managed resource.
##### fn spec.parameters.withPublishConnectionDetailsToMixin

```jsonnet
spec.parameters.withPublishConnectionDetailsToMixin(value)
```

PARAMETERS:

* **value** (`object`)

PublishConnectionDetailsTo specifies the connection secret config which
contains a name, metadata and a reference to secret store config to
which any connection details for this managed resource should be written.
Connection details frequently include the endpoint, username,
and password required to connect to the managed resource.
##### fn spec.parameters.withSelectorLabel

```jsonnet
spec.parameters.withSelectorLabel(value)
```

PARAMETERS:

* **value** (`string`)

Configure a custom label for use with selector.matchLabels.
##### fn spec.parameters.withWriteConnectionSecretToRef

```jsonnet
spec.parameters.withWriteConnectionSecretToRef(value)
```

PARAMETERS:

* **value** (`object`)

WriteConnectionSecretToReference specifies the namespace and name of a
Secret to which any connection details for this managed resource should
be written. Connection details frequently include the endpoint, username,
and password required to connect to the managed resource.
This field is planned to be replaced in a future release in favor of
PublishConnectionDetailsTo. Currently, both could be set independently
and connection details would be published to both without affecting
each other.
##### fn spec.parameters.withWriteConnectionSecretToRefMixin

```jsonnet
spec.parameters.withWriteConnectionSecretToRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

WriteConnectionSecretToReference specifies the namespace and name of a
Secret to which any connection details for this managed resource should
be written. Connection details frequently include the endpoint, username,
and password required to connect to the managed resource.
This field is planned to be replaced in a future release in favor of
PublishConnectionDetailsTo. Currently, both could be set independently
and connection details would be published to both without affecting
each other.
##### obj spec.parameters.forProvider


###### fn spec.parameters.forProvider.withOrgId

```jsonnet
spec.parameters.forProvider.withOrgId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Organization ID. If not set, the Org ID defined in the provider block will be used.
The Organization ID. If not set, the Org ID defined in the provider block will be used.
###### fn spec.parameters.forProvider.withOrganizationRef

```jsonnet
spec.parameters.forProvider.withOrganizationRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Organization in oss to populate orgId.
###### fn spec.parameters.forProvider.withOrganizationRefMixin

```jsonnet
spec.parameters.forProvider.withOrganizationRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Organization in oss to populate orgId.
###### fn spec.parameters.forProvider.withOrganizationSelector

```jsonnet
spec.parameters.forProvider.withOrganizationSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Organization in oss to populate orgId.
###### fn spec.parameters.forProvider.withOrganizationSelectorMixin

```jsonnet
spec.parameters.forProvider.withOrganizationSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Organization in oss to populate orgId.
###### fn spec.parameters.forProvider.withRoleRef

```jsonnet
spec.parameters.forProvider.withRoleRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Role in enterprise to populate roleUid.
###### fn spec.parameters.forProvider.withRoleRefMixin

```jsonnet
spec.parameters.forProvider.withRoleRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Role in enterprise to populate roleUid.
###### fn spec.parameters.forProvider.withRoleSelector

```jsonnet
spec.parameters.forProvider.withRoleSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Role in enterprise to populate roleUid.
###### fn spec.parameters.forProvider.withRoleSelectorMixin

```jsonnet
spec.parameters.forProvider.withRoleSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Role in enterprise to populate roleUid.
###### fn spec.parameters.forProvider.withRoleUid

```jsonnet
spec.parameters.forProvider.withRoleUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) Grafana RBAC role UID.
Grafana RBAC role UID.
###### fn spec.parameters.forProvider.withServiceAccountRefs

```jsonnet
spec.parameters.forProvider.withServiceAccountRefs(value)
```

PARAMETERS:

* **value** (`array`)

References to ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.forProvider.withServiceAccountRefsMixin

```jsonnet
spec.parameters.forProvider.withServiceAccountRefsMixin(value)
```

PARAMETERS:

* **value** (`array`)

References to ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.forProvider.withServiceAccountSelector

```jsonnet
spec.parameters.forProvider.withServiceAccountSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.forProvider.withServiceAccountSelectorMixin

```jsonnet
spec.parameters.forProvider.withServiceAccountSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.forProvider.withServiceAccounts

```jsonnet
spec.parameters.forProvider.withServiceAccounts(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of service accounts that the role should be assigned to.
IDs of service accounts that the role should be assigned to.
###### fn spec.parameters.forProvider.withServiceAccountsMixin

```jsonnet
spec.parameters.forProvider.withServiceAccountsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of service accounts that the role should be assigned to.
IDs of service accounts that the role should be assigned to.
###### fn spec.parameters.forProvider.withTeamRefs

```jsonnet
spec.parameters.forProvider.withTeamRefs(value)
```

PARAMETERS:

* **value** (`array`)

References to Team in oss to populate teams.
###### fn spec.parameters.forProvider.withTeamRefsMixin

```jsonnet
spec.parameters.forProvider.withTeamRefsMixin(value)
```

PARAMETERS:

* **value** (`array`)

References to Team in oss to populate teams.
###### fn spec.parameters.forProvider.withTeamSelector

```jsonnet
spec.parameters.forProvider.withTeamSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of Team in oss to populate teams.
###### fn spec.parameters.forProvider.withTeamSelectorMixin

```jsonnet
spec.parameters.forProvider.withTeamSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of Team in oss to populate teams.
###### fn spec.parameters.forProvider.withTeams

```jsonnet
spec.parameters.forProvider.withTeams(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of teams that the role should be assigned to.
IDs of teams that the role should be assigned to.
###### fn spec.parameters.forProvider.withTeamsMixin

```jsonnet
spec.parameters.forProvider.withTeamsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of teams that the role should be assigned to.
IDs of teams that the role should be assigned to.
###### fn spec.parameters.forProvider.withUserRefs

```jsonnet
spec.parameters.forProvider.withUserRefs(value)
```

PARAMETERS:

* **value** (`array`)

References to User in oss to populate users.
###### fn spec.parameters.forProvider.withUserRefsMixin

```jsonnet
spec.parameters.forProvider.withUserRefsMixin(value)
```

PARAMETERS:

* **value** (`array`)

References to User in oss to populate users.
###### fn spec.parameters.forProvider.withUserSelector

```jsonnet
spec.parameters.forProvider.withUserSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of User in oss to populate users.
###### fn spec.parameters.forProvider.withUserSelectorMixin

```jsonnet
spec.parameters.forProvider.withUserSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of User in oss to populate users.
###### fn spec.parameters.forProvider.withUsers

```jsonnet
spec.parameters.forProvider.withUsers(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) IDs of users that the role should be assigned to.
IDs of users that the role should be assigned to.
###### fn spec.parameters.forProvider.withUsersMixin

```jsonnet
spec.parameters.forProvider.withUsersMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) IDs of users that the role should be assigned to.
IDs of users that the role should be assigned to.
###### obj spec.parameters.forProvider.organizationRef


####### fn spec.parameters.forProvider.organizationRef.withName

```jsonnet
spec.parameters.forProvider.organizationRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.forProvider.organizationRef.withPolicy

```jsonnet
spec.parameters.forProvider.organizationRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.forProvider.organizationRef.withPolicyMixin

```jsonnet
spec.parameters.forProvider.organizationRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.forProvider.organizationRef.policy


######## fn spec.parameters.forProvider.organizationRef.policy.withResolution

```jsonnet
spec.parameters.forProvider.organizationRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.organizationRef.policy.withResolve

```jsonnet
spec.parameters.forProvider.organizationRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.forProvider.organizationSelector


####### fn spec.parameters.forProvider.organizationSelector.withMatchControllerRef

```jsonnet
spec.parameters.forProvider.organizationSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.forProvider.organizationSelector.withMatchLabels

```jsonnet
spec.parameters.forProvider.organizationSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.organizationSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.forProvider.organizationSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.organizationSelector.withPolicy

```jsonnet
spec.parameters.forProvider.organizationSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.forProvider.organizationSelector.withPolicyMixin

```jsonnet
spec.parameters.forProvider.organizationSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.forProvider.organizationSelector.policy


######## fn spec.parameters.forProvider.organizationSelector.policy.withResolution

```jsonnet
spec.parameters.forProvider.organizationSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.organizationSelector.policy.withResolve

```jsonnet
spec.parameters.forProvider.organizationSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.forProvider.roleRef


####### fn spec.parameters.forProvider.roleRef.withName

```jsonnet
spec.parameters.forProvider.roleRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.forProvider.roleRef.withPolicy

```jsonnet
spec.parameters.forProvider.roleRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.forProvider.roleRef.withPolicyMixin

```jsonnet
spec.parameters.forProvider.roleRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.forProvider.roleRef.policy


######## fn spec.parameters.forProvider.roleRef.policy.withResolution

```jsonnet
spec.parameters.forProvider.roleRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.roleRef.policy.withResolve

```jsonnet
spec.parameters.forProvider.roleRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.forProvider.roleSelector


####### fn spec.parameters.forProvider.roleSelector.withMatchControllerRef

```jsonnet
spec.parameters.forProvider.roleSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.forProvider.roleSelector.withMatchLabels

```jsonnet
spec.parameters.forProvider.roleSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.roleSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.forProvider.roleSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.roleSelector.withPolicy

```jsonnet
spec.parameters.forProvider.roleSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.forProvider.roleSelector.withPolicyMixin

```jsonnet
spec.parameters.forProvider.roleSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.forProvider.roleSelector.policy


######## fn spec.parameters.forProvider.roleSelector.policy.withResolution

```jsonnet
spec.parameters.forProvider.roleSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.roleSelector.policy.withResolve

```jsonnet
spec.parameters.forProvider.roleSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.forProvider.serviceAccountSelector


####### fn spec.parameters.forProvider.serviceAccountSelector.withMatchControllerRef

```jsonnet
spec.parameters.forProvider.serviceAccountSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.forProvider.serviceAccountSelector.withMatchLabels

```jsonnet
spec.parameters.forProvider.serviceAccountSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.serviceAccountSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.forProvider.serviceAccountSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.serviceAccountSelector.withPolicy

```jsonnet
spec.parameters.forProvider.serviceAccountSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.forProvider.serviceAccountSelector.withPolicyMixin

```jsonnet
spec.parameters.forProvider.serviceAccountSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.forProvider.serviceAccountSelector.policy


######## fn spec.parameters.forProvider.serviceAccountSelector.policy.withResolution

```jsonnet
spec.parameters.forProvider.serviceAccountSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.serviceAccountSelector.policy.withResolve

```jsonnet
spec.parameters.forProvider.serviceAccountSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.forProvider.teamSelector


####### fn spec.parameters.forProvider.teamSelector.withMatchControllerRef

```jsonnet
spec.parameters.forProvider.teamSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.forProvider.teamSelector.withMatchLabels

```jsonnet
spec.parameters.forProvider.teamSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.teamSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.forProvider.teamSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.teamSelector.withPolicy

```jsonnet
spec.parameters.forProvider.teamSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.forProvider.teamSelector.withPolicyMixin

```jsonnet
spec.parameters.forProvider.teamSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.forProvider.teamSelector.policy


######## fn spec.parameters.forProvider.teamSelector.policy.withResolution

```jsonnet
spec.parameters.forProvider.teamSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.teamSelector.policy.withResolve

```jsonnet
spec.parameters.forProvider.teamSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.forProvider.userSelector


####### fn spec.parameters.forProvider.userSelector.withMatchControllerRef

```jsonnet
spec.parameters.forProvider.userSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.forProvider.userSelector.withMatchLabels

```jsonnet
spec.parameters.forProvider.userSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.userSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.forProvider.userSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.forProvider.userSelector.withPolicy

```jsonnet
spec.parameters.forProvider.userSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.forProvider.userSelector.withPolicyMixin

```jsonnet
spec.parameters.forProvider.userSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.forProvider.userSelector.policy


######## fn spec.parameters.forProvider.userSelector.policy.withResolution

```jsonnet
spec.parameters.forProvider.userSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.userSelector.policy.withResolve

```jsonnet
spec.parameters.forProvider.userSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
##### obj spec.parameters.initProvider


###### fn spec.parameters.initProvider.withOrgId

```jsonnet
spec.parameters.initProvider.withOrgId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Organization ID. If not set, the Org ID defined in the provider block will be used.
The Organization ID. If not set, the Org ID defined in the provider block will be used.
###### fn spec.parameters.initProvider.withOrganizationRef

```jsonnet
spec.parameters.initProvider.withOrganizationRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Organization in oss to populate orgId.
###### fn spec.parameters.initProvider.withOrganizationRefMixin

```jsonnet
spec.parameters.initProvider.withOrganizationRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Organization in oss to populate orgId.
###### fn spec.parameters.initProvider.withOrganizationSelector

```jsonnet
spec.parameters.initProvider.withOrganizationSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Organization in oss to populate orgId.
###### fn spec.parameters.initProvider.withOrganizationSelectorMixin

```jsonnet
spec.parameters.initProvider.withOrganizationSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Organization in oss to populate orgId.
###### fn spec.parameters.initProvider.withRoleRef

```jsonnet
spec.parameters.initProvider.withRoleRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Role in enterprise to populate roleUid.
###### fn spec.parameters.initProvider.withRoleRefMixin

```jsonnet
spec.parameters.initProvider.withRoleRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Role in enterprise to populate roleUid.
###### fn spec.parameters.initProvider.withRoleSelector

```jsonnet
spec.parameters.initProvider.withRoleSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Role in enterprise to populate roleUid.
###### fn spec.parameters.initProvider.withRoleSelectorMixin

```jsonnet
spec.parameters.initProvider.withRoleSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Role in enterprise to populate roleUid.
###### fn spec.parameters.initProvider.withRoleUid

```jsonnet
spec.parameters.initProvider.withRoleUid(value)
```

PARAMETERS:

* **value** (`string`)

(String) Grafana RBAC role UID.
Grafana RBAC role UID.
###### fn spec.parameters.initProvider.withServiceAccountRefs

```jsonnet
spec.parameters.initProvider.withServiceAccountRefs(value)
```

PARAMETERS:

* **value** (`array`)

References to ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.initProvider.withServiceAccountRefsMixin

```jsonnet
spec.parameters.initProvider.withServiceAccountRefsMixin(value)
```

PARAMETERS:

* **value** (`array`)

References to ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.initProvider.withServiceAccountSelector

```jsonnet
spec.parameters.initProvider.withServiceAccountSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.initProvider.withServiceAccountSelectorMixin

```jsonnet
spec.parameters.initProvider.withServiceAccountSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of ServiceAccount in oss to populate serviceAccounts.
###### fn spec.parameters.initProvider.withServiceAccounts

```jsonnet
spec.parameters.initProvider.withServiceAccounts(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of service accounts that the role should be assigned to.
IDs of service accounts that the role should be assigned to.
###### fn spec.parameters.initProvider.withServiceAccountsMixin

```jsonnet
spec.parameters.initProvider.withServiceAccountsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of service accounts that the role should be assigned to.
IDs of service accounts that the role should be assigned to.
###### fn spec.parameters.initProvider.withTeamRefs

```jsonnet
spec.parameters.initProvider.withTeamRefs(value)
```

PARAMETERS:

* **value** (`array`)

References to Team in oss to populate teams.
###### fn spec.parameters.initProvider.withTeamRefsMixin

```jsonnet
spec.parameters.initProvider.withTeamRefsMixin(value)
```

PARAMETERS:

* **value** (`array`)

References to Team in oss to populate teams.
###### fn spec.parameters.initProvider.withTeamSelector

```jsonnet
spec.parameters.initProvider.withTeamSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of Team in oss to populate teams.
###### fn spec.parameters.initProvider.withTeamSelectorMixin

```jsonnet
spec.parameters.initProvider.withTeamSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of Team in oss to populate teams.
###### fn spec.parameters.initProvider.withTeams

```jsonnet
spec.parameters.initProvider.withTeams(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of teams that the role should be assigned to.
IDs of teams that the role should be assigned to.
###### fn spec.parameters.initProvider.withTeamsMixin

```jsonnet
spec.parameters.initProvider.withTeamsMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of String) IDs of teams that the role should be assigned to.
IDs of teams that the role should be assigned to.
###### fn spec.parameters.initProvider.withUserRefs

```jsonnet
spec.parameters.initProvider.withUserRefs(value)
```

PARAMETERS:

* **value** (`array`)

References to User in oss to populate users.
###### fn spec.parameters.initProvider.withUserRefsMixin

```jsonnet
spec.parameters.initProvider.withUserRefsMixin(value)
```

PARAMETERS:

* **value** (`array`)

References to User in oss to populate users.
###### fn spec.parameters.initProvider.withUserSelector

```jsonnet
spec.parameters.initProvider.withUserSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of User in oss to populate users.
###### fn spec.parameters.initProvider.withUserSelectorMixin

```jsonnet
spec.parameters.initProvider.withUserSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a list of User in oss to populate users.
###### fn spec.parameters.initProvider.withUsers

```jsonnet
spec.parameters.initProvider.withUsers(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) IDs of users that the role should be assigned to.
IDs of users that the role should be assigned to.
###### fn spec.parameters.initProvider.withUsersMixin

```jsonnet
spec.parameters.initProvider.withUsersMixin(value)
```

PARAMETERS:

* **value** (`array`)

(Set of Number) IDs of users that the role should be assigned to.
IDs of users that the role should be assigned to.
###### obj spec.parameters.initProvider.organizationRef


####### fn spec.parameters.initProvider.organizationRef.withName

```jsonnet
spec.parameters.initProvider.organizationRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.initProvider.organizationRef.withPolicy

```jsonnet
spec.parameters.initProvider.organizationRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.initProvider.organizationRef.withPolicyMixin

```jsonnet
spec.parameters.initProvider.organizationRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.initProvider.organizationRef.policy


######## fn spec.parameters.initProvider.organizationRef.policy.withResolution

```jsonnet
spec.parameters.initProvider.organizationRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.organizationRef.policy.withResolve

```jsonnet
spec.parameters.initProvider.organizationRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.initProvider.organizationSelector


####### fn spec.parameters.initProvider.organizationSelector.withMatchControllerRef

```jsonnet
spec.parameters.initProvider.organizationSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.initProvider.organizationSelector.withMatchLabels

```jsonnet
spec.parameters.initProvider.organizationSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.organizationSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.initProvider.organizationSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.organizationSelector.withPolicy

```jsonnet
spec.parameters.initProvider.organizationSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.initProvider.organizationSelector.withPolicyMixin

```jsonnet
spec.parameters.initProvider.organizationSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.initProvider.organizationSelector.policy


######## fn spec.parameters.initProvider.organizationSelector.policy.withResolution

```jsonnet
spec.parameters.initProvider.organizationSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.organizationSelector.policy.withResolve

```jsonnet
spec.parameters.initProvider.organizationSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.initProvider.roleRef


####### fn spec.parameters.initProvider.roleRef.withName

```jsonnet
spec.parameters.initProvider.roleRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.initProvider.roleRef.withPolicy

```jsonnet
spec.parameters.initProvider.roleRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.initProvider.roleRef.withPolicyMixin

```jsonnet
spec.parameters.initProvider.roleRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.initProvider.roleRef.policy


######## fn spec.parameters.initProvider.roleRef.policy.withResolution

```jsonnet
spec.parameters.initProvider.roleRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.roleRef.policy.withResolve

```jsonnet
spec.parameters.initProvider.roleRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.initProvider.roleSelector


####### fn spec.parameters.initProvider.roleSelector.withMatchControllerRef

```jsonnet
spec.parameters.initProvider.roleSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.initProvider.roleSelector.withMatchLabels

```jsonnet
spec.parameters.initProvider.roleSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.roleSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.initProvider.roleSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.roleSelector.withPolicy

```jsonnet
spec.parameters.initProvider.roleSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.initProvider.roleSelector.withPolicyMixin

```jsonnet
spec.parameters.initProvider.roleSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.initProvider.roleSelector.policy


######## fn spec.parameters.initProvider.roleSelector.policy.withResolution

```jsonnet
spec.parameters.initProvider.roleSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.roleSelector.policy.withResolve

```jsonnet
spec.parameters.initProvider.roleSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.initProvider.serviceAccountSelector


####### fn spec.parameters.initProvider.serviceAccountSelector.withMatchControllerRef

```jsonnet
spec.parameters.initProvider.serviceAccountSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.initProvider.serviceAccountSelector.withMatchLabels

```jsonnet
spec.parameters.initProvider.serviceAccountSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.serviceAccountSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.initProvider.serviceAccountSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.serviceAccountSelector.withPolicy

```jsonnet
spec.parameters.initProvider.serviceAccountSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.initProvider.serviceAccountSelector.withPolicyMixin

```jsonnet
spec.parameters.initProvider.serviceAccountSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.initProvider.serviceAccountSelector.policy


######## fn spec.parameters.initProvider.serviceAccountSelector.policy.withResolution

```jsonnet
spec.parameters.initProvider.serviceAccountSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.serviceAccountSelector.policy.withResolve

```jsonnet
spec.parameters.initProvider.serviceAccountSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.initProvider.teamSelector


####### fn spec.parameters.initProvider.teamSelector.withMatchControllerRef

```jsonnet
spec.parameters.initProvider.teamSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.initProvider.teamSelector.withMatchLabels

```jsonnet
spec.parameters.initProvider.teamSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.teamSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.initProvider.teamSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.teamSelector.withPolicy

```jsonnet
spec.parameters.initProvider.teamSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.initProvider.teamSelector.withPolicyMixin

```jsonnet
spec.parameters.initProvider.teamSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.initProvider.teamSelector.policy


######## fn spec.parameters.initProvider.teamSelector.policy.withResolution

```jsonnet
spec.parameters.initProvider.teamSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.teamSelector.policy.withResolve

```jsonnet
spec.parameters.initProvider.teamSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.initProvider.userSelector


####### fn spec.parameters.initProvider.userSelector.withMatchControllerRef

```jsonnet
spec.parameters.initProvider.userSelector.withMatchControllerRef(value=true)
```

PARAMETERS:

* **value** (`boolean`)
   - default value: `true`

MatchControllerRef ensures an object with the same controller reference
as the selecting object is selected.
####### fn spec.parameters.initProvider.userSelector.withMatchLabels

```jsonnet
spec.parameters.initProvider.userSelector.withMatchLabels(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.userSelector.withMatchLabelsMixin

```jsonnet
spec.parameters.initProvider.userSelector.withMatchLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

MatchLabels ensures an object with matching labels is selected.
####### fn spec.parameters.initProvider.userSelector.withPolicy

```jsonnet
spec.parameters.initProvider.userSelector.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### fn spec.parameters.initProvider.userSelector.withPolicyMixin

```jsonnet
spec.parameters.initProvider.userSelector.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for selection.
####### obj spec.parameters.initProvider.userSelector.policy


######## fn spec.parameters.initProvider.userSelector.policy.withResolution

```jsonnet
spec.parameters.initProvider.userSelector.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.userSelector.policy.withResolve

```jsonnet
spec.parameters.initProvider.userSelector.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
##### obj spec.parameters.providerConfigRef


###### fn spec.parameters.providerConfigRef.withName

```jsonnet
spec.parameters.providerConfigRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
###### fn spec.parameters.providerConfigRef.withPolicy

```jsonnet
spec.parameters.providerConfigRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
###### fn spec.parameters.providerConfigRef.withPolicyMixin

```jsonnet
spec.parameters.providerConfigRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
###### obj spec.parameters.providerConfigRef.policy


####### fn spec.parameters.providerConfigRef.policy.withResolution

```jsonnet
spec.parameters.providerConfigRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
####### fn spec.parameters.providerConfigRef.policy.withResolve

```jsonnet
spec.parameters.providerConfigRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
##### obj spec.parameters.publishConnectionDetailsTo


###### fn spec.parameters.publishConnectionDetailsTo.withConfigRef

```jsonnet
spec.parameters.publishConnectionDetailsTo.withConfigRef(value={"name": "default"})
```

PARAMETERS:

* **value** (`object`)
   - default value: `{"name": "default"}`

SecretStoreConfigRef specifies which secret store config should be used
for this ConnectionSecret.
###### fn spec.parameters.publishConnectionDetailsTo.withConfigRefMixin

```jsonnet
spec.parameters.publishConnectionDetailsTo.withConfigRefMixin(value={"name": "default"})
```

PARAMETERS:

* **value** (`object`)
   - default value: `{"name": "default"}`

SecretStoreConfigRef specifies which secret store config should be used
for this ConnectionSecret.
###### fn spec.parameters.publishConnectionDetailsTo.withMetadata

```jsonnet
spec.parameters.publishConnectionDetailsTo.withMetadata(value)
```

PARAMETERS:

* **value** (`object`)

Metadata is the metadata for connection secret.
###### fn spec.parameters.publishConnectionDetailsTo.withMetadataMixin

```jsonnet
spec.parameters.publishConnectionDetailsTo.withMetadataMixin(value)
```

PARAMETERS:

* **value** (`object`)

Metadata is the metadata for connection secret.
###### fn spec.parameters.publishConnectionDetailsTo.withName

```jsonnet
spec.parameters.publishConnectionDetailsTo.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name is the name of the connection secret.
###### obj spec.parameters.publishConnectionDetailsTo.configRef


####### fn spec.parameters.publishConnectionDetailsTo.configRef.withName

```jsonnet
spec.parameters.publishConnectionDetailsTo.configRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.publishConnectionDetailsTo.configRef.withPolicy

```jsonnet
spec.parameters.publishConnectionDetailsTo.configRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.publishConnectionDetailsTo.configRef.withPolicyMixin

```jsonnet
spec.parameters.publishConnectionDetailsTo.configRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.publishConnectionDetailsTo.configRef.policy


######## fn spec.parameters.publishConnectionDetailsTo.configRef.policy.withResolution

```jsonnet
spec.parameters.publishConnectionDetailsTo.configRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.publishConnectionDetailsTo.configRef.policy.withResolve

```jsonnet
spec.parameters.publishConnectionDetailsTo.configRef.policy.withResolve(value)
```

PARAMETERS:

* **value** (`string`)
   - valid values: `"Always"`, `"IfNotPresent"`

Resolve specifies when this reference should be resolved. The default
is 'IfNotPresent', which will attempt to resolve the reference only when
the corresponding field is not present. Use 'Always' to resolve the
reference on every reconcile.
###### obj spec.parameters.publishConnectionDetailsTo.metadata


####### fn spec.parameters.publishConnectionDetailsTo.metadata.withAnnotations

```jsonnet
spec.parameters.publishConnectionDetailsTo.metadata.withAnnotations(value)
```

PARAMETERS:

* **value** (`object`)

Annotations are the annotations to be added to connection secret.
- For Kubernetes secrets, this will be used as "metadata.annotations".
- It is up to Secret Store implementation for others store types.
####### fn spec.parameters.publishConnectionDetailsTo.metadata.withAnnotationsMixin

```jsonnet
spec.parameters.publishConnectionDetailsTo.metadata.withAnnotationsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Annotations are the annotations to be added to connection secret.
- For Kubernetes secrets, this will be used as "metadata.annotations".
- It is up to Secret Store implementation for others store types.
####### fn spec.parameters.publishConnectionDetailsTo.metadata.withLabels

```jsonnet
spec.parameters.publishConnectionDetailsTo.metadata.withLabels(value)
```

PARAMETERS:

* **value** (`object`)

Labels are the labels/tags to be added to connection secret.
- For Kubernetes secrets, this will be used as "metadata.labels".
- It is up to Secret Store implementation for others store types.
####### fn spec.parameters.publishConnectionDetailsTo.metadata.withLabelsMixin

```jsonnet
spec.parameters.publishConnectionDetailsTo.metadata.withLabelsMixin(value)
```

PARAMETERS:

* **value** (`object`)

Labels are the labels/tags to be added to connection secret.
- For Kubernetes secrets, this will be used as "metadata.labels".
- It is up to Secret Store implementation for others store types.
####### fn spec.parameters.publishConnectionDetailsTo.metadata.withType

```jsonnet
spec.parameters.publishConnectionDetailsTo.metadata.withType(value)
```

PARAMETERS:

* **value** (`string`)

Type is the SecretType for the connection secret.
- Only valid for Kubernetes Secret Stores.
##### obj spec.parameters.writeConnectionSecretToRef


###### fn spec.parameters.writeConnectionSecretToRef.withName

```jsonnet
spec.parameters.writeConnectionSecretToRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the secret.
###### fn spec.parameters.writeConnectionSecretToRef.withNamespace

```jsonnet
spec.parameters.writeConnectionSecretToRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

Namespace of the secret.
#### obj spec.writeConnectionSecretToRef


##### fn spec.writeConnectionSecretToRef.withName

```jsonnet
spec.writeConnectionSecretToRef.withName(value)
```

PARAMETERS:

* **value** (`string`)


##### fn spec.writeConnectionSecretToRef.withNamespace

```jsonnet
spec.writeConnectionSecretToRef.withNamespace(value)
```

PARAMETERS:

* **value** (`string`)

