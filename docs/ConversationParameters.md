# MS::BotBuilder::Object::ConversationParameters

## Load the model package
```perl
use MS::BotBuilder::Object::ConversationParameters;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_group** | **boolean** | IsGroup | [optional] 
**bot** | [**ChannelAccount**](ChannelAccount.md) | The bot address for this conversation | [optional] 
**members** | [**ARRAY[ChannelAccount]**](ChannelAccount.md) | Members to add to the conversation | [optional] 
**topic_name** | **string** | (Optional) Topic of the conversation (if supported by the channel) | [optional] 
**activity** | [**Activity**](Activity.md) | (Optional) When creating a new conversation, use this activity as the intial message to the conversation | [optional] 
**channel_data** | [**Object**](Object.md) | Channel specific payload | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


