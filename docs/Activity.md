# MS::BotBuilder::Object::Activity

## Load the model package
```perl
use MS::BotBuilder::Object::Activity;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **string** | The type of the activity [message|contactRelationUpdate|converationUpdate|typing] | [optional] 
**id** | **string** | Id for the activity | [optional] 
**timestamp** | **DateTime** | UTC Time when message was sent (Set by service) | [optional] 
**local_timestamp** | **DateTime** | Local time when message was sent (set by client Ex: 2016-09-23T13:07:49.4714686-07:00) | [optional] 
**service_url** | **string** | Service endpoint | [optional] 
**channel_id** | **string** | ChannelId the activity was on | [optional] 
**from** | [**ChannelAccount**](ChannelAccount.md) | Sender address | [optional] 
**conversation** | [**ConversationAccount**](ConversationAccount.md) | Conversation | [optional] 
**recipient** | [**ChannelAccount**](ChannelAccount.md) | (Outbound to bot only) Bot&#39;s address that received the message | [optional] 
**text_format** | **string** | Format of text fields [plain|markdown] Default:markdown | [optional] 
**attachment_layout** | **string** | AttachmentLayout - hint for how to deal with multiple attachments Values: [list|carousel] Default:list | [optional] 
**members_added** | [**ARRAY[ChannelAccount]**](ChannelAccount.md) | Array of address added | [optional] 
**members_removed** | [**ARRAY[ChannelAccount]**](ChannelAccount.md) | Array of addresses removed | [optional] 
**topic_name** | **string** | Conversations new topic name | [optional] 
**history_disclosed** | **boolean** | the previous history of the channel was disclosed | [optional] 
**locale** | **string** | The language code of the Text field | [optional] 
**text** | **string** | Content for the message | [optional] 
**summary** | **string** | Text to display if you can&#39;t render cards | [optional] 
**attachments** | [**ARRAY[Attachment]**](Attachment.md) | Attachments | [optional] 
**entities** | [**ARRAY[Entity]**](Entity.md) | Collection of Entity objects, each of which contains metadata about this activity. Each Entity object is typed. | [optional] 
**channel_data** | [**Object**](Object.md) | Channel specific payload | [optional] 
**action** | **string** | ContactAdded/Removed action | [optional] 
**reply_to_id** | **string** | the original id this message is a response to | [optional] 
**value** | [**Object**](Object.md) | Open ended value | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


