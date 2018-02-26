

-- | <p>DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so applications can access that data with sub-millisecond latency. You can create a DAX cluster easily, using the AWS Management Console. With a few simple modifications to your code, your application can begin taking advantage of the DAX cluster and realize significant improvements in read performance.</p>
module AWS.DAX where

import Control.Monad.Aff (Aff)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Map (Map)
import Data.Unit (Unit, unit)

import AWS.Request as AWS

serviceName = "DAX" :: String


-- | <p>Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.</p>
createCluster :: forall eff. CreateClusterRequest -> Aff (err :: AWS.RequestError | eff) CreateClusterResponse
createCluster = AWS.request serviceName "CreateCluster" 


-- | <p>Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.</p>
createParameterGroup :: forall eff. CreateParameterGroupRequest -> Aff (err :: AWS.RequestError | eff) CreateParameterGroupResponse
createParameterGroup = AWS.request serviceName "CreateParameterGroup" 


-- | <p>Creates a new subnet group.</p>
createSubnetGroup :: forall eff. CreateSubnetGroupRequest -> Aff (err :: AWS.RequestError | eff) CreateSubnetGroupResponse
createSubnetGroup = AWS.request serviceName "CreateSubnetGroup" 


-- | <p>Removes one or more nodes from a DAX cluster.</p> <note> <p>You cannot use <code>DecreaseReplicationFactor</code> to remove the last node in a DAX cluster. If you need to do this, use <code>DeleteCluster</code> instead.</p> </note>
decreaseReplicationFactor :: forall eff. DecreaseReplicationFactorRequest -> Aff (err :: AWS.RequestError | eff) DecreaseReplicationFactorResponse
decreaseReplicationFactor = AWS.request serviceName "DecreaseReplicationFactor" 


-- | <p>Deletes a previously provisioned DAX cluster. <i>DeleteCluster</i> deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.</p>
deleteCluster :: forall eff. DeleteClusterRequest -> Aff (err :: AWS.RequestError | eff) DeleteClusterResponse
deleteCluster = AWS.request serviceName "DeleteCluster" 


-- | <p>Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.</p>
deleteParameterGroup :: forall eff. DeleteParameterGroupRequest -> Aff (err :: AWS.RequestError | eff) DeleteParameterGroupResponse
deleteParameterGroup = AWS.request serviceName "DeleteParameterGroup" 


-- | <p>Deletes a subnet group.</p> <note> <p>You cannot delete a subnet group if it is associated with any DAX clusters.</p> </note>
deleteSubnetGroup :: forall eff. DeleteSubnetGroupRequest -> Aff (err :: AWS.RequestError | eff) DeleteSubnetGroupResponse
deleteSubnetGroup = AWS.request serviceName "DeleteSubnetGroup" 


-- | <p>Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied.</p> <p>If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned.</p> <p>If the cluster is in the DELETING state, only cluster level information will be displayed.</p> <p>If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is <i>available</i>, the cluster is ready for use.</p> <p>If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.</p>
describeClusters :: forall eff. DescribeClustersRequest -> Aff (err :: AWS.RequestError | eff) DescribeClustersResponse
describeClusters = AWS.request serviceName "DescribeClusters" 


-- | <p>Returns the default system parameter information for the DAX caching software.</p>
describeDefaultParameters :: forall eff. DescribeDefaultParametersRequest -> Aff (err :: AWS.RequestError | eff) DescribeDefaultParametersResponse
describeDefaultParameters = AWS.request serviceName "DescribeDefaultParameters" 


-- | <p>Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter.</p> <p>By default, only the events occurring within the last hour are returned; however, you can retrieve up to 14 days' worth of events if necessary.</p>
describeEvents :: forall eff. DescribeEventsRequest -> Aff (err :: AWS.RequestError | eff) DescribeEventsResponse
describeEvents = AWS.request serviceName "DescribeEvents" 


-- | <p>Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.</p>
describeParameterGroups :: forall eff. DescribeParameterGroupsRequest -> Aff (err :: AWS.RequestError | eff) DescribeParameterGroupsResponse
describeParameterGroups = AWS.request serviceName "DescribeParameterGroups" 


-- | <p>Returns the detailed parameter list for a particular parameter group.</p>
describeParameters :: forall eff. DescribeParametersRequest -> Aff (err :: AWS.RequestError | eff) DescribeParametersResponse
describeParameters = AWS.request serviceName "DescribeParameters" 


-- | <p>Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.</p>
describeSubnetGroups :: forall eff. DescribeSubnetGroupsRequest -> Aff (err :: AWS.RequestError | eff) DescribeSubnetGroupsResponse
describeSubnetGroups = AWS.request serviceName "DescribeSubnetGroups" 


-- | <p>Adds one or more nodes to a DAX cluster.</p>
increaseReplicationFactor :: forall eff. IncreaseReplicationFactorRequest -> Aff (err :: AWS.RequestError | eff) IncreaseReplicationFactorResponse
increaseReplicationFactor = AWS.request serviceName "IncreaseReplicationFactor" 


-- | <p>List all of the tags for a DAX cluster. You can call <code>ListTags</code> up to 10 times per second, per account.</p>
listTags :: forall eff. ListTagsRequest -> Aff (err :: AWS.RequestError | eff) ListTagsResponse
listTags = AWS.request serviceName "ListTags" 


-- | <p>Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING.</p>
rebootNode :: forall eff. RebootNodeRequest -> Aff (err :: AWS.RequestError | eff) RebootNodeResponse
rebootNode = AWS.request serviceName "RebootNode" 


-- | <p>Associates a set of tags with a DAX resource. You can call <code>TagResource</code> up to 5 times per second, per account. </p>
tagResource :: forall eff. TagResourceRequest -> Aff (err :: AWS.RequestError | eff) TagResourceResponse
tagResource = AWS.request serviceName "TagResource" 


-- | <p>Removes the association of tags from a DAX resource. You can call <code>UntagResource</code> up to 5 times per second, per account. </p>
untagResource :: forall eff. UntagResourceRequest -> Aff (err :: AWS.RequestError | eff) UntagResourceResponse
untagResource = AWS.request serviceName "UntagResource" 


-- | <p>Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.</p>
updateCluster :: forall eff. UpdateClusterRequest -> Aff (err :: AWS.RequestError | eff) UpdateClusterResponse
updateCluster = AWS.request serviceName "UpdateCluster" 


-- | <p>Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.</p>
updateParameterGroup :: forall eff. UpdateParameterGroupRequest -> Aff (err :: AWS.RequestError | eff) UpdateParameterGroupResponse
updateParameterGroup = AWS.request serviceName "UpdateParameterGroup" 


-- | <p>Modifies an existing subnet group.</p>
updateSubnetGroup :: forall eff. UpdateSubnetGroupRequest -> Aff (err :: AWS.RequestError | eff) UpdateSubnetGroupResponse
updateSubnetGroup = AWS.request serviceName "UpdateSubnetGroup" 


newtype AvailabilityZoneList = AvailabilityZoneList (Array String)


newtype AwsQueryErrorMessage = AwsQueryErrorMessage String


newtype ChangeType = ChangeType String


-- | <p>Contains all of the attributes of a specific DAX cluster.</p>
newtype Cluster = Cluster 
  { "ClusterName" :: NullOrUndefined (String)
  , "Description" :: NullOrUndefined (String)
  , "ClusterArn" :: NullOrUndefined (String)
  , "TotalNodes" :: NullOrUndefined (IntegerOptional)
  , "ActiveNodes" :: NullOrUndefined (IntegerOptional)
  , "NodeType" :: NullOrUndefined (String)
  , "Status" :: NullOrUndefined (String)
  , "ClusterDiscoveryEndpoint" :: NullOrUndefined (Endpoint)
  , "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList)
  , "Nodes" :: NullOrUndefined (NodeList)
  , "PreferredMaintenanceWindow" :: NullOrUndefined (String)
  , "NotificationConfiguration" :: NullOrUndefined (NotificationConfiguration)
  , "SubnetGroup" :: NullOrUndefined (String)
  , "SecurityGroups" :: NullOrUndefined (SecurityGroupMembershipList)
  , "IamRoleArn" :: NullOrUndefined (String)
  , "ParameterGroup" :: NullOrUndefined (ParameterGroupStatus)
  }


-- | <p>You already have a DAX cluster with the given identifier.</p>
newtype ClusterAlreadyExistsFault = ClusterAlreadyExistsFault 
  { 
  }


newtype ClusterList = ClusterList (Array Cluster)


newtype ClusterNameList = ClusterNameList (Array String)


-- | <p>The requested cluster ID does not refer to an existing DAX cluster.</p>
newtype ClusterNotFoundFault = ClusterNotFoundFault 
  { 
  }


-- | <p>You have attempted to exceed the maximum number of DAX clusters for your AWS account.</p>
newtype ClusterQuotaForCustomerExceededFault = ClusterQuotaForCustomerExceededFault 
  { 
  }


newtype CreateClusterRequest = CreateClusterRequest 
  { "ClusterName" :: (String)
  , "NodeType" :: (String)
  , "Description" :: NullOrUndefined (String)
  , "ReplicationFactor" :: (Int)
  , "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList)
  , "SubnetGroupName" :: NullOrUndefined (String)
  , "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList)
  , "PreferredMaintenanceWindow" :: NullOrUndefined (String)
  , "NotificationTopicArn" :: NullOrUndefined (String)
  , "IamRoleArn" :: (String)
  , "ParameterGroupName" :: NullOrUndefined (String)
  , "Tags" :: NullOrUndefined (TagList)
  }


newtype CreateClusterResponse = CreateClusterResponse 
  { "Cluster" :: NullOrUndefined (Cluster)
  }


newtype CreateParameterGroupRequest = CreateParameterGroupRequest 
  { "ParameterGroupName" :: (String)
  , "Description" :: NullOrUndefined (String)
  }


newtype CreateParameterGroupResponse = CreateParameterGroupResponse 
  { "ParameterGroup" :: NullOrUndefined (ParameterGroup)
  }


newtype CreateSubnetGroupRequest = CreateSubnetGroupRequest 
  { "SubnetGroupName" :: (String)
  , "Description" :: NullOrUndefined (String)
  , "SubnetIds" :: (SubnetIdentifierList)
  }


newtype CreateSubnetGroupResponse = CreateSubnetGroupResponse 
  { "SubnetGroup" :: NullOrUndefined (SubnetGroup)
  }


newtype DecreaseReplicationFactorRequest = DecreaseReplicationFactorRequest 
  { "ClusterName" :: (String)
  , "NewReplicationFactor" :: (Int)
  , "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList)
  , "NodeIdsToRemove" :: NullOrUndefined (NodeIdentifierList)
  }


newtype DecreaseReplicationFactorResponse = DecreaseReplicationFactorResponse 
  { "Cluster" :: NullOrUndefined (Cluster)
  }


newtype DeleteClusterRequest = DeleteClusterRequest 
  { "ClusterName" :: (String)
  }


newtype DeleteClusterResponse = DeleteClusterResponse 
  { "Cluster" :: NullOrUndefined (Cluster)
  }


newtype DeleteParameterGroupRequest = DeleteParameterGroupRequest 
  { "ParameterGroupName" :: (String)
  }


newtype DeleteParameterGroupResponse = DeleteParameterGroupResponse 
  { "DeletionMessage" :: NullOrUndefined (String)
  }


newtype DeleteSubnetGroupRequest = DeleteSubnetGroupRequest 
  { "SubnetGroupName" :: (String)
  }


newtype DeleteSubnetGroupResponse = DeleteSubnetGroupResponse 
  { "DeletionMessage" :: NullOrUndefined (String)
  }


newtype DescribeClustersRequest = DescribeClustersRequest 
  { "ClusterNames" :: NullOrUndefined (ClusterNameList)
  , "MaxResults" :: NullOrUndefined (IntegerOptional)
  , "NextToken" :: NullOrUndefined (String)
  }


newtype DescribeClustersResponse = DescribeClustersResponse 
  { "NextToken" :: NullOrUndefined (String)
  , "Clusters" :: NullOrUndefined (ClusterList)
  }


newtype DescribeDefaultParametersRequest = DescribeDefaultParametersRequest 
  { "MaxResults" :: NullOrUndefined (IntegerOptional)
  , "NextToken" :: NullOrUndefined (String)
  }


newtype DescribeDefaultParametersResponse = DescribeDefaultParametersResponse 
  { "NextToken" :: NullOrUndefined (String)
  , "Parameters" :: NullOrUndefined (ParameterList)
  }


newtype DescribeEventsRequest = DescribeEventsRequest 
  { "SourceName" :: NullOrUndefined (String)
  , "SourceType" :: NullOrUndefined (SourceType)
  , "StartTime" :: NullOrUndefined (TStamp)
  , "EndTime" :: NullOrUndefined (TStamp)
  , "Duration" :: NullOrUndefined (IntegerOptional)
  , "MaxResults" :: NullOrUndefined (IntegerOptional)
  , "NextToken" :: NullOrUndefined (String)
  }


newtype DescribeEventsResponse = DescribeEventsResponse 
  { "NextToken" :: NullOrUndefined (String)
  , "Events" :: NullOrUndefined (EventList)
  }


newtype DescribeParameterGroupsRequest = DescribeParameterGroupsRequest 
  { "ParameterGroupNames" :: NullOrUndefined (ParameterGroupNameList)
  , "MaxResults" :: NullOrUndefined (IntegerOptional)
  , "NextToken" :: NullOrUndefined (String)
  }


newtype DescribeParameterGroupsResponse = DescribeParameterGroupsResponse 
  { "NextToken" :: NullOrUndefined (String)
  , "ParameterGroups" :: NullOrUndefined (ParameterGroupList)
  }


newtype DescribeParametersRequest = DescribeParametersRequest 
  { "ParameterGroupName" :: (String)
  , "Source" :: NullOrUndefined (String)
  , "MaxResults" :: NullOrUndefined (IntegerOptional)
  , "NextToken" :: NullOrUndefined (String)
  }


newtype DescribeParametersResponse = DescribeParametersResponse 
  { "NextToken" :: NullOrUndefined (String)
  , "Parameters" :: NullOrUndefined (ParameterList)
  }


newtype DescribeSubnetGroupsRequest = DescribeSubnetGroupsRequest 
  { "SubnetGroupNames" :: NullOrUndefined (SubnetGroupNameList)
  , "MaxResults" :: NullOrUndefined (IntegerOptional)
  , "NextToken" :: NullOrUndefined (String)
  }


newtype DescribeSubnetGroupsResponse = DescribeSubnetGroupsResponse 
  { "NextToken" :: NullOrUndefined (String)
  , "SubnetGroups" :: NullOrUndefined (SubnetGroupList)
  }


-- | <p>Represents the information required for client programs to connect to the configuration endpoint for a DAX cluster, or to an individual node within the cluster.</p>
newtype Endpoint = Endpoint 
  { "Address" :: NullOrUndefined (String)
  , "Port" :: NullOrUndefined (Int)
  }


-- | <p>Represents a single occurrence of something interesting within the system. Some examples of events are creating a DAX cluster, adding or removing a node, or rebooting a node.</p>
newtype Event = Event 
  { "SourceName" :: NullOrUndefined (String)
  , "SourceType" :: NullOrUndefined (SourceType)
  , "Message" :: NullOrUndefined (String)
  , "Date" :: NullOrUndefined (TStamp)
  }


newtype EventList = EventList (Array Event)


newtype IncreaseReplicationFactorRequest = IncreaseReplicationFactorRequest 
  { "ClusterName" :: (String)
  , "NewReplicationFactor" :: (Int)
  , "AvailabilityZones" :: NullOrUndefined (AvailabilityZoneList)
  }


newtype IncreaseReplicationFactorResponse = IncreaseReplicationFactorResponse 
  { "Cluster" :: NullOrUndefined (Cluster)
  }


-- | <p>There are not enough system resources to create the cluster you requested (or to resize an already-existing cluster). </p>
newtype InsufficientClusterCapacityFault = InsufficientClusterCapacityFault 
  { 
  }


newtype IntegerOptional = IntegerOptional Int


-- | <p>The Amazon Resource Name (ARN) supplied in the request is not valid.</p>
newtype InvalidARNFault = InvalidARNFault 
  { 
  }


-- | <p>The requested DAX cluster is not in the <i>available</i> state.</p>
newtype InvalidClusterStateFault = InvalidClusterStateFault 
  { 
  }


-- | <p>Two or more incompatible parameters were specified.</p>
newtype InvalidParameterCombinationException = InvalidParameterCombinationException 
  { "Message'" :: NullOrUndefined (AwsQueryErrorMessage)
  }


-- | <p>One or more parameters in a parameter group are in an invalid state.</p>
newtype InvalidParameterGroupStateFault = InvalidParameterGroupStateFault 
  { 
  }


-- | <p>The value for a parameter is invalid.</p>
newtype InvalidParameterValueException = InvalidParameterValueException 
  { "Message'" :: NullOrUndefined (AwsQueryErrorMessage)
  }


-- | <p>An invalid subnet identifier was specified.</p>
newtype InvalidSubnet = InvalidSubnet 
  { 
  }


-- | <p>The VPC network is in an invalid state.</p>
newtype InvalidVPCNetworkStateFault = InvalidVPCNetworkStateFault 
  { 
  }


newtype IsModifiable = IsModifiable String


newtype KeyList = KeyList (Array String)


newtype ListTagsRequest = ListTagsRequest 
  { "ResourceName" :: (String)
  , "NextToken" :: NullOrUndefined (String)
  }


newtype ListTagsResponse = ListTagsResponse 
  { "Tags" :: NullOrUndefined (TagList)
  , "NextToken" :: NullOrUndefined (String)
  }


-- | <p>Represents an individual node within a DAX cluster.</p>
newtype Node = Node 
  { "NodeId" :: NullOrUndefined (String)
  , "Endpoint" :: NullOrUndefined (Endpoint)
  , "NodeCreateTime" :: NullOrUndefined (TStamp)
  , "AvailabilityZone" :: NullOrUndefined (String)
  , "NodeStatus" :: NullOrUndefined (String)
  , "ParameterGroupStatus" :: NullOrUndefined (String)
  }


newtype NodeIdentifierList = NodeIdentifierList (Array String)


newtype NodeList = NodeList (Array Node)


-- | <p>None of the nodes in the cluster have the given node ID.</p>
newtype NodeNotFoundFault = NodeNotFoundFault 
  { 
  }


-- | <p>You have attempted to exceed the maximum number of nodes for a DAX cluster.</p>
newtype NodeQuotaForClusterExceededFault = NodeQuotaForClusterExceededFault 
  { 
  }


-- | <p>You have attempted to exceed the maximum number of nodes for your AWS account.</p>
newtype NodeQuotaForCustomerExceededFault = NodeQuotaForCustomerExceededFault 
  { 
  }


-- | <p>Represents a parameter value that is applicable to a particular node type.</p>
newtype NodeTypeSpecificValue = NodeTypeSpecificValue 
  { "NodeType" :: NullOrUndefined (String)
  , "Value" :: NullOrUndefined (String)
  }


newtype NodeTypeSpecificValueList = NodeTypeSpecificValueList (Array NodeTypeSpecificValue)


-- | <p>Describes a notification topic and its status. Notification topics are used for publishing DAX events to subscribers using Amazon Simple Notification Service (SNS).</p>
newtype NotificationConfiguration = NotificationConfiguration 
  { "TopicArn" :: NullOrUndefined (String)
  , "TopicStatus" :: NullOrUndefined (String)
  }


-- | <p>Describes an individual setting that controls some aspect of DAX behavior.</p>
newtype Parameter = Parameter 
  { "ParameterName" :: NullOrUndefined (String)
  , "ParameterType" :: NullOrUndefined (ParameterType)
  , "ParameterValue" :: NullOrUndefined (String)
  , "NodeTypeSpecificValues" :: NullOrUndefined (NodeTypeSpecificValueList)
  , "Description" :: NullOrUndefined (String)
  , "Source" :: NullOrUndefined (String)
  , "DataType" :: NullOrUndefined (String)
  , "AllowedValues" :: NullOrUndefined (String)
  , "IsModifiable" :: NullOrUndefined (IsModifiable)
  , "ChangeType" :: NullOrUndefined (ChangeType)
  }


-- | <p>A named set of parameters that are applied to all of the nodes in a DAX cluster.</p>
newtype ParameterGroup = ParameterGroup 
  { "ParameterGroupName" :: NullOrUndefined (String)
  , "Description" :: NullOrUndefined (String)
  }


-- | <p>The specified parameter group already exists.</p>
newtype ParameterGroupAlreadyExistsFault = ParameterGroupAlreadyExistsFault 
  { 
  }


newtype ParameterGroupList = ParameterGroupList (Array ParameterGroup)


newtype ParameterGroupNameList = ParameterGroupNameList (Array String)


-- | <p>The specified parameter group does not exist.</p>
newtype ParameterGroupNotFoundFault = ParameterGroupNotFoundFault 
  { 
  }


-- | <p>You have attempted to exceed the maximum number of parameter groups.</p>
newtype ParameterGroupQuotaExceededFault = ParameterGroupQuotaExceededFault 
  { 
  }


-- | <p>The status of a parameter group.</p>
newtype ParameterGroupStatus = ParameterGroupStatus 
  { "ParameterGroupName" :: NullOrUndefined (String)
  , "ParameterApplyStatus" :: NullOrUndefined (String)
  , "NodeIdsToReboot" :: NullOrUndefined (NodeIdentifierList)
  }


newtype ParameterList = ParameterList (Array Parameter)


-- | <p>An individual DAX parameter.</p>
newtype ParameterNameValue = ParameterNameValue 
  { "ParameterName" :: NullOrUndefined (String)
  , "ParameterValue" :: NullOrUndefined (String)
  }


newtype ParameterNameValueList = ParameterNameValueList (Array ParameterNameValue)


newtype ParameterType = ParameterType String


newtype RebootNodeRequest = RebootNodeRequest 
  { "ClusterName" :: (String)
  , "NodeId" :: (String)
  }


newtype RebootNodeResponse = RebootNodeResponse 
  { "Cluster" :: NullOrUndefined (Cluster)
  }


newtype SecurityGroupIdentifierList = SecurityGroupIdentifierList (Array String)


-- | <p>An individual VPC security group and its status.</p>
newtype SecurityGroupMembership = SecurityGroupMembership 
  { "SecurityGroupIdentifier" :: NullOrUndefined (String)
  , "Status" :: NullOrUndefined (String)
  }


newtype SecurityGroupMembershipList = SecurityGroupMembershipList (Array SecurityGroupMembership)


newtype SourceType = SourceType String


-- | <p>Represents the subnet associated with a DAX cluster. This parameter refers to subnets defined in Amazon Virtual Private Cloud (Amazon VPC) and used with DAX.</p>
newtype Subnet = Subnet 
  { "SubnetIdentifier" :: NullOrUndefined (String)
  , "SubnetAvailabilityZone" :: NullOrUndefined (String)
  }


-- | <p>Represents the output of one of the following actions:</p> <ul> <li> <p> <i>CreateSubnetGroup</i> </p> </li> <li> <p> <i>ModifySubnetGroup</i> </p> </li> </ul>
newtype SubnetGroup = SubnetGroup 
  { "SubnetGroupName" :: NullOrUndefined (String)
  , "Description" :: NullOrUndefined (String)
  , "VpcId" :: NullOrUndefined (String)
  , "Subnets" :: NullOrUndefined (SubnetList)
  }


-- | <p>The specified subnet group already exists.</p>
newtype SubnetGroupAlreadyExistsFault = SubnetGroupAlreadyExistsFault 
  { 
  }


-- | <p>The specified subnet group is currently in use.</p>
newtype SubnetGroupInUseFault = SubnetGroupInUseFault 
  { 
  }


newtype SubnetGroupList = SubnetGroupList (Array SubnetGroup)


newtype SubnetGroupNameList = SubnetGroupNameList (Array String)


-- | <p>The requested subnet group name does not refer to an existing subnet group.</p>
newtype SubnetGroupNotFoundFault = SubnetGroupNotFoundFault 
  { 
  }


-- | <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
newtype SubnetGroupQuotaExceededFault = SubnetGroupQuotaExceededFault 
  { 
  }


newtype SubnetIdentifierList = SubnetIdentifierList (Array String)


-- | <p>The requested subnet is being used by another subnet group.</p>
newtype SubnetInUse = SubnetInUse 
  { 
  }


newtype SubnetList = SubnetList (Array Subnet)


-- | <p>The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.</p>
newtype SubnetQuotaExceededFault = SubnetQuotaExceededFault 
  { 
  }


newtype TStamp = TStamp Number


-- | <p>A description of a tag. Every tag is a key-value pair. You can add up to 50 tags to a single DAX cluster.</p> <p>AWS-assigned tag names and values are automatically assigned the <code>aws:</code> prefix, which the user cannot assign. AWS-assigned tag names do not count towards the tag limit of 50. User-assigned tag names have the prefix <code>user:</code>.</p> <p>You cannot backdate the application of a tag.</p>
newtype Tag = Tag 
  { "Key" :: NullOrUndefined (String)
  , "Value" :: NullOrUndefined (String)
  }


newtype TagList = TagList (Array Tag)


-- | <p>The tag does not exist.</p>
newtype TagNotFoundFault = TagNotFoundFault 
  { 
  }


-- | <p>You have exceeded the maximum number of tags for this DAX cluster.</p>
newtype TagQuotaPerResourceExceeded = TagQuotaPerResourceExceeded 
  { 
  }


newtype TagResourceRequest = TagResourceRequest 
  { "ResourceName" :: (String)
  , "Tags" :: (TagList)
  }


newtype TagResourceResponse = TagResourceResponse 
  { "Tags" :: NullOrUndefined (TagList)
  }


newtype UntagResourceRequest = UntagResourceRequest 
  { "ResourceName" :: (String)
  , "TagKeys" :: (KeyList)
  }


newtype UntagResourceResponse = UntagResourceResponse 
  { "Tags" :: NullOrUndefined (TagList)
  }


newtype UpdateClusterRequest = UpdateClusterRequest 
  { "ClusterName" :: (String)
  , "Description" :: NullOrUndefined (String)
  , "PreferredMaintenanceWindow" :: NullOrUndefined (String)
  , "NotificationTopicArn" :: NullOrUndefined (String)
  , "NotificationTopicStatus" :: NullOrUndefined (String)
  , "ParameterGroupName" :: NullOrUndefined (String)
  , "SecurityGroupIds" :: NullOrUndefined (SecurityGroupIdentifierList)
  }


newtype UpdateClusterResponse = UpdateClusterResponse 
  { "Cluster" :: NullOrUndefined (Cluster)
  }


newtype UpdateParameterGroupRequest = UpdateParameterGroupRequest 
  { "ParameterGroupName" :: (String)
  , "ParameterNameValues" :: (ParameterNameValueList)
  }


newtype UpdateParameterGroupResponse = UpdateParameterGroupResponse 
  { "ParameterGroup" :: NullOrUndefined (ParameterGroup)
  }


newtype UpdateSubnetGroupRequest = UpdateSubnetGroupRequest 
  { "SubnetGroupName" :: (String)
  , "Description" :: NullOrUndefined (String)
  , "SubnetIds" :: NullOrUndefined (SubnetIdentifierList)
  }


newtype UpdateSubnetGroupResponse = UpdateSubnetGroupResponse 
  { "SubnetGroup" :: NullOrUndefined (SubnetGroup)
  }