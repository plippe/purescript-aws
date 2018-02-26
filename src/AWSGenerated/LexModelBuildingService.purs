

-- | <fullname>Amazon Lex Build-Time Actions</fullname> <p> Amazon Lex is an AWS service for building conversational voice and text interfaces. Use these actions to create, update, and delete conversational bots for new and existing client applications. </p>
module AWS.LexModelBuildingService where

import Control.Monad.Aff (Aff)
import Data.Foreign.NullOrUndefined (NullOrUndefined)
import Data.Map (Map)
import Data.Unit (Unit, unit)

import AWS.Request as AWS

serviceName = "LexModelBuildingService" :: String


-- | <p>Creates a new version of the bot based on the <code>$LATEST</code> version. If the <code>$LATEST</code> version of this resource hasn't changed since you created the last version, Amazon Lex doesn't create a new version. It returns the last created version.</p> <note> <p>You can update only the <code>$LATEST</code> version of the bot. You can't update the numbered versions that you create with the <code>CreateBotVersion</code> operation.</p> </note> <p> When you create the first version of a bot, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p> This operation requires permission for the <code>lex:CreateBotVersion</code> action. </p>
createBotVersion :: forall eff. CreateBotVersionRequest -> Aff (err :: AWS.RequestError | eff) CreateBotVersionResponse
createBotVersion = AWS.request serviceName "CreateBotVersion" 


-- | <p>Creates a new version of an intent based on the <code>$LATEST</code> version of the intent. If the <code>$LATEST</code> version of this intent hasn't changed since you last updated it, Amazon Lex doesn't create a new version. It returns the last version you created.</p> <note> <p>You can update only the <code>$LATEST</code> version of the intent. You can't update the numbered versions that you create with the <code>CreateIntentVersion</code> operation.</p> </note> <p> When you create a version of an intent, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p>This operation requires permissions to perform the <code>lex:CreateIntentVersion</code> action. </p>
createIntentVersion :: forall eff. CreateIntentVersionRequest -> Aff (err :: AWS.RequestError | eff) CreateIntentVersionResponse
createIntentVersion = AWS.request serviceName "CreateIntentVersion" 


-- | <p>Creates a new version of a slot type based on the <code>$LATEST</code> version of the specified slot type. If the <code>$LATEST</code> version of this resource has not changed since the last version that you created, Amazon Lex doesn't create a new version. It returns the last version that you created. </p> <note> <p>You can update only the <code>$LATEST</code> version of a slot type. You can't update the numbered versions that you create with the <code>CreateSlotTypeVersion</code> operation.</p> </note> <p>When you create a version of a slot type, Amazon Lex sets the version to 1. Subsequent versions increment by 1. For more information, see <a>versioning-intro</a>. </p> <p>This operation requires permissions for the <code>lex:CreateSlotTypeVersion</code> action.</p>
createSlotTypeVersion :: forall eff. CreateSlotTypeVersionRequest -> Aff (err :: AWS.RequestError | eff) CreateSlotTypeVersionResponse
createSlotTypeVersion = AWS.request serviceName "CreateSlotTypeVersion" 


-- | <p>Deletes all versions of the bot, including the <code>$LATEST</code> version. To delete a specific version of the bot, use the <a>DeleteBotVersion</a> operation.</p> <p>If a bot has an alias, you can't delete it. Instead, the <code>DeleteBot</code> operation returns a <code>ResourceInUseException</code> exception that includes a reference to the alias that refers to the bot. To remove the reference to the bot, delete the alias. If you get the same exception again, delete the referring alias until the <code>DeleteBot</code> operation is successful.</p> <p>This operation requires permissions for the <code>lex:DeleteBot</code> action.</p>
deleteBot :: forall eff. DeleteBotRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteBot = AWS.request serviceName "DeleteBot" 


-- | <p>Deletes an alias for the specified bot. </p> <p>You can't delete an alias that is used in the association between a bot and a messaging channel. If an alias is used in a channel association, the <code>DeleteBot</code> operation returns a <code>ResourceInUseException</code> exception that includes a reference to the channel association that refers to the bot. You can remove the reference to the alias by deleting the channel association. If you get the same exception again, delete the referring association until the <code>DeleteBotAlias</code> operation is successful.</p>
deleteBotAlias :: forall eff. DeleteBotAliasRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteBotAlias = AWS.request serviceName "DeleteBotAlias" 


-- | <p>Deletes the association between an Amazon Lex bot and a messaging platform.</p> <p>This operation requires permission for the <code>lex:DeleteBotChannelAssociation</code> action.</p>
deleteBotChannelAssociation :: forall eff. DeleteBotChannelAssociationRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteBotChannelAssociation = AWS.request serviceName "DeleteBotChannelAssociation" 


-- | <p>Deletes a specific version of a bot. To delete all versions of a bot, use the <a>DeleteBot</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteBotVersion</code> action.</p>
deleteBotVersion :: forall eff. DeleteBotVersionRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteBotVersion = AWS.request serviceName "DeleteBotVersion" 


-- | <p>Deletes all versions of the intent, including the <code>$LATEST</code> version. To delete a specific version of the intent, use the <a>DeleteIntentVersion</a> operation.</p> <p> You can delete a version of an intent only if it is not referenced. To delete an intent that is referred to in one or more bots (see <a>how-it-works</a>), you must remove those references first. </p> <note> <p> If you get the <code>ResourceInUseException</code> exception, it provides an example reference that shows where the intent is referenced. To remove the reference to the intent, either update the bot or delete it. If you get the same exception when you attempt to delete the intent again, repeat until the intent has no references and the call to <code>DeleteIntent</code> is successful. </p> </note> <p> This operation requires permission for the <code>lex:DeleteIntent</code> action. </p>
deleteIntent :: forall eff. DeleteIntentRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteIntent = AWS.request serviceName "DeleteIntent" 


-- | <p>Deletes a specific version of an intent. To delete all versions of a intent, use the <a>DeleteIntent</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteIntentVersion</code> action.</p>
deleteIntentVersion :: forall eff. DeleteIntentVersionRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteIntentVersion = AWS.request serviceName "DeleteIntentVersion" 


-- | <p>Deletes all versions of the slot type, including the <code>$LATEST</code> version. To delete a specific version of the slot type, use the <a>DeleteSlotTypeVersion</a> operation.</p> <p> You can delete a version of a slot type only if it is not referenced. To delete a slot type that is referred to in one or more intents, you must remove those references first. </p> <note> <p> If you get the <code>ResourceInUseException</code> exception, the exception provides an example reference that shows the intent where the slot type is referenced. To remove the reference to the slot type, either update the intent or delete it. If you get the same exception when you attempt to delete the slot type again, repeat until the slot type has no references and the <code>DeleteSlotType</code> call is successful. </p> </note> <p>This operation requires permission for the <code>lex:DeleteSlotType</code> action.</p>
deleteSlotType :: forall eff. DeleteSlotTypeRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteSlotType = AWS.request serviceName "DeleteSlotType" 


-- | <p>Deletes a specific version of a slot type. To delete all versions of a slot type, use the <a>DeleteSlotType</a> operation. </p> <p>This operation requires permissions for the <code>lex:DeleteSlotTypeVersion</code> action.</p>
deleteSlotTypeVersion :: forall eff. DeleteSlotTypeVersionRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteSlotTypeVersion = AWS.request serviceName "DeleteSlotTypeVersion" 


-- | <p>Deletes stored utterances.</p> <p>Amazon Lex stores the utterances that users send to your bot. Utterances are stored for 15 days for use with the <a>GetUtterancesView</a> operation, and then stored indefinitely for use in improving the ability of your bot to respond to user input.</p> <p>Use the <code>DeleteStoredUtterances</code> operation to manually delete stored utterances for a specific user.</p> <p>This operation requires permissions for the <code>lex:DeleteUtterances</code> action.</p>
deleteUtterances :: forall eff. DeleteUtterancesRequest -> Aff (err :: AWS.RequestError | eff) Unit
deleteUtterances = AWS.request serviceName "DeleteUtterances" 


-- | <p>Returns metadata information for a specific bot. You must provide the bot name and the bot version or alias. </p> <p> This operation requires permissions for the <code>lex:GetBot</code> action. </p>
getBot :: forall eff. GetBotRequest -> Aff (err :: AWS.RequestError | eff) GetBotResponse
getBot = AWS.request serviceName "GetBot" 


-- | <p>Returns information about an Amazon Lex bot alias. For more information about aliases, see <a>versioning-aliases</a>.</p> <p>This operation requires permissions for the <code>lex:GetBotAlias</code> action.</p>
getBotAlias :: forall eff. GetBotAliasRequest -> Aff (err :: AWS.RequestError | eff) GetBotAliasResponse
getBotAlias = AWS.request serviceName "GetBotAlias" 


-- | <p>Returns a list of aliases for a specified Amazon Lex bot.</p> <p>This operation requires permissions for the <code>lex:GetBotAliases</code> action.</p>
getBotAliases :: forall eff. GetBotAliasesRequest -> Aff (err :: AWS.RequestError | eff) GetBotAliasesResponse
getBotAliases = AWS.request serviceName "GetBotAliases" 


-- | <p>Returns information about the association between an Amazon Lex bot and a messaging platform.</p> <p>This operation requires permissions for the <code>lex:GetBotChannelAssociation</code> action.</p>
getBotChannelAssociation :: forall eff. GetBotChannelAssociationRequest -> Aff (err :: AWS.RequestError | eff) GetBotChannelAssociationResponse
getBotChannelAssociation = AWS.request serviceName "GetBotChannelAssociation" 


-- | <p> Returns a list of all of the channels associated with the specified bot. </p> <p>The <code>GetBotChannelAssociations</code> operation requires permissions for the <code>lex:GetBotChannelAssociations</code> action.</p>
getBotChannelAssociations :: forall eff. GetBotChannelAssociationsRequest -> Aff (err :: AWS.RequestError | eff) GetBotChannelAssociationsResponse
getBotChannelAssociations = AWS.request serviceName "GetBotChannelAssociations" 


-- | <p>Gets information about all of the versions of a bot.</p> <p>The <code>GetBotVersions</code> operation returns a <code>BotMetadata</code> object for each version of a bot. For example, if a bot has three numbered versions, the <code>GetBotVersions</code> operation returns four <code>BotMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetBotVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetBotVersions</code> action.</p>
getBotVersions :: forall eff. GetBotVersionsRequest -> Aff (err :: AWS.RequestError | eff) GetBotVersionsResponse
getBotVersions = AWS.request serviceName "GetBotVersions" 


-- | <p>Returns bot information as follows: </p> <ul> <li> <p>If you provide the <code>nameContains</code> field, the response includes information for the <code>$LATEST</code> version of all bots whose name contains the specified string.</p> </li> <li> <p>If you don't specify the <code>nameContains</code> field, the operation returns information about the <code>$LATEST</code> version of all of your bots.</p> </li> </ul> <p>This operation requires permission for the <code>lex:GetBots</code> action.</p>
getBots :: forall eff. GetBotsRequest -> Aff (err :: AWS.RequestError | eff) GetBotsResponse
getBots = AWS.request serviceName "GetBots" 


-- | <p>Returns information about a built-in intent.</p> <p>This operation requires permission for the <code>lex:GetBuiltinIntent</code> action.</p>
getBuiltinIntent :: forall eff. GetBuiltinIntentRequest -> Aff (err :: AWS.RequestError | eff) GetBuiltinIntentResponse
getBuiltinIntent = AWS.request serviceName "GetBuiltinIntent" 


-- | <p>Gets a list of built-in intents that meet the specified criteria.</p> <p>This operation requires permission for the <code>lex:GetBuiltinIntents</code> action.</p>
getBuiltinIntents :: forall eff. GetBuiltinIntentsRequest -> Aff (err :: AWS.RequestError | eff) GetBuiltinIntentsResponse
getBuiltinIntents = AWS.request serviceName "GetBuiltinIntents" 


-- | <p>Gets a list of built-in slot types that meet the specified criteria.</p> <p>For a list of built-in slot types, see <a href="https://developer.amazon.com/public/solutions/alexa/alexa-skills-kit/docs/built-in-intent-ref/slot-type-reference">Slot Type Reference</a> in the <i>Alexa Skills Kit</i>.</p> <p>This operation requires permission for the <code>lex:GetBuiltInSlotTypes</code> action.</p>
getBuiltinSlotTypes :: forall eff. GetBuiltinSlotTypesRequest -> Aff (err :: AWS.RequestError | eff) GetBuiltinSlotTypesResponse
getBuiltinSlotTypes = AWS.request serviceName "GetBuiltinSlotTypes" 


-- | <p>Exports the contents of a Amazon Lex resource in a specified format. </p>
getExport :: forall eff. GetExportRequest -> Aff (err :: AWS.RequestError | eff) GetExportResponse
getExport = AWS.request serviceName "GetExport" 


-- | <p>Gets information about an import job started with the <code>StartImport</code> operation.</p>
getImport :: forall eff. GetImportRequest -> Aff (err :: AWS.RequestError | eff) GetImportResponse
getImport = AWS.request serviceName "GetImport" 


-- | <p> Returns information about an intent. In addition to the intent name, you must specify the intent version. </p> <p> This operation requires permissions to perform the <code>lex:GetIntent</code> action. </p>
getIntent :: forall eff. GetIntentRequest -> Aff (err :: AWS.RequestError | eff) GetIntentResponse
getIntent = AWS.request serviceName "GetIntent" 


-- | <p>Gets information about all of the versions of an intent.</p> <p>The <code>GetIntentVersions</code> operation returns an <code>IntentMetadata</code> object for each version of an intent. For example, if an intent has three numbered versions, the <code>GetIntentVersions</code> operation returns four <code>IntentMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetIntentVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetIntentVersions</code> action.</p>
getIntentVersions :: forall eff. GetIntentVersionsRequest -> Aff (err :: AWS.RequestError | eff) GetIntentVersionsResponse
getIntentVersions = AWS.request serviceName "GetIntentVersions" 


-- | <p>Returns intent information as follows: </p> <ul> <li> <p>If you specify the <code>nameContains</code> field, returns the <code>$LATEST</code> version of all intents that contain the specified string.</p> </li> <li> <p> If you don't specify the <code>nameContains</code> field, returns information about the <code>$LATEST</code> version of all intents. </p> </li> </ul> <p> The operation requires permission for the <code>lex:GetIntents</code> action. </p>
getIntents :: forall eff. GetIntentsRequest -> Aff (err :: AWS.RequestError | eff) GetIntentsResponse
getIntents = AWS.request serviceName "GetIntents" 


-- | <p>Returns information about a specific version of a slot type. In addition to specifying the slot type name, you must specify the slot type version.</p> <p>This operation requires permissions for the <code>lex:GetSlotType</code> action.</p>
getSlotType :: forall eff. GetSlotTypeRequest -> Aff (err :: AWS.RequestError | eff) GetSlotTypeResponse
getSlotType = AWS.request serviceName "GetSlotType" 


-- | <p>Gets information about all versions of a slot type.</p> <p>The <code>GetSlotTypeVersions</code> operation returns a <code>SlotTypeMetadata</code> object for each version of a slot type. For example, if a slot type has three numbered versions, the <code>GetSlotTypeVersions</code> operation returns four <code>SlotTypeMetadata</code> objects in the response, one for each numbered version and one for the <code>$LATEST</code> version. </p> <p>The <code>GetSlotTypeVersions</code> operation always returns at least one version, the <code>$LATEST</code> version.</p> <p>This operation requires permissions for the <code>lex:GetSlotTypeVersions</code> action.</p>
getSlotTypeVersions :: forall eff. GetSlotTypeVersionsRequest -> Aff (err :: AWS.RequestError | eff) GetSlotTypeVersionsResponse
getSlotTypeVersions = AWS.request serviceName "GetSlotTypeVersions" 


-- | <p>Returns slot type information as follows: </p> <ul> <li> <p>If you specify the <code>nameContains</code> field, returns the <code>$LATEST</code> version of all slot types that contain the specified string.</p> </li> <li> <p> If you don't specify the <code>nameContains</code> field, returns information about the <code>$LATEST</code> version of all slot types. </p> </li> </ul> <p> The operation requires permission for the <code>lex:GetSlotTypes</code> action. </p>
getSlotTypes :: forall eff. GetSlotTypesRequest -> Aff (err :: AWS.RequestError | eff) GetSlotTypesResponse
getSlotTypes = AWS.request serviceName "GetSlotTypes" 


-- | <p>Use the <code>GetUtterancesView</code> operation to get information about the utterances that your users have made to your bot. You can use this list to tune the utterances that your bot responds to.</p> <p>For example, say that you have created a bot to order flowers. After your users have used your bot for a while, use the <code>GetUtterancesView</code> operation to see the requests that they have made and whether they have been successful. You might find that the utterance "I want flowers" is not being recognized. You could add this utterance to the <code>OrderFlowers</code> intent so that your bot recognizes that utterance.</p> <p>After you publish a new version of a bot, you can get information about the old version and the new so that you can compare the performance across the two versions. </p> <note> <p>Utterance statistics are generated once a day. Data is available for the last 15 days. You can request information for up to 5 versions in each request. The response contains information about a maximum of 100 utterances for each version.</p> </note> <p>This operation requires permissions for the <code>lex:GetUtterancesView</code> action.</p>
getUtterancesView :: forall eff. GetUtterancesViewRequest -> Aff (err :: AWS.RequestError | eff) GetUtterancesViewResponse
getUtterancesView = AWS.request serviceName "GetUtterancesView" 


-- | <p>Creates an Amazon Lex conversational bot or replaces an existing bot. When you create or update a bot you are only required to specify a name, a locale, and whether the bot is directed toward children under age 13. You can use this to add intents later, or to remove intents from an existing bot. When you create a bot with the minimum information, the bot is created or updated but Amazon Lex returns the <code/> response <code>FAILED</code>. You can build the bot after you add one or more intents. For more information about Amazon Lex bots, see <a>how-it-works</a>. </p> <p>If you specify the name of an existing bot, the fields in the request replace the existing values in the <code>$LATEST</code> version of the bot. Amazon Lex removes any fields that you don't provide values for in the request, except for the <code>idleTTLInSeconds</code> and <code>privacySettings</code> fields, which are set to their default values. If you don't specify values for required fields, Amazon Lex throws an exception.</p> <p>This operation requires permissions for the <code>lex:PutBot</code> action. For more information, see <a>auth-and-access-control</a>.</p>
putBot :: forall eff. PutBotRequest -> Aff (err :: AWS.RequestError | eff) PutBotResponse
putBot = AWS.request serviceName "PutBot" 


-- | <p>Creates an alias for the specified version of the bot or replaces an alias for the specified bot. To change the version of the bot that the alias points to, replace the alias. For more information about aliases, see <a>versioning-aliases</a>.</p> <p>This operation requires permissions for the <code>lex:PutBotAlias</code> action. </p>
putBotAlias :: forall eff. PutBotAliasRequest -> Aff (err :: AWS.RequestError | eff) PutBotAliasResponse
putBotAlias = AWS.request serviceName "PutBotAlias" 


-- | <p>Creates an intent or replaces an existing intent.</p> <p>To define the interaction between the user and your bot, you use one or more intents. For a pizza ordering bot, for example, you would create an <code>OrderPizza</code> intent. </p> <p>To create an intent or replace an existing intent, you must provide the following:</p> <ul> <li> <p>Intent name. For example, <code>OrderPizza</code>.</p> </li> <li> <p>Sample utterances. For example, "Can I order a pizza, please." and "I want to order a pizza."</p> </li> <li> <p>Information to be gathered. You specify slot types for the information that your bot will request from the user. You can specify standard slot types, such as a date or a time, or custom slot types such as the size and crust of a pizza.</p> </li> <li> <p>How the intent will be fulfilled. You can provide a Lambda function or configure the intent to return the intent information to the client application. If you use a Lambda function, when all of the intent information is available, Amazon Lex invokes your Lambda function. If you configure your intent to return the intent information to the client application. </p> </li> </ul> <p>You can specify other optional information in the request, such as:</p> <ul> <li> <p>A confirmation prompt to ask the user to confirm an intent. For example, "Shall I order your pizza?"</p> </li> <li> <p>A conclusion statement to send to the user after the intent has been fulfilled. For example, "I placed your pizza order."</p> </li> <li> <p>A follow-up prompt that asks the user for additional activity. For example, asking "Do you want to order a drink with your pizza?"</p> </li> </ul> <p>If you specify an existing intent name to update the intent, Amazon Lex replaces the values in the <code>$LATEST</code> version of the intent with the values in the request. Amazon Lex removes fields that you don't provide in the request. If you don't specify the required fields, Amazon Lex throws an exception. When you update the <code>$LATEST</code> version of an intent, the <code>status</code> field of any bot that uses the <code>$LATEST</code> version of the intent is set to <code>NOT_BUILT</code>.</p> <p>For more information, see <a>how-it-works</a>.</p> <p>This operation requires permissions for the <code>lex:PutIntent</code> action.</p>
putIntent :: forall eff. PutIntentRequest -> Aff (err :: AWS.RequestError | eff) PutIntentResponse
putIntent = AWS.request serviceName "PutIntent" 


-- | <p>Creates a custom slot type or replaces an existing custom slot type.</p> <p>To create a custom slot type, specify a name for the slot type and a set of enumeration values, which are the values that a slot of this type can assume. For more information, see <a>how-it-works</a>.</p> <p>If you specify the name of an existing slot type, the fields in the request replace the existing values in the <code>$LATEST</code> version of the slot type. Amazon Lex removes the fields that you don't provide in the request. If you don't specify required fields, Amazon Lex throws an exception. When you update the <code>$LATEST</code> version of a slot type, if a bot uses the <code>$LATEST</code> version of an intent that contains the slot type, the bot's <code>status</code> field is set to <code>NOT_BUILT</code>.</p> <p>This operation requires permissions for the <code>lex:PutSlotType</code> action.</p>
putSlotType :: forall eff. PutSlotTypeRequest -> Aff (err :: AWS.RequestError | eff) PutSlotTypeResponse
putSlotType = AWS.request serviceName "PutSlotType" 


-- | <p>Starts a job to import a resource to Amazon Lex.</p>
startImport :: forall eff. StartImportRequest -> Aff (err :: AWS.RequestError | eff) StartImportResponse
startImport = AWS.request serviceName "StartImport" 


newtype AliasName = AliasName String


newtype AliasNameOrListAll = AliasNameOrListAll String


-- | <p>The request is not well formed. For example, a value is invalid or a required field is missing. Check the field values, and try again.</p>
newtype BadRequestException = BadRequestException 
  { "Message'" :: NullOrUndefined (String)
  }


-- | <p>Provides information about a bot alias.</p>
newtype BotAliasMetadata = BotAliasMetadata 
  { "Name'" :: NullOrUndefined (AliasName)
  , "Description'" :: NullOrUndefined (Description)
  , "BotVersion'" :: NullOrUndefined (Version)
  , "BotName'" :: NullOrUndefined (BotName)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype BotAliasMetadataList = BotAliasMetadataList (Array BotAliasMetadata)


-- | <p>Represents an association between an Amazon Lex bot and an external messaging platform.</p>
newtype BotChannelAssociation = BotChannelAssociation 
  { "Name'" :: NullOrUndefined (BotChannelName)
  , "Description'" :: NullOrUndefined (Description)
  , "BotAlias'" :: NullOrUndefined (AliasName)
  , "BotName'" :: NullOrUndefined (BotName)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Type'" :: NullOrUndefined (ChannelType)
  , "BotConfiguration'" :: NullOrUndefined (ChannelConfigurationMap)
  , "Status'" :: NullOrUndefined (ChannelStatus)
  , "FailureReason'" :: NullOrUndefined (String)
  }


newtype BotChannelAssociationList = BotChannelAssociationList (Array BotChannelAssociation)


newtype BotChannelName = BotChannelName String


-- | <p>Provides information about a bot. .</p>
newtype BotMetadata = BotMetadata 
  { "Name'" :: NullOrUndefined (BotName)
  , "Description'" :: NullOrUndefined (Description)
  , "Status'" :: NullOrUndefined (Status)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  }


newtype BotMetadataList = BotMetadataList (Array BotMetadata)


newtype BotName = BotName String


newtype BotVersions = BotVersions (Array Version)


-- | <p>Provides metadata for a built-in intent.</p>
newtype BuiltinIntentMetadata = BuiltinIntentMetadata 
  { "Signature'" :: NullOrUndefined (BuiltinIntentSignature)
  , "SupportedLocales'" :: NullOrUndefined (LocaleList)
  }


newtype BuiltinIntentMetadataList = BuiltinIntentMetadataList (Array BuiltinIntentMetadata)


newtype BuiltinIntentSignature = BuiltinIntentSignature String


-- | <p>Provides information about a slot used in a built-in intent.</p>
newtype BuiltinIntentSlot = BuiltinIntentSlot 
  { "Name'" :: NullOrUndefined (String)
  }


newtype BuiltinIntentSlotList = BuiltinIntentSlotList (Array BuiltinIntentSlot)


-- | <p>Provides information about a built in slot type.</p>
newtype BuiltinSlotTypeMetadata = BuiltinSlotTypeMetadata 
  { "Signature'" :: NullOrUndefined (BuiltinSlotTypeSignature)
  , "SupportedLocales'" :: NullOrUndefined (LocaleList)
  }


newtype BuiltinSlotTypeMetadataList = BuiltinSlotTypeMetadataList (Array BuiltinSlotTypeMetadata)


newtype BuiltinSlotTypeSignature = BuiltinSlotTypeSignature String


newtype ChannelConfigurationMap = ChannelConfigurationMap (Map String String)


newtype ChannelStatus = ChannelStatus String


newtype ChannelType = ChannelType String


-- | <p>Specifies a Lambda function that verifies requests to a bot or fulfills the user's request to a bot..</p>
newtype CodeHook = CodeHook 
  { "Uri'" :: (LambdaARN)
  , "MessageVersion'" :: (MessageVersion)
  }


-- | <p> There was a conflict processing the request. Try your request again. </p>
newtype ConflictException = ConflictException 
  { "Message'" :: NullOrUndefined (String)
  }


newtype ContentString = ContentString String


newtype ContentType = ContentType String


newtype Count = Count Int


newtype CreateBotVersionRequest = CreateBotVersionRequest 
  { "Name'" :: (BotName)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype CreateBotVersionResponse = CreateBotVersionResponse 
  { "Name'" :: NullOrUndefined (BotName)
  , "Description'" :: NullOrUndefined (Description)
  , "Intents'" :: NullOrUndefined (IntentList)
  , "ClarificationPrompt'" :: NullOrUndefined (Prompt)
  , "AbortStatement'" :: NullOrUndefined (Statement)
  , "Status'" :: NullOrUndefined (Status)
  , "FailureReason'" :: NullOrUndefined (String)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "IdleSessionTTLInSeconds'" :: NullOrUndefined (SessionTTL)
  , "VoiceId'" :: NullOrUndefined (String)
  , "Checksum'" :: NullOrUndefined (String)
  , "Version'" :: NullOrUndefined (Version)
  , "Locale'" :: NullOrUndefined (Locale)
  , "ChildDirected'" :: NullOrUndefined (Boolean)
  }


newtype CreateIntentVersionRequest = CreateIntentVersionRequest 
  { "Name'" :: (IntentName)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype CreateIntentVersionResponse = CreateIntentVersionResponse 
  { "Name'" :: NullOrUndefined (IntentName)
  , "Description'" :: NullOrUndefined (Description)
  , "Slots'" :: NullOrUndefined (SlotList)
  , "SampleUtterances'" :: NullOrUndefined (IntentUtteranceList)
  , "ConfirmationPrompt'" :: NullOrUndefined (Prompt)
  , "RejectionStatement'" :: NullOrUndefined (Statement)
  , "FollowUpPrompt'" :: NullOrUndefined (FollowUpPrompt)
  , "ConclusionStatement'" :: NullOrUndefined (Statement)
  , "DialogCodeHook'" :: NullOrUndefined (CodeHook)
  , "FulfillmentActivity'" :: NullOrUndefined (FulfillmentActivity)
  , "ParentIntentSignature'" :: NullOrUndefined (BuiltinIntentSignature)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype CreateSlotTypeVersionRequest = CreateSlotTypeVersionRequest 
  { "Name'" :: (SlotTypeName)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype CreateSlotTypeVersionResponse = CreateSlotTypeVersionResponse 
  { "Name'" :: NullOrUndefined (SlotTypeName)
  , "Description'" :: NullOrUndefined (Description)
  , "EnumerationValues'" :: NullOrUndefined (EnumerationValues)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  , "Checksum'" :: NullOrUndefined (String)
  , "ValueSelectionStrategy'" :: NullOrUndefined (SlotValueSelectionStrategy)
  }


newtype CustomOrBuiltinSlotTypeName = CustomOrBuiltinSlotTypeName String


newtype DeleteBotAliasRequest = DeleteBotAliasRequest 
  { "Name'" :: (AliasName)
  , "BotName'" :: (BotName)
  }


newtype DeleteBotChannelAssociationRequest = DeleteBotChannelAssociationRequest 
  { "Name'" :: (BotChannelName)
  , "BotName'" :: (BotName)
  , "BotAlias'" :: (AliasName)
  }


newtype DeleteBotRequest = DeleteBotRequest 
  { "Name'" :: (BotName)
  }


newtype DeleteBotVersionRequest = DeleteBotVersionRequest 
  { "Name'" :: (BotName)
  , "Version'" :: (NumericalVersion)
  }


newtype DeleteIntentRequest = DeleteIntentRequest 
  { "Name'" :: (IntentName)
  }


newtype DeleteIntentVersionRequest = DeleteIntentVersionRequest 
  { "Name'" :: (IntentName)
  , "Version'" :: (NumericalVersion)
  }


newtype DeleteSlotTypeRequest = DeleteSlotTypeRequest 
  { "Name'" :: (SlotTypeName)
  }


newtype DeleteSlotTypeVersionRequest = DeleteSlotTypeVersionRequest 
  { "Name'" :: (SlotTypeName)
  , "Version'" :: (NumericalVersion)
  }


newtype DeleteUtterancesRequest = DeleteUtterancesRequest 
  { "BotName'" :: (BotName)
  , "UserId'" :: (UserId)
  }


newtype Description = Description String


-- | <p>Each slot type can have a set of values. Each enumeration value represents a value the slot type can take. </p> <p>For example, a pizza ordering bot could have a slot type that specifies the type of crust that the pizza should have. The slot type could include the values </p> <ul> <li> <p>thick</p> </li> <li> <p>thin</p> </li> <li> <p>stuffed</p> </li> </ul>
newtype EnumerationValue = EnumerationValue 
  { "Value'" :: (Value)
  , "Synonyms'" :: NullOrUndefined (SynonymList)
  }


newtype EnumerationValues = EnumerationValues (Array EnumerationValue)


newtype ExportStatus = ExportStatus String


newtype ExportType = ExportType String


-- | <p>A prompt for additional activity after an intent is fulfilled. For example, after the <code>OrderPizza</code> intent is fulfilled, you might prompt the user to find out whether the user wants to order drinks.</p>
newtype FollowUpPrompt = FollowUpPrompt 
  { "Prompt'" :: (Prompt)
  , "RejectionStatement'" :: (Statement)
  }


-- | <p> Describes how the intent is fulfilled after the user provides all of the information required for the intent. You can provide a Lambda function to process the intent, or you can return the intent information to the client application. We recommend that you use a Lambda function so that the relevant logic lives in the Cloud and limit the client-side code primarily to presentation. If you need to update the logic, you only update the Lambda function; you don't need to upgrade your client application. </p> <p>Consider the following examples:</p> <ul> <li> <p>In a pizza ordering application, after the user provides all of the information for placing an order, you use a Lambda function to place an order with a pizzeria. </p> </li> <li> <p>In a gaming application, when a user says "pick up a rock," this information must go back to the client application so that it can perform the operation and update the graphics. In this case, you want Amazon Lex to return the intent data to the client. </p> </li> </ul>
newtype FulfillmentActivity = FulfillmentActivity 
  { "Type'" :: (FulfillmentActivityType)
  , "CodeHook'" :: NullOrUndefined (CodeHook)
  }


newtype FulfillmentActivityType = FulfillmentActivityType String


newtype GetBotAliasRequest = GetBotAliasRequest 
  { "Name'" :: (AliasName)
  , "BotName'" :: (BotName)
  }


newtype GetBotAliasResponse = GetBotAliasResponse 
  { "Name'" :: NullOrUndefined (AliasName)
  , "Description'" :: NullOrUndefined (Description)
  , "BotVersion'" :: NullOrUndefined (Version)
  , "BotName'" :: NullOrUndefined (BotName)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype GetBotAliasesRequest = GetBotAliasesRequest 
  { "BotName'" :: (BotName)
  , "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  , "NameContains'" :: NullOrUndefined (AliasName)
  }


newtype GetBotAliasesResponse = GetBotAliasesResponse 
  { "BotAliases" :: NullOrUndefined (BotAliasMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetBotChannelAssociationRequest = GetBotChannelAssociationRequest 
  { "Name'" :: (BotChannelName)
  , "BotName'" :: (BotName)
  , "BotAlias'" :: (AliasName)
  }


newtype GetBotChannelAssociationResponse = GetBotChannelAssociationResponse 
  { "Name'" :: NullOrUndefined (BotChannelName)
  , "Description'" :: NullOrUndefined (Description)
  , "BotAlias'" :: NullOrUndefined (AliasName)
  , "BotName'" :: NullOrUndefined (BotName)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Type'" :: NullOrUndefined (ChannelType)
  , "BotConfiguration'" :: NullOrUndefined (ChannelConfigurationMap)
  , "Status'" :: NullOrUndefined (ChannelStatus)
  , "FailureReason'" :: NullOrUndefined (String)
  }


newtype GetBotChannelAssociationsRequest = GetBotChannelAssociationsRequest 
  { "BotName'" :: (BotName)
  , "BotAlias'" :: (AliasNameOrListAll)
  , "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  , "NameContains'" :: NullOrUndefined (BotChannelName)
  }


newtype GetBotChannelAssociationsResponse = GetBotChannelAssociationsResponse 
  { "BotChannelAssociations'" :: NullOrUndefined (BotChannelAssociationList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetBotRequest = GetBotRequest 
  { "Name'" :: (BotName)
  , "VersionOrAlias'" :: (String)
  }


newtype GetBotResponse = GetBotResponse 
  { "Name'" :: NullOrUndefined (BotName)
  , "Description'" :: NullOrUndefined (Description)
  , "Intents'" :: NullOrUndefined (IntentList)
  , "ClarificationPrompt'" :: NullOrUndefined (Prompt)
  , "AbortStatement'" :: NullOrUndefined (Statement)
  , "Status'" :: NullOrUndefined (Status)
  , "FailureReason'" :: NullOrUndefined (String)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "IdleSessionTTLInSeconds'" :: NullOrUndefined (SessionTTL)
  , "VoiceId'" :: NullOrUndefined (String)
  , "Checksum'" :: NullOrUndefined (String)
  , "Version'" :: NullOrUndefined (Version)
  , "Locale'" :: NullOrUndefined (Locale)
  , "ChildDirected'" :: NullOrUndefined (Boolean)
  }


newtype GetBotVersionsRequest = GetBotVersionsRequest 
  { "Name'" :: (BotName)
  , "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  }


newtype GetBotVersionsResponse = GetBotVersionsResponse 
  { "Bots'" :: NullOrUndefined (BotMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetBotsRequest = GetBotsRequest 
  { "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  , "NameContains'" :: NullOrUndefined (BotName)
  }


newtype GetBotsResponse = GetBotsResponse 
  { "Bots'" :: NullOrUndefined (BotMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetBuiltinIntentRequest = GetBuiltinIntentRequest 
  { "Signature'" :: (BuiltinIntentSignature)
  }


newtype GetBuiltinIntentResponse = GetBuiltinIntentResponse 
  { "Signature'" :: NullOrUndefined (BuiltinIntentSignature)
  , "SupportedLocales'" :: NullOrUndefined (LocaleList)
  , "Slots'" :: NullOrUndefined (BuiltinIntentSlotList)
  }


newtype GetBuiltinIntentsRequest = GetBuiltinIntentsRequest 
  { "Locale'" :: NullOrUndefined (Locale)
  , "SignatureContains'" :: NullOrUndefined (String)
  , "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  }


newtype GetBuiltinIntentsResponse = GetBuiltinIntentsResponse 
  { "Intents'" :: NullOrUndefined (BuiltinIntentMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetBuiltinSlotTypesRequest = GetBuiltinSlotTypesRequest 
  { "Locale'" :: NullOrUndefined (Locale)
  , "SignatureContains'" :: NullOrUndefined (String)
  , "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  }


newtype GetBuiltinSlotTypesResponse = GetBuiltinSlotTypesResponse 
  { "SlotTypes'" :: NullOrUndefined (BuiltinSlotTypeMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetExportRequest = GetExportRequest 
  { "Name'" :: (Name)
  , "Version'" :: (NumericalVersion)
  , "ResourceType'" :: (ResourceType)
  , "ExportType'" :: (ExportType)
  }


newtype GetExportResponse = GetExportResponse 
  { "Name'" :: NullOrUndefined (Name)
  , "Version'" :: NullOrUndefined (NumericalVersion)
  , "ResourceType'" :: NullOrUndefined (ResourceType)
  , "ExportType'" :: NullOrUndefined (ExportType)
  , "ExportStatus'" :: NullOrUndefined (ExportStatus)
  , "FailureReason'" :: NullOrUndefined (String)
  , "Url'" :: NullOrUndefined (String)
  }


newtype GetImportRequest = GetImportRequest 
  { "ImportId'" :: (String)
  }


newtype GetImportResponse = GetImportResponse 
  { "Name'" :: NullOrUndefined (Name)
  , "ResourceType'" :: NullOrUndefined (ResourceType)
  , "MergeStrategy'" :: NullOrUndefined (MergeStrategy)
  , "ImportId'" :: NullOrUndefined (String)
  , "ImportStatus'" :: NullOrUndefined (ImportStatus)
  , "FailureReason'" :: NullOrUndefined (StringList)
  , "CreatedDate'" :: NullOrUndefined (Number)
  }


newtype GetIntentRequest = GetIntentRequest 
  { "Name'" :: (IntentName)
  , "Version'" :: (Version)
  }


newtype GetIntentResponse = GetIntentResponse 
  { "Name'" :: NullOrUndefined (IntentName)
  , "Description'" :: NullOrUndefined (Description)
  , "Slots'" :: NullOrUndefined (SlotList)
  , "SampleUtterances'" :: NullOrUndefined (IntentUtteranceList)
  , "ConfirmationPrompt'" :: NullOrUndefined (Prompt)
  , "RejectionStatement'" :: NullOrUndefined (Statement)
  , "FollowUpPrompt'" :: NullOrUndefined (FollowUpPrompt)
  , "ConclusionStatement'" :: NullOrUndefined (Statement)
  , "DialogCodeHook'" :: NullOrUndefined (CodeHook)
  , "FulfillmentActivity'" :: NullOrUndefined (FulfillmentActivity)
  , "ParentIntentSignature'" :: NullOrUndefined (BuiltinIntentSignature)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype GetIntentVersionsRequest = GetIntentVersionsRequest 
  { "Name'" :: (IntentName)
  , "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  }


newtype GetIntentVersionsResponse = GetIntentVersionsResponse 
  { "Intents'" :: NullOrUndefined (IntentMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetIntentsRequest = GetIntentsRequest 
  { "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  , "NameContains'" :: NullOrUndefined (IntentName)
  }


newtype GetIntentsResponse = GetIntentsResponse 
  { "Intents'" :: NullOrUndefined (IntentMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetSlotTypeRequest = GetSlotTypeRequest 
  { "Name'" :: (SlotTypeName)
  , "Version'" :: (Version)
  }


newtype GetSlotTypeResponse = GetSlotTypeResponse 
  { "Name'" :: NullOrUndefined (SlotTypeName)
  , "Description'" :: NullOrUndefined (Description)
  , "EnumerationValues'" :: NullOrUndefined (EnumerationValues)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  , "Checksum'" :: NullOrUndefined (String)
  , "ValueSelectionStrategy'" :: NullOrUndefined (SlotValueSelectionStrategy)
  }


newtype GetSlotTypeVersionsRequest = GetSlotTypeVersionsRequest 
  { "Name'" :: (SlotTypeName)
  , "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  }


newtype GetSlotTypeVersionsResponse = GetSlotTypeVersionsResponse 
  { "SlotTypes'" :: NullOrUndefined (SlotTypeMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetSlotTypesRequest = GetSlotTypesRequest 
  { "NextToken'" :: NullOrUndefined (NextToken)
  , "MaxResults'" :: NullOrUndefined (MaxResults)
  , "NameContains'" :: NullOrUndefined (SlotTypeName)
  }


newtype GetSlotTypesResponse = GetSlotTypesResponse 
  { "SlotTypes'" :: NullOrUndefined (SlotTypeMetadataList)
  , "NextToken'" :: NullOrUndefined (NextToken)
  }


newtype GetUtterancesViewRequest = GetUtterancesViewRequest 
  { "BotName'" :: (BotName)
  , "BotVersions'" :: (BotVersions)
  , "StatusType'" :: (StatusType)
  }


newtype GetUtterancesViewResponse = GetUtterancesViewResponse 
  { "BotName'" :: NullOrUndefined (BotName)
  , "Utterances'" :: NullOrUndefined (ListsOfUtterances)
  }


newtype GroupNumber = GroupNumber Int


newtype ImportStatus = ImportStatus String


-- | <p>Identifies the specific version of an intent.</p>
newtype Intent = Intent 
  { "IntentName'" :: (IntentName)
  , "IntentVersion'" :: (Version)
  }


newtype IntentList = IntentList (Array Intent)


-- | <p>Provides information about an intent.</p>
newtype IntentMetadata = IntentMetadata 
  { "Name'" :: NullOrUndefined (IntentName)
  , "Description'" :: NullOrUndefined (Description)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  }


newtype IntentMetadataList = IntentMetadataList (Array IntentMetadata)


newtype IntentName = IntentName String


newtype IntentUtteranceList = IntentUtteranceList (Array Utterance)


-- | <p>An internal Amazon Lex error occurred. Try your request again.</p>
newtype InternalFailureException = InternalFailureException 
  { "Message'" :: NullOrUndefined (String)
  }


newtype LambdaARN = LambdaARN String


-- | <p>The request exceeded a limit. Try your request again.</p>
newtype LimitExceededException = LimitExceededException 
  { "RetryAfterSeconds'" :: NullOrUndefined (String)
  , "Message'" :: NullOrUndefined (String)
  }


newtype ListOfUtterance = ListOfUtterance (Array UtteranceData)


newtype ListsOfUtterances = ListsOfUtterances (Array UtteranceList)


newtype Locale = Locale String


newtype LocaleList = LocaleList (Array Locale)


newtype MaxResults = MaxResults Int


newtype MergeStrategy = MergeStrategy String


-- | <p>The message object that provides the message text and its type.</p>
newtype Message = Message 
  { "ContentType'" :: (ContentType)
  , "Content'" :: (ContentString)
  , "GroupNumber'" :: NullOrUndefined (GroupNumber)
  }


newtype MessageList = MessageList (Array Message)


newtype MessageVersion = MessageVersion String


newtype Name = Name String


newtype NextToken = NextToken String


-- | <p>The resource specified in the request was not found. Check the resource and try again.</p>
newtype NotFoundException = NotFoundException 
  { "Message'" :: NullOrUndefined (String)
  }


newtype NumericalVersion = NumericalVersion String


-- | <p> The checksum of the resource that you are trying to change does not match the checksum in the request. Check the resource's checksum and try again.</p>
newtype PreconditionFailedException = PreconditionFailedException 
  { "Message'" :: NullOrUndefined (String)
  }


newtype Priority = Priority Int


newtype ProcessBehavior = ProcessBehavior String


-- | <p>Obtains information from the user. To define a prompt, provide one or more messages and specify the number of attempts to get information from the user. If you provide more than one message, Amazon Lex chooses one of the messages to use to prompt the user. For more information, see <a>how-it-works</a>.</p>
newtype Prompt = Prompt 
  { "Messages'" :: (MessageList)
  , "MaxAttempts'" :: (PromptMaxAttempts)
  , "ResponseCard'" :: NullOrUndefined (ResponseCard)
  }


newtype PromptMaxAttempts = PromptMaxAttempts Int


newtype PutBotAliasRequest = PutBotAliasRequest 
  { "Name'" :: (AliasName)
  , "Description'" :: NullOrUndefined (Description)
  , "BotVersion'" :: (Version)
  , "BotName'" :: (BotName)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype PutBotAliasResponse = PutBotAliasResponse 
  { "Name'" :: NullOrUndefined (AliasName)
  , "Description'" :: NullOrUndefined (Description)
  , "BotVersion'" :: NullOrUndefined (Version)
  , "BotName'" :: NullOrUndefined (BotName)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Checksum'" :: NullOrUndefined (String)
  }


newtype PutBotRequest = PutBotRequest 
  { "Name'" :: (BotName)
  , "Description'" :: NullOrUndefined (Description)
  , "Intents'" :: NullOrUndefined (IntentList)
  , "ClarificationPrompt'" :: NullOrUndefined (Prompt)
  , "AbortStatement'" :: NullOrUndefined (Statement)
  , "IdleSessionTTLInSeconds'" :: NullOrUndefined (SessionTTL)
  , "VoiceId'" :: NullOrUndefined (String)
  , "Checksum'" :: NullOrUndefined (String)
  , "ProcessBehavior'" :: NullOrUndefined (ProcessBehavior)
  , "Locale'" :: (Locale)
  , "ChildDirected'" :: (Boolean)
  , "CreateVersion'" :: NullOrUndefined (Boolean)
  }


newtype PutBotResponse = PutBotResponse 
  { "Name'" :: NullOrUndefined (BotName)
  , "Description'" :: NullOrUndefined (Description)
  , "Intents'" :: NullOrUndefined (IntentList)
  , "ClarificationPrompt'" :: NullOrUndefined (Prompt)
  , "AbortStatement'" :: NullOrUndefined (Statement)
  , "Status'" :: NullOrUndefined (Status)
  , "FailureReason'" :: NullOrUndefined (String)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "IdleSessionTTLInSeconds'" :: NullOrUndefined (SessionTTL)
  , "VoiceId'" :: NullOrUndefined (String)
  , "Checksum'" :: NullOrUndefined (String)
  , "Version'" :: NullOrUndefined (Version)
  , "Locale'" :: NullOrUndefined (Locale)
  , "ChildDirected'" :: NullOrUndefined (Boolean)
  , "CreateVersion'" :: NullOrUndefined (Boolean)
  }


newtype PutIntentRequest = PutIntentRequest 
  { "Name'" :: (IntentName)
  , "Description'" :: NullOrUndefined (Description)
  , "Slots'" :: NullOrUndefined (SlotList)
  , "SampleUtterances'" :: NullOrUndefined (IntentUtteranceList)
  , "ConfirmationPrompt'" :: NullOrUndefined (Prompt)
  , "RejectionStatement'" :: NullOrUndefined (Statement)
  , "FollowUpPrompt'" :: NullOrUndefined (FollowUpPrompt)
  , "ConclusionStatement'" :: NullOrUndefined (Statement)
  , "DialogCodeHook'" :: NullOrUndefined (CodeHook)
  , "FulfillmentActivity'" :: NullOrUndefined (FulfillmentActivity)
  , "ParentIntentSignature'" :: NullOrUndefined (BuiltinIntentSignature)
  , "Checksum'" :: NullOrUndefined (String)
  , "CreateVersion'" :: NullOrUndefined (Boolean)
  }


newtype PutIntentResponse = PutIntentResponse 
  { "Name'" :: NullOrUndefined (IntentName)
  , "Description'" :: NullOrUndefined (Description)
  , "Slots'" :: NullOrUndefined (SlotList)
  , "SampleUtterances'" :: NullOrUndefined (IntentUtteranceList)
  , "ConfirmationPrompt'" :: NullOrUndefined (Prompt)
  , "RejectionStatement'" :: NullOrUndefined (Statement)
  , "FollowUpPrompt'" :: NullOrUndefined (FollowUpPrompt)
  , "ConclusionStatement'" :: NullOrUndefined (Statement)
  , "DialogCodeHook'" :: NullOrUndefined (CodeHook)
  , "FulfillmentActivity'" :: NullOrUndefined (FulfillmentActivity)
  , "ParentIntentSignature'" :: NullOrUndefined (BuiltinIntentSignature)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  , "Checksum'" :: NullOrUndefined (String)
  , "CreateVersion'" :: NullOrUndefined (Boolean)
  }


newtype PutSlotTypeRequest = PutSlotTypeRequest 
  { "Name'" :: (SlotTypeName)
  , "Description'" :: NullOrUndefined (Description)
  , "EnumerationValues'" :: NullOrUndefined (EnumerationValues)
  , "Checksum'" :: NullOrUndefined (String)
  , "ValueSelectionStrategy'" :: NullOrUndefined (SlotValueSelectionStrategy)
  , "CreateVersion'" :: NullOrUndefined (Boolean)
  }


newtype PutSlotTypeResponse = PutSlotTypeResponse 
  { "Name'" :: NullOrUndefined (SlotTypeName)
  , "Description'" :: NullOrUndefined (Description)
  , "EnumerationValues'" :: NullOrUndefined (EnumerationValues)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  , "Checksum'" :: NullOrUndefined (String)
  , "ValueSelectionStrategy'" :: NullOrUndefined (SlotValueSelectionStrategy)
  , "CreateVersion'" :: NullOrUndefined (Boolean)
  }


newtype ReferenceType = ReferenceType String


-- | <p>The resource that you are attempting to delete is referred to by another resource. Use this information to remove references to the resource that you are trying to delete.</p> <p>The body of the exception contains a JSON object that describes the resource.</p> <p> <code>{ "resourceType": BOT | BOTALIAS | BOTCHANNEL | INTENT,</code> </p> <p> <code>"resourceReference": {</code> </p> <p> <code>"name": <i>string</i>, "version": <i>string</i> } }</code> </p>
newtype ResourceInUseException = ResourceInUseException 
  { "ReferenceType'" :: NullOrUndefined (ReferenceType)
  , "ExampleReference'" :: NullOrUndefined (ResourceReference)
  }


-- | <p>Describes the resource that refers to the resource that you are attempting to delete. This object is returned as part of the <code>ResourceInUseException</code> exception. </p>
newtype ResourceReference = ResourceReference 
  { "Name'" :: NullOrUndefined (Name)
  , "Version'" :: NullOrUndefined (Version)
  }


newtype ResourceType = ResourceType String


newtype ResponseCard = ResponseCard String


newtype SessionTTL = SessionTTL Int


-- | <p>Identifies the version of a specific slot.</p>
newtype Slot = Slot 
  { "Name'" :: (SlotName)
  , "Description'" :: NullOrUndefined (Description)
  , "SlotConstraint'" :: (SlotConstraint)
  , "SlotType'" :: NullOrUndefined (CustomOrBuiltinSlotTypeName)
  , "SlotTypeVersion'" :: NullOrUndefined (Version)
  , "ValueElicitationPrompt'" :: NullOrUndefined (Prompt)
  , "Priority'" :: NullOrUndefined (Priority)
  , "SampleUtterances'" :: NullOrUndefined (SlotUtteranceList)
  , "ResponseCard'" :: NullOrUndefined (ResponseCard)
  }


newtype SlotConstraint = SlotConstraint String


newtype SlotList = SlotList (Array Slot)


newtype SlotName = SlotName String


-- | <p>Provides information about a slot type..</p>
newtype SlotTypeMetadata = SlotTypeMetadata 
  { "Name'" :: NullOrUndefined (SlotTypeName)
  , "Description'" :: NullOrUndefined (Description)
  , "LastUpdatedDate'" :: NullOrUndefined (Number)
  , "CreatedDate'" :: NullOrUndefined (Number)
  , "Version'" :: NullOrUndefined (Version)
  }


newtype SlotTypeMetadataList = SlotTypeMetadataList (Array SlotTypeMetadata)


newtype SlotTypeName = SlotTypeName String


newtype SlotUtteranceList = SlotUtteranceList (Array Utterance)


newtype SlotValueSelectionStrategy = SlotValueSelectionStrategy String


newtype StartImportRequest = StartImportRequest 
  { "Payload'" :: (String)
  , "ResourceType'" :: (ResourceType)
  , "MergeStrategy'" :: (MergeStrategy)
  }


newtype StartImportResponse = StartImportResponse 
  { "Name'" :: NullOrUndefined (Name)
  , "ResourceType'" :: NullOrUndefined (ResourceType)
  , "MergeStrategy'" :: NullOrUndefined (MergeStrategy)
  , "ImportId'" :: NullOrUndefined (String)
  , "ImportStatus'" :: NullOrUndefined (ImportStatus)
  , "CreatedDate'" :: NullOrUndefined (Number)
  }


-- | <p>A collection of messages that convey information to the user. At runtime, Amazon Lex selects the message to convey. </p>
newtype Statement = Statement 
  { "Messages'" :: (MessageList)
  , "ResponseCard'" :: NullOrUndefined (ResponseCard)
  }


newtype Status = Status String


newtype StatusType = StatusType String


newtype StringList = StringList (Array String)


newtype SynonymList = SynonymList (Array Value)


newtype UserId = UserId String


newtype Utterance = Utterance String


-- | <p>Provides information about a single utterance that was made to your bot. </p>
newtype UtteranceData = UtteranceData 
  { "UtteranceString'" :: NullOrUndefined (UtteranceString)
  , "Count'" :: NullOrUndefined (Count)
  , "DistinctUsers'" :: NullOrUndefined (Count)
  , "FirstUtteredDate'" :: NullOrUndefined (Number)
  , "LastUtteredDate'" :: NullOrUndefined (Number)
  }


-- | <p>Provides a list of utterances that have been made to a specific version of your bot. The list contains a maximum of 100 utterances.</p>
newtype UtteranceList = UtteranceList 
  { "BotVersion'" :: NullOrUndefined (Version)
  , "Utterances'" :: NullOrUndefined (ListOfUtterance)
  }


newtype UtteranceString = UtteranceString String


newtype Value = Value String


newtype Version = Version String