## Module AWS.CloudWatch

<p>Amazon CloudWatch monitors your Amazon Web Services (AWS) resources and the applications you run on AWS in real time. You can use CloudWatch to collect and track metrics, which are the variables you want to measure for your resources and applications.</p> <p>CloudWatch alarms send notifications or automatically change the resources you are monitoring based on rules that you define. For example, you can monitor the CPU usage and disk reads and writes of your Amazon EC2 instances. Then, use this data to determine whether you should launch additional instances to handle increased load. You can also use this data to stop under-used instances to save money.</p> <p>In addition to monitoring the built-in metrics that come with AWS, you can monitor your own custom metrics. With CloudWatch, you gain system-wide visibility into resource utilization, application performance, and operational health.</p>

#### `serviceName`

``` purescript
serviceName :: String
```

#### `deleteAlarms`

``` purescript
deleteAlarms :: forall eff. DeleteAlarmsInput -> Aff (err :: RequestError | eff) Unit
```

<p>Deletes the specified alarms. In the event of an error, no alarms are deleted.</p>

#### `deleteDashboards`

``` purescript
deleteDashboards :: forall eff. DeleteDashboardsInput -> Aff (err :: RequestError | eff) DeleteDashboardsOutput
```

<p>Deletes all dashboards that you specify. You may specify up to 100 dashboards to delete. If there is an error during this call, no dashboards are deleted.</p>

#### `describeAlarmHistory`

``` purescript
describeAlarmHistory :: forall eff. DescribeAlarmHistoryInput -> Aff (err :: RequestError | eff) DescribeAlarmHistoryOutput
```

<p>Retrieves the history for the specified alarm. You can filter the results by date range or item type. If an alarm name is not specified, the histories for all alarms are returned.</p> <p>CloudWatch retains the history of an alarm even if you delete the alarm.</p>

#### `describeAlarms`

``` purescript
describeAlarms :: forall eff. DescribeAlarmsInput -> Aff (err :: RequestError | eff) DescribeAlarmsOutput
```

<p>Retrieves the specified alarms. If no alarms are specified, all alarms are returned. Alarms can be retrieved by using only a prefix for the alarm name, the alarm state, or a prefix for any action.</p>

#### `describeAlarmsForMetric`

``` purescript
describeAlarmsForMetric :: forall eff. DescribeAlarmsForMetricInput -> Aff (err :: RequestError | eff) DescribeAlarmsForMetricOutput
```

<p>Retrieves the alarms for the specified metric. To filter the results, specify a statistic, period, or unit.</p>

#### `disableAlarmActions`

``` purescript
disableAlarmActions :: forall eff. DisableAlarmActionsInput -> Aff (err :: RequestError | eff) Unit
```

<p>Disables the actions for the specified alarms. When an alarm's actions are disabled, the alarm actions do not execute when the alarm state changes.</p>

#### `enableAlarmActions`

``` purescript
enableAlarmActions :: forall eff. EnableAlarmActionsInput -> Aff (err :: RequestError | eff) Unit
```

<p>Enables the actions for the specified alarms.</p>

#### `getDashboard`

``` purescript
getDashboard :: forall eff. GetDashboardInput -> Aff (err :: RequestError | eff) GetDashboardOutput
```

<p>Displays the details of the dashboard that you specify.</p> <p>To copy an existing dashboard, use <code>GetDashboard</code>, and then use the data returned within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code> to create the copy.</p>

#### `getMetricStatistics`

``` purescript
getMetricStatistics :: forall eff. GetMetricStatisticsInput -> Aff (err :: RequestError | eff) GetMetricStatisticsOutput
```

<p>Gets statistics for the specified metric.</p> <p>The maximum number of data points returned from a single call is 1,440. If you request more than 1,440 data points, CloudWatch returns an error. To reduce the number of data points, you can narrow the specified time range and make multiple requests across adjacent time ranges, or you can increase the specified period. Data points are not returned in chronological order.</p> <p>CloudWatch aggregates data points based on the length of the period that you specify. For example, if you request statistics with a one-hour period, CloudWatch aggregates all data points with time stamps that fall within each one-hour period. Therefore, the number of values aggregated by CloudWatch is larger than the number of data points returned.</p> <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:</p> <ul> <li> <p>The SampleCount value of the statistic set is 1.</p> </li> <li> <p>The Min and the Max values of the statistic set are equal.</p> </li> </ul> <p>Amazon CloudWatch retains metric data as follows:</p> <ul> <li> <p>Data points with a period of less than 60 seconds are available for 3 hours. These data points are high-resolution metrics and are available only for custom metrics that have been defined with a <code>StorageResolution</code> of 1.</p> </li> <li> <p>Data points with a period of 60 seconds (1-minute) are available for 15 days.</p> </li> <li> <p>Data points with a period of 300 seconds (5-minute) are available for 63 days.</p> </li> <li> <p>Data points with a period of 3600 seconds (1 hour) are available for 455 days (15 months).</p> </li> </ul> <p>Data points that are initially published with a shorter period are aggregated together for long-term storage. For example, if you collect data using a period of 1 minute, the data remains available for 15 days with 1-minute resolution. After 15 days, this data is still available, but is aggregated and retrievable only with a resolution of 5 minutes. After 63 days, the data is further aggregated and is available with a resolution of 1 hour.</p> <p>CloudWatch started retaining 5-minute and 1-hour metric data as of July 9, 2016.</p> <p>For information about metrics and dimensions supported by AWS services, see the <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CW_Support_For_AWS.html">Amazon CloudWatch Metrics and Dimensions Reference</a> in the <i>Amazon CloudWatch User Guide</i>.</p>

#### `listDashboards`

``` purescript
listDashboards :: forall eff. ListDashboardsInput -> Aff (err :: RequestError | eff) ListDashboardsOutput
```

<p>Returns a list of the dashboards for your account. If you include <code>DashboardNamePrefix</code>, only those dashboards with names starting with the prefix are listed. Otherwise, all dashboards in your account are listed. </p>

#### `listMetrics`

``` purescript
listMetrics :: forall eff. ListMetricsInput -> Aff (err :: RequestError | eff) ListMetricsOutput
```

<p>List the specified metrics. You can use the returned metrics with <a>GetMetricStatistics</a> to obtain statistical data.</p> <p>Up to 500 results are returned for any one call. To retrieve additional results, use the returned token with subsequent calls.</p> <p>After you create a metric, allow up to fifteen minutes before the metric appears. Statistics about the metric, however, are available sooner using <a>GetMetricStatistics</a>.</p>

#### `putDashboard`

``` purescript
putDashboard :: forall eff. PutDashboardInput -> Aff (err :: RequestError | eff) PutDashboardOutput
```

<p>Creates a dashboard if it does not already exist, or updates an existing dashboard. If you update a dashboard, the entire contents are replaced with what you specify here.</p> <p>You can have up to 500 dashboards per account. All dashboards in your account are global, not region-specific.</p> <p>A simple way to create a dashboard using <code>PutDashboard</code> is to copy an existing dashboard. To copy an existing dashboard using the console, you can load the dashboard and then use the View/edit source command in the Actions menu to display the JSON block for that dashboard. Another way to copy a dashboard is to use <code>GetDashboard</code>, and then use the data returned within <code>DashboardBody</code> as the template for the new dashboard when you call <code>PutDashboard</code>.</p> <p>When you create a dashboard with <code>PutDashboard</code>, a good practice is to add a text widget at the top of the dashboard with a message that the dashboard was created by script and should not be changed in the console. This message could also point console users to the location of the <code>DashboardBody</code> script or the CloudFormation template used to create the dashboard.</p>

#### `putMetricAlarm`

``` purescript
putMetricAlarm :: forall eff. PutMetricAlarmInput -> Aff (err :: RequestError | eff) Unit
```

<p>Creates or updates an alarm and associates it with the specified metric. Optionally, this operation can associate one or more Amazon SNS resources with the alarm.</p> <p>When this operation creates an alarm, the alarm state is immediately set to <code>INSUFFICIENT_DATA</code>. The alarm is evaluated and its state is set appropriately. Any actions associated with the state are then executed.</p> <p>When you update an existing alarm, its state is left unchanged, but the update completely overwrites the previous configuration of the alarm.</p> <p>If you are an IAM user, you must have Amazon EC2 permissions for some operations:</p> <ul> <li> <p> <code>iam:CreateServiceLinkedRole</code> for all alarms with EC2 actions</p> </li> <li> <p> <code>ec2:DescribeInstanceStatus</code> and <code>ec2:DescribeInstances</code> for all alarms on EC2 instance status metrics</p> </li> <li> <p> <code>ec2:StopInstances</code> for alarms with stop actions</p> </li> <li> <p> <code>ec2:TerminateInstances</code> for alarms with terminate actions</p> </li> <li> <p> <code>ec2:DescribeInstanceRecoveryAttribute</code> and <code>ec2:RecoverInstances</code> for alarms with recover actions</p> </li> </ul> <p>If you have read/write permissions for Amazon CloudWatch but not for Amazon EC2, you can still create an alarm, but the stop or terminate actions are not performed. However, if you are later granted the required permissions, the alarm actions that you created earlier are performed.</p> <p>If you are using an IAM role (for example, an EC2 instance profile), you cannot stop or terminate the instance using alarm actions. However, you can still see the alarm state and perform any other actions such as Amazon SNS notifications or Auto Scaling policies.</p> <p>If you are using temporary security credentials granted using AWS STS, you cannot stop or terminate an EC2 instance using alarm actions.</p> <p>You must create at least one stop, terminate, or reboot alarm using either the Amazon EC2 or CloudWatch consoles to create the <b>EC2ActionsAccess</b> IAM role. After this IAM role is created, you can create stop, terminate, or reboot alarms using a command-line interface or API.</p>

#### `putMetricData`

``` purescript
putMetricData :: forall eff. PutMetricDataInput -> Aff (err :: RequestError | eff) Unit
```

<p>Publishes metric data points to Amazon CloudWatch. CloudWatch associates the data points with the specified metric. If the specified metric does not exist, CloudWatch creates the metric. When CloudWatch creates a metric, it can take up to fifteen minutes for the metric to appear in calls to <a>ListMetrics</a>.</p> <p>Each <code>PutMetricData</code> request is limited to 40 KB in size for HTTP POST requests.</p> <p>Although the <code>Value</code> parameter accepts numbers of type <code>Double</code>, CloudWatch rejects values that are either too small or too large. Values must be in the range of 8.515920e-109 to 1.174271e+108 (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values (for example, NaN, +Infinity, -Infinity) are not supported.</p> <p>You can use up to 10 dimensions per metric to further clarify what data the metric collects. For more information about specifying dimensions, see <a href="http://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/publishingMetrics.html">Publishing Metrics</a> in the <i>Amazon CloudWatch User Guide</i>.</p> <p>Data points with time stamps from 24 hours ago or longer can take at least 48 hours to become available for <a>GetMetricStatistics</a> from the time they are submitted.</p> <p>CloudWatch needs raw data points to calculate percentile statistics. If you publish data using a statistic set instead, you can only retrieve percentile statistics for this data if one of the following conditions is true:</p> <ul> <li> <p>The SampleCount value of the statistic set is 1</p> </li> <li> <p>The Min and the Max values of the statistic set are equal</p> </li> </ul>

#### `setAlarmState`

``` purescript
setAlarmState :: forall eff. SetAlarmStateInput -> Aff (err :: RequestError | eff) Unit
```

<p>Temporarily sets the state of an alarm for testing purposes. When the updated state differs from the previous value, the action configured for the appropriate state is invoked. For example, if your alarm is configured to send an Amazon SNS message when an alarm is triggered, temporarily changing the alarm state to <code>ALARM</code> sends an SNS message. The alarm returns to its actual state (often within seconds). Because the alarm state change happens quickly, it is typically only visible in the alarm's <b>History</b> tab in the Amazon CloudWatch console or through <a>DescribeAlarmHistory</a>.</p>

#### `ActionPrefix`

``` purescript
newtype ActionPrefix
  = ActionPrefix String
```

#### `ActionsEnabled`

``` purescript
newtype ActionsEnabled
  = ActionsEnabled Boolean
```

#### `AlarmArn`

``` purescript
newtype AlarmArn
  = AlarmArn String
```

#### `AlarmDescription`

``` purescript
newtype AlarmDescription
  = AlarmDescription String
```

#### `AlarmHistoryItem`

``` purescript
newtype AlarmHistoryItem
  = AlarmHistoryItem { "AlarmName" :: NullOrUndefined (AlarmName), "Number" :: NullOrUndefined (Number), "HistoryItemType" :: NullOrUndefined (HistoryItemType), "HistorySummary" :: NullOrUndefined (HistorySummary), "HistoryData" :: NullOrUndefined (HistoryData) }
```

<p>Represents the history of a specific alarm.</p>

#### `AlarmHistoryItems`

``` purescript
newtype AlarmHistoryItems
  = AlarmHistoryItems (Array AlarmHistoryItem)
```

#### `AlarmName`

``` purescript
newtype AlarmName
  = AlarmName String
```

#### `AlarmNamePrefix`

``` purescript
newtype AlarmNamePrefix
  = AlarmNamePrefix String
```

#### `AlarmNames`

``` purescript
newtype AlarmNames
  = AlarmNames (Array AlarmName)
```

#### `AwsQueryErrorMessage`

``` purescript
newtype AwsQueryErrorMessage
  = AwsQueryErrorMessage String
```

#### `ComparisonOperator`

``` purescript
newtype ComparisonOperator
  = ComparisonOperator String
```

#### `DashboardArn`

``` purescript
newtype DashboardArn
  = DashboardArn String
```

#### `DashboardBody`

``` purescript
newtype DashboardBody
  = DashboardBody String
```

#### `DashboardEntries`

``` purescript
newtype DashboardEntries
  = DashboardEntries (Array DashboardEntry)
```

#### `DashboardEntry`

``` purescript
newtype DashboardEntry
  = DashboardEntry { "DashboardName" :: NullOrUndefined (DashboardName), "DashboardArn" :: NullOrUndefined (DashboardArn), "LastModified" :: NullOrUndefined (LastModified), "Size" :: NullOrUndefined (Size) }
```

<p>Represents a specific dashboard.</p>

#### `DashboardErrorMessage`

``` purescript
newtype DashboardErrorMessage
  = DashboardErrorMessage String
```

#### `DashboardInvalidInputError`

``` purescript
newtype DashboardInvalidInputError
  = DashboardInvalidInputError { "Message'" :: NullOrUndefined (DashboardErrorMessage), "DashboardValidationMessages'" :: NullOrUndefined (DashboardValidationMessages) }
```

<p>Some part of the dashboard data is invalid.</p>

#### `DashboardName`

``` purescript
newtype DashboardName
  = DashboardName String
```

#### `DashboardNamePrefix`

``` purescript
newtype DashboardNamePrefix
  = DashboardNamePrefix String
```

#### `DashboardNames`

``` purescript
newtype DashboardNames
  = DashboardNames (Array DashboardName)
```

#### `DashboardNotFoundError`

``` purescript
newtype DashboardNotFoundError
  = DashboardNotFoundError { "Message'" :: NullOrUndefined (DashboardErrorMessage) }
```

<p>The specified dashboard does not exist.</p>

#### `DashboardValidationMessage`

``` purescript
newtype DashboardValidationMessage
  = DashboardValidationMessage { "DataPath" :: NullOrUndefined (DataPath), "Message" :: NullOrUndefined (Message) }
```

<p>An error or warning for the operation.</p>

#### `DashboardValidationMessages`

``` purescript
newtype DashboardValidationMessages
  = DashboardValidationMessages (Array DashboardValidationMessage)
```

#### `DataPath`

``` purescript
newtype DataPath
  = DataPath String
```

#### `Datapoint`

``` purescript
newtype Datapoint
  = Datapoint { "Number" :: NullOrUndefined (Number), "SampleCount" :: NullOrUndefined (DatapointValue), "Average" :: NullOrUndefined (DatapointValue), "Sum" :: NullOrUndefined (DatapointValue), "Minimum" :: NullOrUndefined (DatapointValue), "Maximum" :: NullOrUndefined (DatapointValue), "Unit''" :: NullOrUndefined (StandardUnit), "ExtendedStatistics" :: NullOrUndefined (DatapointValueMap) }
```

<p>Encapsulates the statistical data that CloudWatch computes from metric data.</p>

#### `DatapointValue`

``` purescript
newtype DatapointValue
  = DatapointValue Number
```

#### `DatapointValueMap`

``` purescript
newtype DatapointValueMap
  = DatapointValueMap (Map ExtendedStatistic DatapointValue)
```

#### `Datapoints`

``` purescript
newtype Datapoints
  = Datapoints (Array Datapoint)
```

#### `DatapointsToAlarm`

``` purescript
newtype DatapointsToAlarm
  = DatapointsToAlarm Int
```

#### `DeleteAlarmsInput`

``` purescript
newtype DeleteAlarmsInput
  = DeleteAlarmsInput { "AlarmNames" :: AlarmNames }
```

#### `DeleteDashboardsInput`

``` purescript
newtype DeleteDashboardsInput
  = DeleteDashboardsInput { "DashboardNames" :: DashboardNames }
```

#### `DeleteDashboardsOutput`

``` purescript
newtype DeleteDashboardsOutput
  = DeleteDashboardsOutput {  }
```

#### `DescribeAlarmHistoryInput`

``` purescript
newtype DescribeAlarmHistoryInput
  = DescribeAlarmHistoryInput { "AlarmName" :: NullOrUndefined (AlarmName), "HistoryItemType" :: NullOrUndefined (HistoryItemType), "StartDate" :: NullOrUndefined (Number), "EndDate" :: NullOrUndefined (Number), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `DescribeAlarmHistoryOutput`

``` purescript
newtype DescribeAlarmHistoryOutput
  = DescribeAlarmHistoryOutput { "AlarmHistoryItems" :: NullOrUndefined (AlarmHistoryItems), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `DescribeAlarmsForMetricInput`

``` purescript
newtype DescribeAlarmsForMetricInput
  = DescribeAlarmsForMetricInput { "MetricName" :: MetricName, "Namespace" :: Namespace, "Statistic" :: NullOrUndefined (Statistic), "ExtendedStatistic" :: NullOrUndefined (ExtendedStatistic), "Dimensions" :: NullOrUndefined (Dimensions), "Period" :: NullOrUndefined (Period), "Unit''" :: NullOrUndefined (StandardUnit) }
```

#### `DescribeAlarmsForMetricOutput`

``` purescript
newtype DescribeAlarmsForMetricOutput
  = DescribeAlarmsForMetricOutput { "MetricAlarms" :: NullOrUndefined (MetricAlarms) }
```

#### `DescribeAlarmsInput`

``` purescript
newtype DescribeAlarmsInput
  = DescribeAlarmsInput { "AlarmNames" :: NullOrUndefined (AlarmNames), "AlarmNamePrefix" :: NullOrUndefined (AlarmNamePrefix), "StateValue" :: NullOrUndefined (StateValue), "ActionPrefix" :: NullOrUndefined (ActionPrefix), "MaxRecords" :: NullOrUndefined (MaxRecords), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `DescribeAlarmsOutput`

``` purescript
newtype DescribeAlarmsOutput
  = DescribeAlarmsOutput { "MetricAlarms" :: NullOrUndefined (MetricAlarms), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `Dimension`

``` purescript
newtype Dimension
  = Dimension { "Name" :: DimensionName, "Value" :: DimensionValue }
```

<p>Expands the identity of a metric.</p>

#### `DimensionFilter`

``` purescript
newtype DimensionFilter
  = DimensionFilter { "Name" :: DimensionName, "Value" :: NullOrUndefined (DimensionValue) }
```

<p>Represents filters for a dimension.</p>

#### `DimensionFilters`

``` purescript
newtype DimensionFilters
  = DimensionFilters (Array DimensionFilter)
```

#### `DimensionName`

``` purescript
newtype DimensionName
  = DimensionName String
```

#### `DimensionValue`

``` purescript
newtype DimensionValue
  = DimensionValue String
```

#### `Dimensions`

``` purescript
newtype Dimensions
  = Dimensions (Array Dimension)
```

#### `DisableAlarmActionsInput`

``` purescript
newtype DisableAlarmActionsInput
  = DisableAlarmActionsInput { "AlarmNames" :: AlarmNames }
```

#### `EnableAlarmActionsInput`

``` purescript
newtype EnableAlarmActionsInput
  = EnableAlarmActionsInput { "AlarmNames" :: AlarmNames }
```

#### `ErrorMessage`

``` purescript
newtype ErrorMessage
  = ErrorMessage String
```

#### `EvaluateLowSampleCountPercentile`

``` purescript
newtype EvaluateLowSampleCountPercentile
  = EvaluateLowSampleCountPercentile String
```

#### `EvaluationPeriods`

``` purescript
newtype EvaluationPeriods
  = EvaluationPeriods Int
```

#### `ExtendedStatistic`

``` purescript
newtype ExtendedStatistic
  = ExtendedStatistic String
```

#### `ExtendedStatistics`

``` purescript
newtype ExtendedStatistics
  = ExtendedStatistics (Array ExtendedStatistic)
```

#### `FaultDescription`

``` purescript
newtype FaultDescription
  = FaultDescription String
```

#### `GetDashboardInput`

``` purescript
newtype GetDashboardInput
  = GetDashboardInput { "DashboardName" :: DashboardName }
```

#### `GetDashboardOutput`

``` purescript
newtype GetDashboardOutput
  = GetDashboardOutput { "DashboardArn" :: NullOrUndefined (DashboardArn), "DashboardBody" :: NullOrUndefined (DashboardBody), "DashboardName" :: NullOrUndefined (DashboardName) }
```

#### `GetMetricStatisticsInput`

``` purescript
newtype GetMetricStatisticsInput
  = GetMetricStatisticsInput { "Namespace" :: Namespace, "MetricName" :: MetricName, "Dimensions" :: NullOrUndefined (Dimensions), "StartTime" :: Number, "EndTime" :: Number, "Period" :: Period, "Statistics" :: NullOrUndefined (Statistics), "ExtendedStatistics" :: NullOrUndefined (ExtendedStatistics), "Unit''" :: NullOrUndefined (StandardUnit) }
```

#### `GetMetricStatisticsOutput`

``` purescript
newtype GetMetricStatisticsOutput
  = GetMetricStatisticsOutput { "Label" :: NullOrUndefined (MetricLabel), "Datapoints" :: NullOrUndefined (Datapoints) }
```

#### `HistoryData`

``` purescript
newtype HistoryData
  = HistoryData String
```

#### `HistoryItemType`

``` purescript
newtype HistoryItemType
  = HistoryItemType String
```

#### `HistorySummary`

``` purescript
newtype HistorySummary
  = HistorySummary String
```

#### `InternalServiceFault`

``` purescript
newtype InternalServiceFault
  = InternalServiceFault { "Message" :: NullOrUndefined (FaultDescription) }
```

<p>Request processing has failed due to some unknown error, exception, or failure.</p>

#### `InvalidFormatFault`

``` purescript
newtype InvalidFormatFault
  = InvalidFormatFault { "Message'" :: NullOrUndefined (ErrorMessage) }
```

<p>Data was not syntactically valid JSON.</p>

#### `InvalidNextToken`

``` purescript
newtype InvalidNextToken
  = InvalidNextToken { "Message'" :: NullOrUndefined (ErrorMessage) }
```

<p>The next token specified is invalid.</p>

#### `InvalidParameterCombinationException`

``` purescript
newtype InvalidParameterCombinationException
  = InvalidParameterCombinationException { "Message'" :: NullOrUndefined (AwsQueryErrorMessage) }
```

<p>Parameters were used together that cannot be used together.</p>

#### `InvalidParameterValueException`

``` purescript
newtype InvalidParameterValueException
  = InvalidParameterValueException { "Message'" :: NullOrUndefined (AwsQueryErrorMessage) }
```

<p>The value of an input parameter is bad or out-of-range.</p>

#### `LastModified`

``` purescript
newtype LastModified
  = LastModified Number
```

#### `LimitExceededFault`

``` purescript
newtype LimitExceededFault
  = LimitExceededFault { "Message'" :: NullOrUndefined (ErrorMessage) }
```

<p>The quota for alarms for this customer has already been reached.</p>

#### `ListDashboardsInput`

``` purescript
newtype ListDashboardsInput
  = ListDashboardsInput { "DashboardNamePrefix" :: NullOrUndefined (DashboardNamePrefix), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `ListDashboardsOutput`

``` purescript
newtype ListDashboardsOutput
  = ListDashboardsOutput { "DashboardEntries" :: NullOrUndefined (DashboardEntries), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `ListMetricsInput`

``` purescript
newtype ListMetricsInput
  = ListMetricsInput { "Namespace" :: NullOrUndefined (Namespace), "MetricName" :: NullOrUndefined (MetricName), "Dimensions" :: NullOrUndefined (DimensionFilters), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `ListMetricsOutput`

``` purescript
newtype ListMetricsOutput
  = ListMetricsOutput { "Metrics" :: NullOrUndefined (Metrics), "NextToken" :: NullOrUndefined (NextToken) }
```

#### `MaxRecords`

``` purescript
newtype MaxRecords
  = MaxRecords Int
```

#### `Message`

``` purescript
newtype Message
  = Message String
```

#### `Metric`

``` purescript
newtype Metric
  = Metric { "Namespace" :: NullOrUndefined (Namespace), "MetricName" :: NullOrUndefined (MetricName), "Dimensions" :: NullOrUndefined (Dimensions) }
```

<p>Represents a specific metric.</p>

#### `MetricAlarm`

``` purescript
newtype MetricAlarm
  = MetricAlarm { "AlarmName" :: NullOrUndefined (AlarmName), "AlarmArn" :: NullOrUndefined (AlarmArn), "AlarmDescription" :: NullOrUndefined (AlarmDescription), "AlarmConfigurationUpdatedTimestamp" :: NullOrUndefined (Number), "ActionsEnabled" :: NullOrUndefined (ActionsEnabled), "OKActions" :: NullOrUndefined (ResourceList), "AlarmActions" :: NullOrUndefined (ResourceList), "InsufficientDataActions" :: NullOrUndefined (ResourceList), "StateValue" :: NullOrUndefined (StateValue), "StateReason" :: NullOrUndefined (StateReason), "StateReasonData" :: NullOrUndefined (StateReasonData), "StateUpdatedTimestamp" :: NullOrUndefined (Number), "MetricName" :: NullOrUndefined (MetricName), "Namespace" :: NullOrUndefined (Namespace), "Statistic" :: NullOrUndefined (Statistic), "ExtendedStatistic" :: NullOrUndefined (ExtendedStatistic), "Dimensions" :: NullOrUndefined (Dimensions), "Period" :: NullOrUndefined (Period), "Unit''" :: NullOrUndefined (StandardUnit), "EvaluationPeriods" :: NullOrUndefined (EvaluationPeriods), "DatapointsToAlarm" :: NullOrUndefined (DatapointsToAlarm), "Threshold" :: NullOrUndefined (Threshold), "ComparisonOperator" :: NullOrUndefined (ComparisonOperator), "TreatMissingData" :: NullOrUndefined (TreatMissingData), "EvaluateLowSampleCountPercentile" :: NullOrUndefined (EvaluateLowSampleCountPercentile) }
```

<p>Represents an alarm.</p>

#### `MetricAlarms`

``` purescript
newtype MetricAlarms
  = MetricAlarms (Array MetricAlarm)
```

#### `MetricData`

``` purescript
newtype MetricData
  = MetricData (Array MetricDatum)
```

#### `MetricDatum`

``` purescript
newtype MetricDatum
  = MetricDatum { "MetricName" :: MetricName, "Dimensions" :: NullOrUndefined (Dimensions), "Number" :: NullOrUndefined (Number), "Value" :: NullOrUndefined (DatapointValue), "StatisticValues" :: NullOrUndefined (StatisticSet), "Unit''" :: NullOrUndefined (StandardUnit), "StorageResolution" :: NullOrUndefined (StorageResolution) }
```

<p>Encapsulates the information sent to either create a metric or add new values to be aggregated into an existing metric.</p>

#### `MetricLabel`

``` purescript
newtype MetricLabel
  = MetricLabel String
```

#### `MetricName`

``` purescript
newtype MetricName
  = MetricName String
```

#### `Metrics`

``` purescript
newtype Metrics
  = Metrics (Array Metric)
```

#### `MissingRequiredParameterException`

``` purescript
newtype MissingRequiredParameterException
  = MissingRequiredParameterException { "Message'" :: NullOrUndefined (AwsQueryErrorMessage) }
```

<p>An input parameter that is required is missing.</p>

#### `Namespace`

``` purescript
newtype Namespace
  = Namespace String
```

#### `NextToken`

``` purescript
newtype NextToken
  = NextToken String
```

#### `Period`

``` purescript
newtype Period
  = Period Int
```

#### `PutDashboardInput`

``` purescript
newtype PutDashboardInput
  = PutDashboardInput { "DashboardName" :: DashboardName, "DashboardBody" :: DashboardBody }
```

#### `PutDashboardOutput`

``` purescript
newtype PutDashboardOutput
  = PutDashboardOutput { "DashboardValidationMessages" :: NullOrUndefined (DashboardValidationMessages) }
```

#### `PutMetricAlarmInput`

``` purescript
newtype PutMetricAlarmInput
  = PutMetricAlarmInput { "AlarmName" :: AlarmName, "AlarmDescription" :: NullOrUndefined (AlarmDescription), "ActionsEnabled" :: NullOrUndefined (ActionsEnabled), "OKActions" :: NullOrUndefined (ResourceList), "AlarmActions" :: NullOrUndefined (ResourceList), "InsufficientDataActions" :: NullOrUndefined (ResourceList), "MetricName" :: MetricName, "Namespace" :: Namespace, "Statistic" :: NullOrUndefined (Statistic), "ExtendedStatistic" :: NullOrUndefined (ExtendedStatistic), "Dimensions" :: NullOrUndefined (Dimensions), "Period" :: Period, "Unit''" :: NullOrUndefined (StandardUnit), "EvaluationPeriods" :: EvaluationPeriods, "DatapointsToAlarm" :: NullOrUndefined (DatapointsToAlarm), "Threshold" :: Threshold, "ComparisonOperator" :: ComparisonOperator, "TreatMissingData" :: NullOrUndefined (TreatMissingData), "EvaluateLowSampleCountPercentile" :: NullOrUndefined (EvaluateLowSampleCountPercentile) }
```

#### `PutMetricDataInput`

``` purescript
newtype PutMetricDataInput
  = PutMetricDataInput { "Namespace" :: Namespace, "MetricData" :: MetricData }
```

#### `ResourceList`

``` purescript
newtype ResourceList
  = ResourceList (Array ResourceName)
```

#### `ResourceName`

``` purescript
newtype ResourceName
  = ResourceName String
```

#### `ResourceNotFound`

``` purescript
newtype ResourceNotFound
  = ResourceNotFound { "Message'" :: NullOrUndefined (ErrorMessage) }
```

<p>The named resource does not exist.</p>

#### `SetAlarmStateInput`

``` purescript
newtype SetAlarmStateInput
  = SetAlarmStateInput { "AlarmName" :: AlarmName, "StateValue" :: StateValue, "StateReason" :: StateReason, "StateReasonData" :: NullOrUndefined (StateReasonData) }
```

#### `Size`

``` purescript
newtype Size
  = Size Number
```

#### `StandardUnit`

``` purescript
newtype StandardUnit
  = StandardUnit String
```

#### `StateReason`

``` purescript
newtype StateReason
  = StateReason String
```

#### `StateReasonData`

``` purescript
newtype StateReasonData
  = StateReasonData String
```

#### `StateValue`

``` purescript
newtype StateValue
  = StateValue String
```

#### `Statistic`

``` purescript
newtype Statistic
  = Statistic String
```

#### `StatisticSet`

``` purescript
newtype StatisticSet
  = StatisticSet { "SampleCount" :: DatapointValue, "Sum" :: DatapointValue, "Minimum" :: DatapointValue, "Maximum" :: DatapointValue }
```

<p>Represents a set of statistics that describes a specific metric. </p>

#### `Statistics`

``` purescript
newtype Statistics
  = Statistics (Array Statistic)
```

#### `StorageResolution`

``` purescript
newtype StorageResolution
  = StorageResolution Int
```

#### `Threshold`

``` purescript
newtype Threshold
  = Threshold Number
```

#### `TreatMissingData`

``` purescript
newtype TreatMissingData
  = TreatMissingData String
```

