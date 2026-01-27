# roleAssignmentItem



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
      * [`fn withServiceAccountId(value)`](#fn-specparametersforproviderwithserviceaccountid)
      * [`fn withServiceAccountRef(value)`](#fn-specparametersforproviderwithserviceaccountref)
      * [`fn withServiceAccountRefMixin(value)`](#fn-specparametersforproviderwithserviceaccountrefmixin)
      * [`fn withServiceAccountSelector(value)`](#fn-specparametersforproviderwithserviceaccountselector)
      * [`fn withServiceAccountSelectorMixin(value)`](#fn-specparametersforproviderwithserviceaccountselectormixin)
      * [`fn withTeamId(value)`](#fn-specparametersforproviderwithteamid)
      * [`fn withTeamRef(value)`](#fn-specparametersforproviderwithteamref)
      * [`fn withTeamRefMixin(value)`](#fn-specparametersforproviderwithteamrefmixin)
      * [`fn withTeamSelector(value)`](#fn-specparametersforproviderwithteamselector)
      * [`fn withTeamSelectorMixin(value)`](#fn-specparametersforproviderwithteamselectormixin)
      * [`fn withUserId(value)`](#fn-specparametersforproviderwithuserid)
      * [`fn withUserRef(value)`](#fn-specparametersforproviderwithuserref)
      * [`fn withUserRefMixin(value)`](#fn-specparametersforproviderwithuserrefmixin)
      * [`fn withUserSelector(value)`](#fn-specparametersforproviderwithuserselector)
      * [`fn withUserSelectorMixin(value)`](#fn-specparametersforproviderwithuserselectormixin)
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
      * [`obj serviceAccountRef`](#obj-specparametersforproviderserviceaccountref)
        * [`fn withName(value)`](#fn-specparametersforproviderserviceaccountrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderserviceaccountrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderserviceaccountrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderserviceaccountrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderserviceaccountrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderserviceaccountrefpolicywithresolve)
      * [`obj serviceAccountSelector`](#obj-specparametersforproviderserviceaccountselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersforproviderserviceaccountselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersforproviderserviceaccountselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersforproviderserviceaccountselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderserviceaccountselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderserviceaccountselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderserviceaccountselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderserviceaccountselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderserviceaccountselectorpolicywithresolve)
      * [`obj teamRef`](#obj-specparametersforproviderteamref)
        * [`fn withName(value)`](#fn-specparametersforproviderteamrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderteamrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderteamrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderteamrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderteamrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderteamrefpolicywithresolve)
      * [`obj teamSelector`](#obj-specparametersforproviderteamselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersforproviderteamselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersforproviderteamselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersforproviderteamselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersforproviderteamselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforproviderteamselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersforproviderteamselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforproviderteamselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforproviderteamselectorpolicywithresolve)
      * [`obj userRef`](#obj-specparametersforprovideruserref)
        * [`fn withName(value)`](#fn-specparametersforprovideruserrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersforprovideruserrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersforprovideruserrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersforprovideruserrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersforprovideruserrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersforprovideruserrefpolicywithresolve)
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
      * [`fn withServiceAccountId(value)`](#fn-specparametersinitproviderwithserviceaccountid)
      * [`fn withServiceAccountRef(value)`](#fn-specparametersinitproviderwithserviceaccountref)
      * [`fn withServiceAccountRefMixin(value)`](#fn-specparametersinitproviderwithserviceaccountrefmixin)
      * [`fn withServiceAccountSelector(value)`](#fn-specparametersinitproviderwithserviceaccountselector)
      * [`fn withServiceAccountSelectorMixin(value)`](#fn-specparametersinitproviderwithserviceaccountselectormixin)
      * [`fn withTeamId(value)`](#fn-specparametersinitproviderwithteamid)
      * [`fn withTeamRef(value)`](#fn-specparametersinitproviderwithteamref)
      * [`fn withTeamRefMixin(value)`](#fn-specparametersinitproviderwithteamrefmixin)
      * [`fn withTeamSelector(value)`](#fn-specparametersinitproviderwithteamselector)
      * [`fn withTeamSelectorMixin(value)`](#fn-specparametersinitproviderwithteamselectormixin)
      * [`fn withUserId(value)`](#fn-specparametersinitproviderwithuserid)
      * [`fn withUserRef(value)`](#fn-specparametersinitproviderwithuserref)
      * [`fn withUserRefMixin(value)`](#fn-specparametersinitproviderwithuserrefmixin)
      * [`fn withUserSelector(value)`](#fn-specparametersinitproviderwithuserselector)
      * [`fn withUserSelectorMixin(value)`](#fn-specparametersinitproviderwithuserselectormixin)
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
      * [`obj serviceAccountRef`](#obj-specparametersinitproviderserviceaccountref)
        * [`fn withName(value)`](#fn-specparametersinitproviderserviceaccountrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderserviceaccountrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderserviceaccountrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderserviceaccountrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderserviceaccountrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderserviceaccountrefpolicywithresolve)
      * [`obj serviceAccountSelector`](#obj-specparametersinitproviderserviceaccountselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersinitproviderserviceaccountselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersinitproviderserviceaccountselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersinitproviderserviceaccountselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderserviceaccountselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderserviceaccountselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderserviceaccountselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderserviceaccountselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderserviceaccountselectorpolicywithresolve)
      * [`obj teamRef`](#obj-specparametersinitproviderteamref)
        * [`fn withName(value)`](#fn-specparametersinitproviderteamrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderteamrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderteamrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderteamrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderteamrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderteamrefpolicywithresolve)
      * [`obj teamSelector`](#obj-specparametersinitproviderteamselector)
        * [`fn withMatchControllerRef(value=true)`](#fn-specparametersinitproviderteamselectorwithmatchcontrollerref)
        * [`fn withMatchLabels(value)`](#fn-specparametersinitproviderteamselectorwithmatchlabels)
        * [`fn withMatchLabelsMixin(value)`](#fn-specparametersinitproviderteamselectorwithmatchlabelsmixin)
        * [`fn withPolicy(value)`](#fn-specparametersinitproviderteamselectorwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitproviderteamselectorwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitproviderteamselectorpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitproviderteamselectorpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitproviderteamselectorpolicywithresolve)
      * [`obj userRef`](#obj-specparametersinitprovideruserref)
        * [`fn withName(value)`](#fn-specparametersinitprovideruserrefwithname)
        * [`fn withPolicy(value)`](#fn-specparametersinitprovideruserrefwithpolicy)
        * [`fn withPolicyMixin(value)`](#fn-specparametersinitprovideruserrefwithpolicymixin)
        * [`obj policy`](#obj-specparametersinitprovideruserrefpolicy)
          * [`fn withResolution(value="Required")`](#fn-specparametersinitprovideruserrefpolicywithresolution)
          * [`fn withResolve(value)`](#fn-specparametersinitprovideruserrefpolicywithresolve)
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

RoleAssignmentItemSpec defines the desired state of RoleAssignmentItem
#### fn spec.withParametersMixin

```jsonnet
spec.withParametersMixin(value)
```

PARAMETERS:

* **value** (`object`)

RoleAssignmentItemSpec defines the desired state of RoleAssignmentItem
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
##### obj spec.parameters.forProvider


###### fn spec.parameters.forProvider.withOrgId

```jsonnet
spec.parameters.forProvider.withOrgId(value)
```

PARAMETERS:

* **value** (`string`)

(String) The Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.
The Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.
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

(String) the role UID onto which to assign an actor
the role UID onto which to assign an actor
###### fn spec.parameters.forProvider.withServiceAccountId

```jsonnet
spec.parameters.forProvider.withServiceAccountId(value)
```

PARAMETERS:

* **value** (`string`)

(String) the service account onto which the role is to be assigned
the service account onto which the role is to be assigned
###### fn spec.parameters.forProvider.withServiceAccountRef

```jsonnet
spec.parameters.forProvider.withServiceAccountRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.forProvider.withServiceAccountRefMixin

```jsonnet
spec.parameters.forProvider.withServiceAccountRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.forProvider.withServiceAccountSelector

```jsonnet
spec.parameters.forProvider.withServiceAccountSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.forProvider.withServiceAccountSelectorMixin

```jsonnet
spec.parameters.forProvider.withServiceAccountSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.forProvider.withTeamId

```jsonnet
spec.parameters.forProvider.withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) the team onto which the role is to be assigned
the team onto which the role is to be assigned
###### fn spec.parameters.forProvider.withTeamRef

```jsonnet
spec.parameters.forProvider.withTeamRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Team in oss to populate teamId.
###### fn spec.parameters.forProvider.withTeamRefMixin

```jsonnet
spec.parameters.forProvider.withTeamRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Team in oss to populate teamId.
###### fn spec.parameters.forProvider.withTeamSelector

```jsonnet
spec.parameters.forProvider.withTeamSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Team in oss to populate teamId.
###### fn spec.parameters.forProvider.withTeamSelectorMixin

```jsonnet
spec.parameters.forProvider.withTeamSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Team in oss to populate teamId.
###### fn spec.parameters.forProvider.withUserId

```jsonnet
spec.parameters.forProvider.withUserId(value)
```

PARAMETERS:

* **value** (`string`)

(String) the user onto which the role is to be assigned
the user onto which the role is to be assigned
###### fn spec.parameters.forProvider.withUserRef

```jsonnet
spec.parameters.forProvider.withUserRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a User in oss to populate userId.
###### fn spec.parameters.forProvider.withUserRefMixin

```jsonnet
spec.parameters.forProvider.withUserRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a User in oss to populate userId.
###### fn spec.parameters.forProvider.withUserSelector

```jsonnet
spec.parameters.forProvider.withUserSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a User in oss to populate userId.
###### fn spec.parameters.forProvider.withUserSelectorMixin

```jsonnet
spec.parameters.forProvider.withUserSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a User in oss to populate userId.
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
###### obj spec.parameters.forProvider.serviceAccountRef


####### fn spec.parameters.forProvider.serviceAccountRef.withName

```jsonnet
spec.parameters.forProvider.serviceAccountRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.forProvider.serviceAccountRef.withPolicy

```jsonnet
spec.parameters.forProvider.serviceAccountRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.forProvider.serviceAccountRef.withPolicyMixin

```jsonnet
spec.parameters.forProvider.serviceAccountRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.forProvider.serviceAccountRef.policy


######## fn spec.parameters.forProvider.serviceAccountRef.policy.withResolution

```jsonnet
spec.parameters.forProvider.serviceAccountRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.serviceAccountRef.policy.withResolve

```jsonnet
spec.parameters.forProvider.serviceAccountRef.policy.withResolve(value)
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
###### obj spec.parameters.forProvider.teamRef


####### fn spec.parameters.forProvider.teamRef.withName

```jsonnet
spec.parameters.forProvider.teamRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.forProvider.teamRef.withPolicy

```jsonnet
spec.parameters.forProvider.teamRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.forProvider.teamRef.withPolicyMixin

```jsonnet
spec.parameters.forProvider.teamRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.forProvider.teamRef.policy


######## fn spec.parameters.forProvider.teamRef.policy.withResolution

```jsonnet
spec.parameters.forProvider.teamRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.teamRef.policy.withResolve

```jsonnet
spec.parameters.forProvider.teamRef.policy.withResolve(value)
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
###### obj spec.parameters.forProvider.userRef


####### fn spec.parameters.forProvider.userRef.withName

```jsonnet
spec.parameters.forProvider.userRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.forProvider.userRef.withPolicy

```jsonnet
spec.parameters.forProvider.userRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.forProvider.userRef.withPolicyMixin

```jsonnet
spec.parameters.forProvider.userRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.forProvider.userRef.policy


######## fn spec.parameters.forProvider.userRef.policy.withResolution

```jsonnet
spec.parameters.forProvider.userRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.forProvider.userRef.policy.withResolve

```jsonnet
spec.parameters.forProvider.userRef.policy.withResolve(value)
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

(String) The Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.
The Organization ID. If not set, the default organization is used for basic authentication, or the one that owns your service account for token authentication.
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

(String) the role UID onto which to assign an actor
the role UID onto which to assign an actor
###### fn spec.parameters.initProvider.withServiceAccountId

```jsonnet
spec.parameters.initProvider.withServiceAccountId(value)
```

PARAMETERS:

* **value** (`string`)

(String) the service account onto which the role is to be assigned
the service account onto which the role is to be assigned
###### fn spec.parameters.initProvider.withServiceAccountRef

```jsonnet
spec.parameters.initProvider.withServiceAccountRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.initProvider.withServiceAccountRefMixin

```jsonnet
spec.parameters.initProvider.withServiceAccountRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.initProvider.withServiceAccountSelector

```jsonnet
spec.parameters.initProvider.withServiceAccountSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.initProvider.withServiceAccountSelectorMixin

```jsonnet
spec.parameters.initProvider.withServiceAccountSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a ServiceAccount in oss to populate serviceAccountId.
###### fn spec.parameters.initProvider.withTeamId

```jsonnet
spec.parameters.initProvider.withTeamId(value)
```

PARAMETERS:

* **value** (`string`)

(String) the team onto which the role is to be assigned
the team onto which the role is to be assigned
###### fn spec.parameters.initProvider.withTeamRef

```jsonnet
spec.parameters.initProvider.withTeamRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Team in oss to populate teamId.
###### fn spec.parameters.initProvider.withTeamRefMixin

```jsonnet
spec.parameters.initProvider.withTeamRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a Team in oss to populate teamId.
###### fn spec.parameters.initProvider.withTeamSelector

```jsonnet
spec.parameters.initProvider.withTeamSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Team in oss to populate teamId.
###### fn spec.parameters.initProvider.withTeamSelectorMixin

```jsonnet
spec.parameters.initProvider.withTeamSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a Team in oss to populate teamId.
###### fn spec.parameters.initProvider.withUserId

```jsonnet
spec.parameters.initProvider.withUserId(value)
```

PARAMETERS:

* **value** (`string`)

(String) the user onto which the role is to be assigned
the user onto which the role is to be assigned
###### fn spec.parameters.initProvider.withUserRef

```jsonnet
spec.parameters.initProvider.withUserRef(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a User in oss to populate userId.
###### fn spec.parameters.initProvider.withUserRefMixin

```jsonnet
spec.parameters.initProvider.withUserRefMixin(value)
```

PARAMETERS:

* **value** (`object`)

Reference to a User in oss to populate userId.
###### fn spec.parameters.initProvider.withUserSelector

```jsonnet
spec.parameters.initProvider.withUserSelector(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a User in oss to populate userId.
###### fn spec.parameters.initProvider.withUserSelectorMixin

```jsonnet
spec.parameters.initProvider.withUserSelectorMixin(value)
```

PARAMETERS:

* **value** (`object`)

Selector for a User in oss to populate userId.
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
###### obj spec.parameters.initProvider.serviceAccountRef


####### fn spec.parameters.initProvider.serviceAccountRef.withName

```jsonnet
spec.parameters.initProvider.serviceAccountRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.initProvider.serviceAccountRef.withPolicy

```jsonnet
spec.parameters.initProvider.serviceAccountRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.initProvider.serviceAccountRef.withPolicyMixin

```jsonnet
spec.parameters.initProvider.serviceAccountRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.initProvider.serviceAccountRef.policy


######## fn spec.parameters.initProvider.serviceAccountRef.policy.withResolution

```jsonnet
spec.parameters.initProvider.serviceAccountRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.serviceAccountRef.policy.withResolve

```jsonnet
spec.parameters.initProvider.serviceAccountRef.policy.withResolve(value)
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
###### obj spec.parameters.initProvider.teamRef


####### fn spec.parameters.initProvider.teamRef.withName

```jsonnet
spec.parameters.initProvider.teamRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.initProvider.teamRef.withPolicy

```jsonnet
spec.parameters.initProvider.teamRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.initProvider.teamRef.withPolicyMixin

```jsonnet
spec.parameters.initProvider.teamRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.initProvider.teamRef.policy


######## fn spec.parameters.initProvider.teamRef.policy.withResolution

```jsonnet
spec.parameters.initProvider.teamRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.teamRef.policy.withResolve

```jsonnet
spec.parameters.initProvider.teamRef.policy.withResolve(value)
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
###### obj spec.parameters.initProvider.userRef


####### fn spec.parameters.initProvider.userRef.withName

```jsonnet
spec.parameters.initProvider.userRef.withName(value)
```

PARAMETERS:

* **value** (`string`)

Name of the referenced object.
####### fn spec.parameters.initProvider.userRef.withPolicy

```jsonnet
spec.parameters.initProvider.userRef.withPolicy(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### fn spec.parameters.initProvider.userRef.withPolicyMixin

```jsonnet
spec.parameters.initProvider.userRef.withPolicyMixin(value)
```

PARAMETERS:

* **value** (`object`)

Policies for referencing.
####### obj spec.parameters.initProvider.userRef.policy


######## fn spec.parameters.initProvider.userRef.policy.withResolution

```jsonnet
spec.parameters.initProvider.userRef.policy.withResolution(value="Required")
```

PARAMETERS:

* **value** (`string`)
   - default value: `"Required"`
   - valid values: `"Required"`, `"Optional"`

Resolution specifies whether resolution of this reference is required.
The default is 'Required', which means the reconcile will fail if the
reference cannot be resolved. 'Optional' means this reference will be
a no-op if it cannot be resolved.
######## fn spec.parameters.initProvider.userRef.policy.withResolve

```jsonnet
spec.parameters.initProvider.userRef.policy.withResolve(value)
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

