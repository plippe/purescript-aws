## Module AWS.CognitoSync

<fullname>Amazon Cognito Sync</fullname> <p>Amazon Cognito Sync provides an AWS service and client library that enable cross-device syncing of application-related user data. High-level client libraries are available for both iOS and Android. You can use these libraries to persist data locally so that it's available even if the device is offline. Developer credentials don't need to be stored on the mobile device to access the service. You can use Amazon Cognito to obtain a normalized user ID and credentials. User data is persisted in a dataset that can store up to 1 MB of key-value pairs, and you can have up to 20 datasets per user identity.</p> <p>With Amazon Cognito Sync, the data stored for each identity is accessible only to credentials assigned to that identity. In order to use the Cognito Sync service, you need to make API calls using credentials retrieved with <a href="http://docs.aws.amazon.com/cognitoidentity/latest/APIReference/Welcome.html">Amazon Cognito Identity service</a>.</p> <p>If you want to use Cognito Sync in an Android or iOS application, you will probably want to make API calls via the AWS Mobile SDK. To learn more, see the <a href="http://docs.aws.amazon.com/mobile/sdkforandroid/developerguide/cognito-sync.html">Developer Guide for Android</a> and the <a href="http://docs.aws.amazon.com/mobile/sdkforios/developerguide/cognito-sync.html">Developer Guide for iOS</a>.</p>

#### `serviceName`

``` purescript
serviceName :: String
```

#### `bulkPublish`

``` purescript
bulkPublish :: forall eff. BulkPublishRequest -> Aff (err :: RequestError | eff) BulkPublishResponse
```

<p>Initiates a bulk publish of all existing datasets for an Identity Pool to the configured stream. Customers are limited to one successful bulk publish per 24 hours. Bulk publish is an asynchronous request, customers can see the status of the request via the GetBulkPublishDetails operation.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

#### `deleteDataset`

``` purescript
deleteDataset :: forall eff. DeleteDatasetRequest -> Aff (err :: RequestError | eff) DeleteDatasetResponse
```

<p>Deletes the specific dataset. The dataset will be deleted permanently, and the action can't be undone. Datasets that this dataset was merged with will no longer report the merge. Any subsequent operation on this dataset will result in a ResourceNotFoundException.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>

#### `describeDataset`

``` purescript
describeDataset :: forall eff. DescribeDatasetRequest -> Aff (err :: RequestError | eff) DescribeDatasetResponse
```

<p>Gets meta data about a dataset by identity and dataset name. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>

#### `describeIdentityPoolUsage`

``` purescript
describeIdentityPoolUsage :: forall eff. DescribeIdentityPoolUsageRequest -> Aff (err :: RequestError | eff) DescribeIdentityPoolUsageResponse
```

<p>Gets usage details (for example, data storage) about a particular identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

#### `describeIdentityUsage`

``` purescript
describeIdentityUsage :: forall eff. DescribeIdentityUsageRequest -> Aff (err :: RequestError | eff) DescribeIdentityUsageResponse
```

<p>Gets usage information for an identity, including number of datasets and data usage.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>

#### `getBulkPublishDetails`

``` purescript
getBulkPublishDetails :: forall eff. GetBulkPublishDetailsRequest -> Aff (err :: RequestError | eff) GetBulkPublishDetailsResponse
```

<p>Get the status of the last BulkPublish operation for an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

#### `getCognitoEvents`

``` purescript
getCognitoEvents :: forall eff. GetCognitoEventsRequest -> Aff (err :: RequestError | eff) GetCognitoEventsResponse
```

<p>Gets the events and the corresponding Lambda functions associated with an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

#### `getIdentityPoolConfiguration`

``` purescript
getIdentityPoolConfiguration :: forall eff. GetIdentityPoolConfigurationRequest -> Aff (err :: RequestError | eff) GetIdentityPoolConfigurationResponse
```

<p>Gets the configuration settings of an identity pool.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

#### `listDatasets`

``` purescript
listDatasets :: forall eff. ListDatasetsRequest -> Aff (err :: RequestError | eff) ListDatasetsResponse
```

<p>Lists datasets for an identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>ListDatasets can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use the Cognito Identity credentials to make this API call.</p>

#### `listIdentityPoolUsage`

``` purescript
listIdentityPoolUsage :: forall eff. ListIdentityPoolUsageRequest -> Aff (err :: RequestError | eff) ListIdentityPoolUsageResponse
```

<p>Gets a list of identity pools registered with Cognito.</p> <p>ListIdentityPoolUsage can only be called with developer credentials. You cannot make this API call with the temporary user credentials provided by Cognito Identity.</p>

#### `listRecords`

``` purescript
listRecords :: forall eff. ListRecordsRequest -> Aff (err :: RequestError | eff) ListRecordsResponse
```

<p>Gets paginated records, optionally changed after a particular sync count for a dataset and identity. With Amazon Cognito Sync, each identity has access only to its own data. Thus, the credentials used to make this API call need to have access to the identity data.</p> <p>ListRecords can be called with temporary user credentials provided by Cognito Identity or with developer credentials. You should use Cognito Identity credentials to make this API call.</p>

#### `registerDevice`

``` purescript
registerDevice :: forall eff. RegisterDeviceRequest -> Aff (err :: RequestError | eff) RegisterDeviceResponse
```

<p>Registers a device to receive push sync notifications.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>

#### `setCognitoEvents`

``` purescript
setCognitoEvents :: forall eff. SetCognitoEventsRequest -> Aff (err :: RequestError | eff) Unit
```

<p>Sets the AWS Lambda function for a given event type for an identity pool. This request only updates the key/value pair specified. Other key/values pairs are not updated. To remove a key value pair, pass a empty value for the particular key.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

#### `setIdentityPoolConfiguration`

``` purescript
setIdentityPoolConfiguration :: forall eff. SetIdentityPoolConfigurationRequest -> Aff (err :: RequestError | eff) SetIdentityPoolConfigurationResponse
```

<p>Sets the necessary configuration for push sync.</p> <p>This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.</p>

#### `subscribeToDataset`

``` purescript
subscribeToDataset :: forall eff. SubscribeToDatasetRequest -> Aff (err :: RequestError | eff) SubscribeToDatasetResponse
```

<p>Subscribes to receive notifications when a dataset is modified by another device.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>

#### `unsubscribeFromDataset`

``` purescript
unsubscribeFromDataset :: forall eff. UnsubscribeFromDatasetRequest -> Aff (err :: RequestError | eff) UnsubscribeFromDatasetResponse
```

<p>Unsubscribes from receiving notifications when a dataset is modified by another device.</p> <p>This API can only be called with temporary credentials provided by Cognito Identity. You cannot call this API with developer credentials.</p>

#### `updateRecords`

``` purescript
updateRecords :: forall eff. UpdateRecordsRequest -> Aff (err :: RequestError | eff) UpdateRecordsResponse
```

<p>Posts updates to records and adds and deletes records for a dataset and user.</p> <p>The sync count in the record patch is your last known sync count for that record. The server will reject an UpdateRecords request with a ResourceConflictException if you try to patch a record with a new value but a stale sync count.</p> <p>For example, if the sync count on the server is 5 for a key called highScore and you try and submit a new highScore with sync count of 4, the request will be rejected. To obtain the current sync count for a record, call ListRecords. On a successful update of the record, the response returns the new sync count for that record. You should present that sync count the next time you try to update that same record. When the record does not exist, specify the sync count as 0.</p> <p>This API can be called with temporary user credentials provided by Cognito Identity or with developer credentials.</p>

#### `AlreadyStreamedException`

``` purescript
newtype AlreadyStreamedException
  = AlreadyStreamedException { "Message'" :: ExceptionMessage }
```

An exception thrown when a bulk publish operation is requested less than 24 hours after a previous bulk publish operation completed successfully.

#### `ApplicationArn`

``` purescript
newtype ApplicationArn
  = ApplicationArn String
```

#### `ApplicationArnList`

``` purescript
newtype ApplicationArnList
  = ApplicationArnList (Array ApplicationArn)
```

#### `AssumeRoleArn`

``` purescript
newtype AssumeRoleArn
  = AssumeRoleArn String
```

#### `BulkPublishRequest`

``` purescript
newtype BulkPublishRequest
  = BulkPublishRequest { "IdentityPoolId" :: IdentityPoolId }
```

The input for the BulkPublish operation.

#### `BulkPublishResponse`

``` purescript
newtype BulkPublishResponse
  = BulkPublishResponse { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId) }
```

The output for the BulkPublish operation.

#### `BulkPublishStatus`

``` purescript
newtype BulkPublishStatus
  = BulkPublishStatus String
```

#### `ClientContext`

``` purescript
newtype ClientContext
  = ClientContext String
```

#### `CognitoEventType`

``` purescript
newtype CognitoEventType
  = CognitoEventType String
```

#### `CognitoStreams`

``` purescript
newtype CognitoStreams
  = CognitoStreams { "StreamName" :: NullOrUndefined (StreamName), "RoleArn" :: NullOrUndefined (AssumeRoleArn), "StreamingStatus" :: NullOrUndefined (StreamingStatus) }
```

Configuration options for configure Cognito streams.

#### `ConcurrentModificationException`

``` purescript
newtype ConcurrentModificationException
  = ConcurrentModificationException { "Message'" :: String }
```

<p>Thrown if there are parallel requests to modify a resource.</p>

#### `Dataset`

``` purescript
newtype Dataset
  = Dataset { "IdentityId" :: NullOrUndefined (IdentityId), "DatasetName" :: NullOrUndefined (DatasetName), "CreationDate" :: NullOrUndefined (Date), "LastModifiedDate" :: NullOrUndefined (Date), "LastModifiedBy" :: NullOrUndefined (String), "DataStorage" :: NullOrUndefined (Number), "NumRecords" :: NullOrUndefined (Number) }
```

A collection of data for an identity pool. An identity pool can have multiple datasets. A dataset is per identity and can be general or associated with a particular entity in an application (like a saved game). Datasets are automatically created if they don't exist. Data is synced by dataset, and a dataset can hold up to 1MB of key-value pairs.

#### `DatasetList`

``` purescript
newtype DatasetList
  = DatasetList (Array Dataset)
```

#### `DatasetName`

``` purescript
newtype DatasetName
  = DatasetName String
```

#### `Date`

``` purescript
newtype Date
  = Date Number
```

#### `DeleteDatasetRequest`

``` purescript
newtype DeleteDatasetRequest
  = DeleteDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName }
```

A request to delete the specific dataset.

#### `DeleteDatasetResponse`

``` purescript
newtype DeleteDatasetResponse
  = DeleteDatasetResponse { "Dataset" :: NullOrUndefined (Dataset) }
```

Response to a successful DeleteDataset request.

#### `DescribeDatasetRequest`

``` purescript
newtype DescribeDatasetRequest
  = DescribeDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName }
```

A request for meta data about a dataset (creation date, number of records, size) by owner and dataset name.

#### `DescribeDatasetResponse`

``` purescript
newtype DescribeDatasetResponse
  = DescribeDatasetResponse { "Dataset" :: NullOrUndefined (Dataset) }
```

Response to a successful DescribeDataset request.

#### `DescribeIdentityPoolUsageRequest`

``` purescript
newtype DescribeIdentityPoolUsageRequest
  = DescribeIdentityPoolUsageRequest { "IdentityPoolId" :: IdentityPoolId }
```

A request for usage information about the identity pool.

#### `DescribeIdentityPoolUsageResponse`

``` purescript
newtype DescribeIdentityPoolUsageResponse
  = DescribeIdentityPoolUsageResponse { "IdentityPoolUsage" :: NullOrUndefined (IdentityPoolUsage) }
```

Response to a successful DescribeIdentityPoolUsage request.

#### `DescribeIdentityUsageRequest`

``` purescript
newtype DescribeIdentityUsageRequest
  = DescribeIdentityUsageRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId }
```

A request for information about the usage of an identity pool.

#### `DescribeIdentityUsageResponse`

``` purescript
newtype DescribeIdentityUsageResponse
  = DescribeIdentityUsageResponse { "IdentityUsage" :: NullOrUndefined (IdentityUsage) }
```

The response to a successful DescribeIdentityUsage request.

#### `DeviceId`

``` purescript
newtype DeviceId
  = DeviceId String
```

#### `DuplicateRequestException`

``` purescript
newtype DuplicateRequestException
  = DuplicateRequestException { "Message'" :: ExceptionMessage }
```

An exception thrown when there is an IN_PROGRESS bulk publish operation for the given identity pool.

#### `Events`

``` purescript
newtype Events
  = Events (Map CognitoEventType LambdaFunctionArn)
```

#### `ExceptionMessage`

``` purescript
newtype ExceptionMessage
  = ExceptionMessage String
```

#### `GetBulkPublishDetailsRequest`

``` purescript
newtype GetBulkPublishDetailsRequest
  = GetBulkPublishDetailsRequest { "IdentityPoolId" :: IdentityPoolId }
```

The input for the GetBulkPublishDetails operation.

#### `GetBulkPublishDetailsResponse`

``` purescript
newtype GetBulkPublishDetailsResponse
  = GetBulkPublishDetailsResponse { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "BulkPublishStartTime" :: NullOrUndefined (Date), "BulkPublishCompleteTime" :: NullOrUndefined (Date), "BulkPublishStatus" :: NullOrUndefined (BulkPublishStatus), "FailureMessage" :: NullOrUndefined (String) }
```

The output for the GetBulkPublishDetails operation.

#### `GetCognitoEventsRequest`

``` purescript
newtype GetCognitoEventsRequest
  = GetCognitoEventsRequest { "IdentityPoolId" :: IdentityPoolId }
```

<p>A request for a list of the configured Cognito Events</p>

#### `GetCognitoEventsResponse`

``` purescript
newtype GetCognitoEventsResponse
  = GetCognitoEventsResponse { "Events" :: NullOrUndefined (Events) }
```

<p>The response from the GetCognitoEvents request</p>

#### `GetIdentityPoolConfigurationRequest`

``` purescript
newtype GetIdentityPoolConfigurationRequest
  = GetIdentityPoolConfigurationRequest { "IdentityPoolId" :: IdentityPoolId }
```

<p>The input for the GetIdentityPoolConfiguration operation.</p>

#### `GetIdentityPoolConfigurationResponse`

``` purescript
newtype GetIdentityPoolConfigurationResponse
  = GetIdentityPoolConfigurationResponse { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "PushSync" :: NullOrUndefined (PushSync), "CognitoStreams" :: NullOrUndefined (CognitoStreams) }
```

<p>The output for the GetIdentityPoolConfiguration operation.</p>

#### `IdentityId`

``` purescript
newtype IdentityId
  = IdentityId String
```

#### `IdentityPoolId`

``` purescript
newtype IdentityPoolId
  = IdentityPoolId String
```

#### `IdentityPoolUsage`

``` purescript
newtype IdentityPoolUsage
  = IdentityPoolUsage { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "SyncSessionsCount" :: NullOrUndefined (Number), "DataStorage" :: NullOrUndefined (Number), "LastModifiedDate" :: NullOrUndefined (Date) }
```

Usage information for the identity pool.

#### `IdentityPoolUsageList`

``` purescript
newtype IdentityPoolUsageList
  = IdentityPoolUsageList (Array IdentityPoolUsage)
```

#### `IdentityUsage`

``` purescript
newtype IdentityUsage
  = IdentityUsage { "IdentityId" :: NullOrUndefined (IdentityId), "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "LastModifiedDate" :: NullOrUndefined (Date), "DatasetCount" :: NullOrUndefined (Int), "DataStorage" :: NullOrUndefined (Number) }
```

Usage information for the identity.

#### `IntegerString`

``` purescript
newtype IntegerString
  = IntegerString Int
```

#### `InternalErrorException`

``` purescript
newtype InternalErrorException
  = InternalErrorException { "Message'" :: ExceptionMessage }
```

Indicates an internal service error.

#### `InvalidConfigurationException`

``` purescript
newtype InvalidConfigurationException
  = InvalidConfigurationException { "Message'" :: ExceptionMessage }
```

#### `InvalidLambdaFunctionOutputException`

``` purescript
newtype InvalidLambdaFunctionOutputException
  = InvalidLambdaFunctionOutputException { "Message'" :: ExceptionMessage }
```

<p>The AWS Lambda function returned invalid output or an exception.</p>

#### `InvalidParameterException`

``` purescript
newtype InvalidParameterException
  = InvalidParameterException { "Message'" :: ExceptionMessage }
```

Thrown when a request parameter does not comply with the associated constraints.

#### `LambdaFunctionArn`

``` purescript
newtype LambdaFunctionArn
  = LambdaFunctionArn String
```

#### `LambdaThrottledException`

``` purescript
newtype LambdaThrottledException
  = LambdaThrottledException { "Message'" :: ExceptionMessage }
```

<p>AWS Lambda throttled your account, please contact AWS Support</p>

#### `LimitExceededException`

``` purescript
newtype LimitExceededException
  = LimitExceededException { "Message'" :: ExceptionMessage }
```

Thrown when the limit on the number of objects or operations has been exceeded.

#### `ListDatasetsRequest`

``` purescript
newtype ListDatasetsRequest
  = ListDatasetsRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (IntegerString) }
```

Request for a list of datasets for an identity.

#### `ListDatasetsResponse`

``` purescript
newtype ListDatasetsResponse
  = ListDatasetsResponse { "Datasets" :: NullOrUndefined (DatasetList), "Count" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String) }
```

Returned for a successful ListDatasets request.

#### `ListIdentityPoolUsageRequest`

``` purescript
newtype ListIdentityPoolUsageRequest
  = ListIdentityPoolUsageRequest { "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (IntegerString) }
```

A request for usage information on an identity pool.

#### `ListIdentityPoolUsageResponse`

``` purescript
newtype ListIdentityPoolUsageResponse
  = ListIdentityPoolUsageResponse { "IdentityPoolUsages" :: NullOrUndefined (IdentityPoolUsageList), "MaxResults" :: NullOrUndefined (Int), "Count" :: NullOrUndefined (Int), "NextToken" :: NullOrUndefined (String) }
```

Returned for a successful ListIdentityPoolUsage request.

#### `ListRecordsRequest`

``` purescript
newtype ListRecordsRequest
  = ListRecordsRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "LastSyncCount" :: NullOrUndefined (Number), "NextToken" :: NullOrUndefined (String), "MaxResults" :: NullOrUndefined (IntegerString), "SyncSessionToken" :: NullOrUndefined (SyncSessionToken) }
```

A request for a list of records.

#### `ListRecordsResponse`

``` purescript
newtype ListRecordsResponse
  = ListRecordsResponse { "Records" :: NullOrUndefined (RecordList), "NextToken" :: NullOrUndefined (String), "Count" :: NullOrUndefined (Int), "DatasetSyncCount" :: NullOrUndefined (Number), "LastModifiedBy" :: NullOrUndefined (String), "MergedDatasetNames" :: NullOrUndefined (MergedDatasetNameList), "DatasetExists" :: NullOrUndefined (Boolean), "DatasetDeletedAfterRequestedSyncCount" :: NullOrUndefined (Boolean), "SyncSessionToken" :: NullOrUndefined (String) }
```

Returned for a successful ListRecordsRequest.

#### `MergedDatasetNameList`

``` purescript
newtype MergedDatasetNameList
  = MergedDatasetNameList (Array String)
```

#### `NotAuthorizedException`

``` purescript
newtype NotAuthorizedException
  = NotAuthorizedException { "Message'" :: ExceptionMessage }
```

Thrown when a user is not authorized to access the requested resource.

#### `Operation`

``` purescript
newtype Operation
  = Operation String
```

#### `Platform`

``` purescript
newtype Platform
  = Platform String
```

#### `PushSync`

``` purescript
newtype PushSync
  = PushSync { "ApplicationArns" :: NullOrUndefined (ApplicationArnList), "RoleArn" :: NullOrUndefined (AssumeRoleArn) }
```

<p>Configuration options to be applied to the identity pool.</p>

#### `PushToken`

``` purescript
newtype PushToken
  = PushToken String
```

#### `Record''`

``` purescript
newtype Record''
  = Record'' { "Key" :: NullOrUndefined (RecordKey), "Value" :: NullOrUndefined (RecordValue), "SyncCount" :: NullOrUndefined (Number), "LastModifiedDate" :: NullOrUndefined (Date), "LastModifiedBy" :: NullOrUndefined (String), "DeviceLastModifiedDate" :: NullOrUndefined (Date) }
```

The basic data structure of a dataset.

#### `RecordKey`

``` purescript
newtype RecordKey
  = RecordKey String
```

#### `RecordList`

``` purescript
newtype RecordList
  = RecordList (Array Record'')
```

#### `RecordPatch`

``` purescript
newtype RecordPatch
  = RecordPatch { "Op" :: Operation, "Key" :: RecordKey, "Value" :: NullOrUndefined (RecordValue), "SyncCount" :: Number, "DeviceLastModifiedDate" :: NullOrUndefined (Date) }
```

An update operation for a record.

#### `RecordPatchList`

``` purescript
newtype RecordPatchList
  = RecordPatchList (Array RecordPatch)
```

#### `RecordValue`

``` purescript
newtype RecordValue
  = RecordValue String
```

#### `RegisterDeviceRequest`

``` purescript
newtype RegisterDeviceRequest
  = RegisterDeviceRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "Platform" :: Platform, "Token" :: PushToken }
```

<p>A request to RegisterDevice.</p>

#### `RegisterDeviceResponse`

``` purescript
newtype RegisterDeviceResponse
  = RegisterDeviceResponse { "DeviceId" :: NullOrUndefined (DeviceId) }
```

<p>Response to a RegisterDevice request.</p>

#### `ResourceConflictException`

``` purescript
newtype ResourceConflictException
  = ResourceConflictException { "Message'" :: ExceptionMessage }
```

Thrown if an update can't be applied because the resource was changed by another call and this would result in a conflict.

#### `ResourceNotFoundException`

``` purescript
newtype ResourceNotFoundException
  = ResourceNotFoundException { "Message'" :: ExceptionMessage }
```

Thrown if the resource doesn't exist.

#### `SetCognitoEventsRequest`

``` purescript
newtype SetCognitoEventsRequest
  = SetCognitoEventsRequest { "IdentityPoolId" :: IdentityPoolId, "Events" :: Events }
```

<p>A request to configure Cognito Events"</p>"

#### `SetIdentityPoolConfigurationRequest`

``` purescript
newtype SetIdentityPoolConfigurationRequest
  = SetIdentityPoolConfigurationRequest { "IdentityPoolId" :: IdentityPoolId, "PushSync" :: NullOrUndefined (PushSync), "CognitoStreams" :: NullOrUndefined (CognitoStreams) }
```

<p>The input for the SetIdentityPoolConfiguration operation.</p>

#### `SetIdentityPoolConfigurationResponse`

``` purescript
newtype SetIdentityPoolConfigurationResponse
  = SetIdentityPoolConfigurationResponse { "IdentityPoolId" :: NullOrUndefined (IdentityPoolId), "PushSync" :: NullOrUndefined (PushSync), "CognitoStreams" :: NullOrUndefined (CognitoStreams) }
```

<p>The output for the SetIdentityPoolConfiguration operation</p>

#### `StreamName`

``` purescript
newtype StreamName
  = StreamName String
```

#### `StreamingStatus`

``` purescript
newtype StreamingStatus
  = StreamingStatus String
```

#### `SubscribeToDatasetRequest`

``` purescript
newtype SubscribeToDatasetRequest
  = SubscribeToDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId }
```

<p>A request to SubscribeToDatasetRequest.</p>

#### `SubscribeToDatasetResponse`

``` purescript
newtype SubscribeToDatasetResponse
  = SubscribeToDatasetResponse {  }
```

<p>Response to a SubscribeToDataset request.</p>

#### `SyncSessionToken`

``` purescript
newtype SyncSessionToken
  = SyncSessionToken String
```

#### `TooManyRequestsException`

``` purescript
newtype TooManyRequestsException
  = TooManyRequestsException { "Message'" :: ExceptionMessage }
```

Thrown if the request is throttled.

#### `UnsubscribeFromDatasetRequest`

``` purescript
newtype UnsubscribeFromDatasetRequest
  = UnsubscribeFromDatasetRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: DeviceId }
```

<p>A request to UnsubscribeFromDataset.</p>

#### `UnsubscribeFromDatasetResponse`

``` purescript
newtype UnsubscribeFromDatasetResponse
  = UnsubscribeFromDatasetResponse {  }
```

<p>Response to an UnsubscribeFromDataset request.</p>

#### `UpdateRecordsRequest`

``` purescript
newtype UpdateRecordsRequest
  = UpdateRecordsRequest { "IdentityPoolId" :: IdentityPoolId, "IdentityId" :: IdentityId, "DatasetName" :: DatasetName, "DeviceId" :: NullOrUndefined (DeviceId), "RecordPatches" :: NullOrUndefined (RecordPatchList), "SyncSessionToken" :: SyncSessionToken, "ClientContext" :: NullOrUndefined (ClientContext) }
```

A request to post updates to records or add and delete records for a dataset and user.

#### `UpdateRecordsResponse`

``` purescript
newtype UpdateRecordsResponse
  = UpdateRecordsResponse { "Records" :: NullOrUndefined (RecordList) }
```

Returned for a successful UpdateRecordsRequest.

