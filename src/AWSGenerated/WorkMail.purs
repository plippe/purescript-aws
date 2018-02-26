

-- | <p>Amazon WorkMail is a secure, managed business email and calendaring service with support for existing desktop and mobile email clients. You can access your email, contacts, and calendars using Microsoft Outlook, your browser, or their native iOS and Android email applications. You can integrate Amazon WorkMail with your existing corporate directory and control both the keys that encrypt your data and the location in which your data is stored.</p> <p>The Amazon WorkMail API is designed for the following scenarios:</p> <ul> <li> <p>Listing and describing organizations</p> </li> </ul> <ul> <li> <p>Managing users</p> </li> </ul> <ul> <li> <p>Managing groups</p> </li> </ul> <ul> <li> <p>Managing resources</p> </li> </ul> <p>All Amazon WorkMail API actions are Amazon-authenticated and certificate-signed. They not only require the use of the AWS SDK, but also allow for the exclusive use of IAM users and roles to help facilitate access, trust, and permission policies. By creating a role and allowing an IAM user to access the Amazon WorkMail site, the IAM user gains full administrative visibility into the entire Amazon WorkMail organization (or as set in the IAM policy). This includes, but is not limited to, the ability to create, update, and delete users, groups, and resources. This allows developers to perform the scenarios listed above, as well as give users the ability to grant access on a selective basis using the IAM model.</p>
module AWS.WorkMail where

import Control.Monad.Aff (Aff)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Map (Map)
import Data.Unit (Unit, unit)

import AWS.Request as AWS

serviceName = "WorkMail" :: String


-- | <p>Adds a member to the resource's set of delegates.</p>
associateDelegateToResource :: forall eff. AssociateDelegateToResourceRequest -> Aff (err :: AWS.RequestError | eff) AssociateDelegateToResourceResponse
associateDelegateToResource = AWS.request serviceName "AssociateDelegateToResource" 


-- | <p>Adds a member to the group's set.</p>
associateMemberToGroup :: forall eff. AssociateMemberToGroupRequest -> Aff (err :: AWS.RequestError | eff) AssociateMemberToGroupResponse
associateMemberToGroup = AWS.request serviceName "AssociateMemberToGroup" 


-- | <p>Adds an alias to the set of a given member of Amazon WorkMail.</p>
createAlias :: forall eff. CreateAliasRequest -> Aff (err :: AWS.RequestError | eff) CreateAliasResponse
createAlias = AWS.request serviceName "CreateAlias" 


-- | <p>Creates a group that can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.</p>
createGroup :: forall eff. CreateGroupRequest -> Aff (err :: AWS.RequestError | eff) CreateGroupResponse
createGroup = AWS.request serviceName "CreateGroup" 


-- | <p>Creates a new Amazon WorkMail resource. The available types are equipment and room.</p>
createResource :: forall eff. CreateResourceRequest -> Aff (err :: AWS.RequestError | eff) CreateResourceResponse
createResource = AWS.request serviceName "CreateResource" 


-- | <p>Creates a user who can be used in Amazon WorkMail by calling the RegisterToWorkMail operation.</p>
createUser :: forall eff. CreateUserRequest -> Aff (err :: AWS.RequestError | eff) CreateUserResponse
createUser = AWS.request serviceName "CreateUser" 


-- | <p>Remove the alias from a set of aliases for a given user.</p>
deleteAlias :: forall eff. DeleteAliasRequest -> Aff (err :: AWS.RequestError | eff) DeleteAliasResponse
deleteAlias = AWS.request serviceName "DeleteAlias" 


-- | <p>Deletes a group from Amazon WorkMail.</p>
deleteGroup :: forall eff. DeleteGroupRequest -> Aff (err :: AWS.RequestError | eff) DeleteGroupResponse
deleteGroup = AWS.request serviceName "DeleteGroup" 


-- | <p>Deletes the specified resource. </p>
deleteResource :: forall eff. DeleteResourceRequest -> Aff (err :: AWS.RequestError | eff) DeleteResourceResponse
deleteResource = AWS.request serviceName "DeleteResource" 


-- | <p>Deletes a user from Amazon WorkMail and all subsequent systems. The action can't be undone. The mailbox is kept as-is for a minimum of 30 days, without any means to restore it. </p>
deleteUser :: forall eff. DeleteUserRequest -> Aff (err :: AWS.RequestError | eff) DeleteUserResponse
deleteUser = AWS.request serviceName "DeleteUser" 


-- | <p>Mark a user, group, or resource as no longer used in Amazon WorkMail. This action disassociates the mailbox and schedules it for clean-up. Amazon WorkMail keeps mailboxes for 30 days before they are permanently removed. The functionality in the console is <i>Disable</i>.</p>
deregisterFromWorkMail :: forall eff. DeregisterFromWorkMailRequest -> Aff (err :: AWS.RequestError | eff) DeregisterFromWorkMailResponse
deregisterFromWorkMail = AWS.request serviceName "DeregisterFromWorkMail" 


-- | <p>Returns the data available for the group.</p>
describeGroup :: forall eff. DescribeGroupRequest -> Aff (err :: AWS.RequestError | eff) DescribeGroupResponse
describeGroup = AWS.request serviceName "DescribeGroup" 


-- | <p>Provides more information regarding a given organization based on its identifier.</p>
describeOrganization :: forall eff. DescribeOrganizationRequest -> Aff (err :: AWS.RequestError | eff) DescribeOrganizationResponse
describeOrganization = AWS.request serviceName "DescribeOrganization" 


-- | <p>Returns the data available for the resource.</p>
describeResource :: forall eff. DescribeResourceRequest -> Aff (err :: AWS.RequestError | eff) DescribeResourceResponse
describeResource = AWS.request serviceName "DescribeResource" 


-- | <p>Provides information regarding the user.</p>
describeUser :: forall eff. DescribeUserRequest -> Aff (err :: AWS.RequestError | eff) DescribeUserResponse
describeUser = AWS.request serviceName "DescribeUser" 


-- | <p>Removes a member from the resource's set of delegates.</p>
disassociateDelegateFromResource :: forall eff. DisassociateDelegateFromResourceRequest -> Aff (err :: AWS.RequestError | eff) DisassociateDelegateFromResourceResponse
disassociateDelegateFromResource = AWS.request serviceName "DisassociateDelegateFromResource" 


-- | <p>Removes a member from a group.</p>
disassociateMemberFromGroup :: forall eff. DisassociateMemberFromGroupRequest -> Aff (err :: AWS.RequestError | eff) DisassociateMemberFromGroupResponse
disassociateMemberFromGroup = AWS.request serviceName "DisassociateMemberFromGroup" 


-- | <p>Creates a paginated call to list the aliases associated with a given entity.</p>
listAliases :: forall eff. ListAliasesRequest -> Aff (err :: AWS.RequestError | eff) ListAliasesResponse
listAliases = AWS.request serviceName "ListAliases" 


-- | <p>Returns an overview of the members of a group.</p>
listGroupMembers :: forall eff. ListGroupMembersRequest -> Aff (err :: AWS.RequestError | eff) ListGroupMembersResponse
listGroupMembers = AWS.request serviceName "ListGroupMembers" 


-- | <p>Returns summaries of the organization's groups.</p>
listGroups :: forall eff. ListGroupsRequest -> Aff (err :: AWS.RequestError | eff) ListGroupsResponse
listGroups = AWS.request serviceName "ListGroups" 


-- | <p>Returns summaries of the customer's non-deleted organizations.</p>
listOrganizations :: forall eff. ListOrganizationsRequest -> Aff (err :: AWS.RequestError | eff) ListOrganizationsResponse
listOrganizations = AWS.request serviceName "ListOrganizations" 


-- | <p>Lists the delegates associated with a resource. Users and groups can be resource delegates and answer requests on behalf of the resource.</p>
listResourceDelegates :: forall eff. ListResourceDelegatesRequest -> Aff (err :: AWS.RequestError | eff) ListResourceDelegatesResponse
listResourceDelegates = AWS.request serviceName "ListResourceDelegates" 


-- | <p>Returns summaries of the organization's resources.</p>
listResources :: forall eff. ListResourcesRequest -> Aff (err :: AWS.RequestError | eff) ListResourcesResponse
listResources = AWS.request serviceName "ListResources" 


-- | <p>Returns summaries of the organization's users.</p>
listUsers :: forall eff. ListUsersRequest -> Aff (err :: AWS.RequestError | eff) ListUsersResponse
listUsers = AWS.request serviceName "ListUsers" 


-- | <p>Registers an existing and disabled user, group, or resource/entity for Amazon WorkMail use by associating a mailbox and calendaring capabilities. It performs no change if the entity is enabled and fails if the entity is deleted. This operation results in the accumulation of costs. For more information, see <a href="http://aws.amazon.com/workmail/pricing">Pricing</a>. The equivalent console functionality for this operation is <i>Enable</i>. Users can either be created by calling the CreateUser API or they can be synchronized from your directory. For more information, see DeregisterFromWorkMail.</p>
registerToWorkMail :: forall eff. RegisterToWorkMailRequest -> Aff (err :: AWS.RequestError | eff) RegisterToWorkMailResponse
registerToWorkMail = AWS.request serviceName "RegisterToWorkMail" 


-- | <p>Allows the administrator to reset the password for a user.</p>
resetPassword :: forall eff. ResetPasswordRequest -> Aff (err :: AWS.RequestError | eff) ResetPasswordResponse
resetPassword = AWS.request serviceName "ResetPassword" 


-- | <p>Updates the primary email for an entity. The current email is moved into the list of aliases (or swapped between an existing alias and the current primary email) and the email provided in the input is promoted as the primary.</p>
updatePrimaryEmailAddress :: forall eff. UpdatePrimaryEmailAddressRequest -> Aff (err :: AWS.RequestError | eff) UpdatePrimaryEmailAddressResponse
updatePrimaryEmailAddress = AWS.request serviceName "UpdatePrimaryEmailAddress" 


-- | <p>Updates data for the resource. It must be preceded by a describe call in order to have the latest information. The dataset in the request should be the one expected when performing another describe call.</p>
updateResource :: forall eff. UpdateResourceRequest -> Aff (err :: AWS.RequestError | eff) UpdateResourceResponse
updateResource = AWS.request serviceName "UpdateResource" 


newtype Aliases = Aliases (Array EmailAddress)


newtype AssociateDelegateToResourceRequest = AssociateDelegateToResourceRequest 
  { "OrganizationId" :: (OrganizationId)
  , "ResourceId" :: (ResourceId)
  , "EntityId" :: (WorkMailIdentifier)
  }


newtype AssociateDelegateToResourceResponse = AssociateDelegateToResourceResponse 
  { 
  }


newtype AssociateMemberToGroupRequest = AssociateMemberToGroupRequest 
  { "OrganizationId" :: (OrganizationId)
  , "GroupId" :: (WorkMailIdentifier)
  , "MemberId" :: (WorkMailIdentifier)
  }


newtype AssociateMemberToGroupResponse = AssociateMemberToGroupResponse 
  { 
  }


-- | <p>At least one delegate must be associated to the resource to disable automatic replies from the resource.</p>
newtype BookingOptions = BookingOptions 
  { "AutoAcceptRequests" :: NullOrUndefined (Boolean)
  , "AutoDeclineRecurringRequests" :: NullOrUndefined (Boolean)
  , "AutoDeclineConflictingRequests" :: NullOrUndefined (Boolean)
  }


newtype CreateAliasRequest = CreateAliasRequest 
  { "OrganizationId" :: (OrganizationId)
  , "EntityId" :: (WorkMailIdentifier)
  , "Alias" :: (EmailAddress)
  }


newtype CreateAliasResponse = CreateAliasResponse 
  { 
  }


newtype CreateGroupRequest = CreateGroupRequest 
  { "OrganizationId" :: (OrganizationId)
  , "Name" :: (GroupName)
  }


newtype CreateGroupResponse = CreateGroupResponse 
  { "GroupId" :: NullOrUndefined (WorkMailIdentifier)
  }


newtype CreateResourceRequest = CreateResourceRequest 
  { "OrganizationId" :: (OrganizationId)
  , "Name" :: (ResourceName)
  , "Type" :: (ResourceType)
  }


newtype CreateResourceResponse = CreateResourceResponse 
  { "ResourceId" :: NullOrUndefined (ResourceId)
  }


newtype CreateUserRequest = CreateUserRequest 
  { "OrganizationId" :: (OrganizationId)
  , "Name" :: (UserName)
  , "DisplayName" :: (String)
  , "Password" :: (Password)
  }


newtype CreateUserResponse = CreateUserResponse 
  { "UserId" :: NullOrUndefined (WorkMailIdentifier)
  }


-- | <p>The name of the attribute, which is one of the values defined in the UserAttribute enumeration.</p>
newtype Delegate = Delegate 
  { "Id" :: (String)
  , "Type" :: (MemberType)
  }


newtype DeleteAliasRequest = DeleteAliasRequest 
  { "OrganizationId" :: (OrganizationId)
  , "EntityId" :: (WorkMailIdentifier)
  , "Alias" :: (EmailAddress)
  }


newtype DeleteAliasResponse = DeleteAliasResponse 
  { 
  }


newtype DeleteGroupRequest = DeleteGroupRequest 
  { "OrganizationId" :: (OrganizationId)
  , "GroupId" :: (WorkMailIdentifier)
  }


newtype DeleteGroupResponse = DeleteGroupResponse 
  { 
  }


newtype DeleteResourceRequest = DeleteResourceRequest 
  { "OrganizationId" :: (OrganizationId)
  , "ResourceId" :: (ResourceId)
  }


newtype DeleteResourceResponse = DeleteResourceResponse 
  { 
  }


newtype DeleteUserRequest = DeleteUserRequest 
  { "OrganizationId" :: (OrganizationId)
  , "UserId" :: (WorkMailIdentifier)
  }


newtype DeleteUserResponse = DeleteUserResponse 
  { 
  }


newtype DeregisterFromWorkMailRequest = DeregisterFromWorkMailRequest 
  { "OrganizationId" :: (OrganizationId)
  , "EntityId" :: (WorkMailIdentifier)
  }


newtype DeregisterFromWorkMailResponse = DeregisterFromWorkMailResponse 
  { 
  }


newtype DescribeGroupRequest = DescribeGroupRequest 
  { "OrganizationId" :: (OrganizationId)
  , "GroupId" :: (WorkMailIdentifier)
  }


newtype DescribeGroupResponse = DescribeGroupResponse 
  { "GroupId" :: NullOrUndefined (WorkMailIdentifier)
  , "Name" :: NullOrUndefined (GroupName)
  , "Email" :: NullOrUndefined (EmailAddress)
  , "State" :: NullOrUndefined (EntityState)
  , "EnabledDate" :: NullOrUndefined (Number)
  , "DisabledDate" :: NullOrUndefined (Number)
  }


newtype DescribeOrganizationRequest = DescribeOrganizationRequest 
  { "OrganizationId" :: (OrganizationId)
  }


newtype DescribeOrganizationResponse = DescribeOrganizationResponse 
  { "OrganizationId" :: NullOrUndefined (OrganizationId)
  , "Alias" :: NullOrUndefined (OrganizationName)
  , "State" :: NullOrUndefined (String)
  , "DirectoryId" :: NullOrUndefined (String)
  , "DirectoryType" :: NullOrUndefined (String)
  , "DefaultMailDomain" :: NullOrUndefined (String)
  , "CompletedDate" :: NullOrUndefined (Number)
  , "ErrorMessage" :: NullOrUndefined (String)
  }


newtype DescribeResourceRequest = DescribeResourceRequest 
  { "OrganizationId" :: (OrganizationId)
  , "ResourceId" :: (ResourceId)
  }


newtype DescribeResourceResponse = DescribeResourceResponse 
  { "ResourceId" :: NullOrUndefined (ResourceId)
  , "Email" :: NullOrUndefined (EmailAddress)
  , "Name" :: NullOrUndefined (ResourceName)
  , "Type" :: NullOrUndefined (ResourceType)
  , "BookingOptions" :: NullOrUndefined (BookingOptions)
  , "State" :: NullOrUndefined (EntityState)
  , "EnabledDate" :: NullOrUndefined (Number)
  , "DisabledDate" :: NullOrUndefined (Number)
  }


newtype DescribeUserRequest = DescribeUserRequest 
  { "OrganizationId" :: (OrganizationId)
  , "UserId" :: (WorkMailIdentifier)
  }


newtype DescribeUserResponse = DescribeUserResponse 
  { "UserId" :: NullOrUndefined (WorkMailIdentifier)
  , "Name" :: NullOrUndefined (UserName)
  , "Email" :: NullOrUndefined (EmailAddress)
  , "DisplayName" :: NullOrUndefined (String)
  , "State" :: NullOrUndefined (EntityState)
  , "UserRole" :: NullOrUndefined (UserRole)
  , "EnabledDate" :: NullOrUndefined (Number)
  , "DisabledDate" :: NullOrUndefined (Number)
  }


-- | <p>The Directory Service doesn't recognize the credentials supplied by the Amazon WorkMail service.</p>
newtype DirectoryServiceAuthenticationFailedException = DirectoryServiceAuthenticationFailedException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>The directory that you are trying to perform operations on isn't available.</p>
newtype DirectoryUnavailableException = DirectoryUnavailableException 
  { "Message" :: NullOrUndefined (String)
  }


newtype DisassociateDelegateFromResourceRequest = DisassociateDelegateFromResourceRequest 
  { "OrganizationId" :: (OrganizationId)
  , "ResourceId" :: (ResourceId)
  , "EntityId" :: (WorkMailIdentifier)
  }


newtype DisassociateDelegateFromResourceResponse = DisassociateDelegateFromResourceResponse 
  { 
  }


newtype DisassociateMemberFromGroupRequest = DisassociateMemberFromGroupRequest 
  { "OrganizationId" :: (OrganizationId)
  , "GroupId" :: (WorkMailIdentifier)
  , "MemberId" :: (WorkMailIdentifier)
  }


newtype DisassociateMemberFromGroupResponse = DisassociateMemberFromGroupResponse 
  { 
  }


newtype EmailAddress = EmailAddress String


-- | <p>The email address that you're trying to assign is already created for a different user, group, or resource.</p>
newtype EmailAddressInUseException = EmailAddressInUseException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>The user, group, or resource that you're trying to register is already registered.</p>
newtype EntityAlreadyRegisteredException = EntityAlreadyRegisteredException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>The identifier supplied for the entity is valid, but it does not exist in your organization.</p>
newtype EntityNotFoundException = EntityNotFoundException 
  { "Message" :: NullOrUndefined (String)
  }


newtype EntityState = EntityState String


-- | <p>You are performing an operation on an entity that isn't in the expected state, such as trying to update a deleted user.</p>
newtype EntityStateException = EntityStateException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>The representation of an Amazon WorkMail group.</p>
newtype Group = Group 
  { "Id" :: NullOrUndefined (WorkMailIdentifier)
  , "Email" :: NullOrUndefined (EmailAddress)
  , "Name" :: NullOrUndefined (GroupName)
  , "State" :: NullOrUndefined (EntityState)
  , "EnabledDate" :: NullOrUndefined (Number)
  , "DisabledDate" :: NullOrUndefined (Number)
  }


newtype GroupName = GroupName String


newtype Groups = Groups (Array Group)


-- | <p>The configuration for a resource isn't valid. A resource must either be able to auto-respond to requests or have at least one delegate associated that can do it on its behalf.</p>
newtype InvalidConfigurationException = InvalidConfigurationException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>One or more of the input parameters don't match the service's restrictions.</p>
newtype InvalidParameterException = InvalidParameterException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>The supplied password doesn't match the minimum security constraints, such as length or use of special characters.</p>
newtype InvalidPasswordException = InvalidPasswordException 
  { "Message" :: NullOrUndefined (String)
  }


newtype ListAliasesRequest = ListAliasesRequest 
  { "OrganizationId" :: (OrganizationId)
  , "EntityId" :: (WorkMailIdentifier)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }


newtype ListAliasesResponse = ListAliasesResponse 
  { "Aliases" :: NullOrUndefined (Aliases)
  , "NextToken" :: NullOrUndefined (NextToken)
  }


newtype ListGroupMembersRequest = ListGroupMembersRequest 
  { "OrganizationId" :: (OrganizationId)
  , "GroupId" :: (WorkMailIdentifier)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }


newtype ListGroupMembersResponse = ListGroupMembersResponse 
  { "Members" :: NullOrUndefined (Members)
  , "NextToken" :: NullOrUndefined (NextToken)
  }


newtype ListGroupsRequest = ListGroupsRequest 
  { "OrganizationId" :: (OrganizationId)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }


newtype ListGroupsResponse = ListGroupsResponse 
  { "Groups" :: NullOrUndefined (Groups)
  , "NextToken" :: NullOrUndefined (NextToken)
  }


newtype ListOrganizationsRequest = ListOrganizationsRequest 
  { "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }


newtype ListOrganizationsResponse = ListOrganizationsResponse 
  { "OrganizationSummaries" :: NullOrUndefined (OrganizationSummaries)
  , "NextToken" :: NullOrUndefined (NextToken)
  }


newtype ListResourceDelegatesRequest = ListResourceDelegatesRequest 
  { "OrganizationId" :: (OrganizationId)
  , "ResourceId" :: (WorkMailIdentifier)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }


newtype ListResourceDelegatesResponse = ListResourceDelegatesResponse 
  { "Delegates" :: NullOrUndefined (ResourceDelegates)
  , "NextToken" :: NullOrUndefined (NextToken)
  }


newtype ListResourcesRequest = ListResourcesRequest 
  { "OrganizationId" :: (OrganizationId)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }


newtype ListResourcesResponse = ListResourcesResponse 
  { "Resources" :: NullOrUndefined (Resources)
  , "NextToken" :: NullOrUndefined (NextToken)
  }


newtype ListUsersRequest = ListUsersRequest 
  { "OrganizationId" :: (OrganizationId)
  , "NextToken" :: NullOrUndefined (NextToken)
  , "MaxResults" :: NullOrUndefined (MaxResults)
  }


newtype ListUsersResponse = ListUsersResponse 
  { "Users" :: NullOrUndefined (Users)
  , "NextToken" :: NullOrUndefined (NextToken)
  }


-- | <p>For an email or alias to be created in Amazon WorkMail, the included domain must be defined in the organization.</p>
newtype MailDomainNotFoundException = MailDomainNotFoundException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>After a domain has been added to the organization, it must be verified. The domain is not yet verified.</p>
newtype MailDomainStateException = MailDomainStateException 
  { "Message" :: NullOrUndefined (String)
  }


newtype MaxResults = MaxResults Int


-- | <p>The representation of a group member (user or group).</p>
newtype Member = Member 
  { "Id" :: NullOrUndefined (String)
  , "Name" :: NullOrUndefined (String)
  , "Type" :: NullOrUndefined (MemberType)
  , "State" :: NullOrUndefined (EntityState)
  , "EnabledDate" :: NullOrUndefined (Number)
  , "DisabledDate" :: NullOrUndefined (Number)
  }


newtype MemberType = MemberType String


newtype Members = Members (Array Member)


-- | <p>The entity (user, group, or user) name isn't unique in Amazon WorkMail.</p>
newtype NameAvailabilityException = NameAvailabilityException 
  { "Message" :: NullOrUndefined (String)
  }


newtype NextToken = NextToken String


newtype OrganizationId = OrganizationId String


newtype OrganizationName = OrganizationName String


-- | <p>An operation received a valid organization identifier that either doesn't belong or exist in the system.</p>
newtype OrganizationNotFoundException = OrganizationNotFoundException 
  { "Message" :: NullOrUndefined (String)
  }


-- | <p>The organization must have a valid state (Active or Synchronizing) to perform certain operations on the organization or its entities.</p>
newtype OrganizationStateException = OrganizationStateException 
  { "Message" :: NullOrUndefined (String)
  }


newtype OrganizationSummaries = OrganizationSummaries (Array OrganizationSummary)


-- | <p>The brief overview associated with an organization.</p>
newtype OrganizationSummary = OrganizationSummary 
  { "OrganizationId" :: NullOrUndefined (OrganizationId)
  , "Alias" :: NullOrUndefined (OrganizationName)
  , "ErrorMessage" :: NullOrUndefined (String)
  , "State" :: NullOrUndefined (String)
  }


newtype Password = Password String


newtype RegisterToWorkMailRequest = RegisterToWorkMailRequest 
  { "OrganizationId" :: (OrganizationId)
  , "EntityId" :: (WorkMailIdentifier)
  , "Email" :: (EmailAddress)
  }


newtype RegisterToWorkMailResponse = RegisterToWorkMailResponse 
  { 
  }


-- | <p>This entity name is not allowed in Amazon WorkMail.</p>
newtype ReservedNameException = ReservedNameException 
  { "Message" :: NullOrUndefined (String)
  }


newtype ResetPasswordRequest = ResetPasswordRequest 
  { "OrganizationId" :: (OrganizationId)
  , "UserId" :: (WorkMailIdentifier)
  , "Password" :: (Password)
  }


newtype ResetPasswordResponse = ResetPasswordResponse 
  { 
  }


-- | <p>The overview for a resource containing relevant data regarding it.</p>
newtype Resource = Resource 
  { "Id" :: NullOrUndefined (WorkMailIdentifier)
  , "Email" :: NullOrUndefined (EmailAddress)
  , "Name" :: NullOrUndefined (ResourceName)
  , "Type" :: NullOrUndefined (ResourceType)
  , "State" :: NullOrUndefined (EntityState)
  , "EnabledDate" :: NullOrUndefined (Number)
  , "DisabledDate" :: NullOrUndefined (Number)
  }


newtype ResourceDelegates = ResourceDelegates (Array Delegate)


newtype ResourceId = ResourceId String


newtype ResourceName = ResourceName String


newtype ResourceType = ResourceType String


newtype Resources = Resources (Array Resource)


-- | <p>You can't perform a write operation against a read-only directory.</p>
newtype UnsupportedOperationException = UnsupportedOperationException 
  { "Message" :: NullOrUndefined (String)
  }


newtype UpdatePrimaryEmailAddressRequest = UpdatePrimaryEmailAddressRequest 
  { "OrganizationId" :: (OrganizationId)
  , "EntityId" :: (WorkMailIdentifier)
  , "Email" :: (EmailAddress)
  }


newtype UpdatePrimaryEmailAddressResponse = UpdatePrimaryEmailAddressResponse 
  { 
  }


newtype UpdateResourceRequest = UpdateResourceRequest 
  { "OrganizationId" :: (OrganizationId)
  , "ResourceId" :: (ResourceId)
  , "Name" :: NullOrUndefined (ResourceName)
  , "BookingOptions" :: NullOrUndefined (BookingOptions)
  }


newtype UpdateResourceResponse = UpdateResourceResponse 
  { 
  }


-- | <p>The representation of an Amazon WorkMail user.</p>
newtype User = User 
  { "Id" :: NullOrUndefined (WorkMailIdentifier)
  , "Email" :: NullOrUndefined (EmailAddress)
  , "Name" :: NullOrUndefined (UserName)
  , "DisplayName" :: NullOrUndefined (String)
  , "State" :: NullOrUndefined (EntityState)
  , "UserRole" :: NullOrUndefined (UserRole)
  , "EnabledDate" :: NullOrUndefined (Number)
  , "DisabledDate" :: NullOrUndefined (Number)
  }


newtype UserName = UserName String


newtype UserRole = UserRole String


newtype Users = Users (Array User)


newtype WorkMailIdentifier = WorkMailIdentifier String