#ADDS script to transfer FSMO roles
Param{
    [string] [Parameter(Mandatory = $true)] $addsSvr
}
#Transfer OperationMasterRoles: pdcemulator, ridmaster, infrastructuremaster, schemamaster, domainnamingmaster
Move-ADDirectoryServerOperationMasterRole -Identity $addsSvr `
–OperationMasterRole DomainNamingMaster,PDCEmulator,RIDMaster,SchemaMaster,InfrastructureMaster
