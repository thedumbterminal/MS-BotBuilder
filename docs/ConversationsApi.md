# MS::BotBuilder::ConversationsApi

## Load the API package
```perl
use MS::BotBuilder::Object::ConversationsApi;
```

All URIs are relative to *https://api.botframework.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**conversations_create_conversation**](ConversationsApi.md#conversations_create_conversation) | **POST** /v3/conversations | CreateConversation
[**conversations_delete_activity**](ConversationsApi.md#conversations_delete_activity) | **DELETE** /v3/conversations/{conversationId}/activities/{activityId} | DeleteActivity
[**conversations_get_activity_members**](ConversationsApi.md#conversations_get_activity_members) | **GET** /v3/conversations/{conversationId}/activities/{activityId}/members | GetActivityMembers
[**conversations_get_conversation_members**](ConversationsApi.md#conversations_get_conversation_members) | **GET** /v3/conversations/{conversationId}/members | GetConversationMembers
[**conversations_reply_to_activity**](ConversationsApi.md#conversations_reply_to_activity) | **POST** /v3/conversations/{conversationId}/activities/{activityId} | ReplyToActivity
[**conversations_send_to_conversation**](ConversationsApi.md#conversations_send_to_conversation) | **POST** /v3/conversations/{conversationId}/activities | SendToConversation
[**conversations_update_activity**](ConversationsApi.md#conversations_update_activity) | **PUT** /v3/conversations/{conversationId}/activities/{activityId} | UpdateActivity
[**conversations_upload_attachment**](ConversationsApi.md#conversations_upload_attachment) | **POST** /v3/conversations/{conversationId}/attachments | UploadAttachment


# **conversations_create_conversation**
> ConversationResourceResponse conversations_create_conversation(parameters => $parameters)

CreateConversation

Create a new Conversation.    POST to this method with a  * Bot being the bot creating the conversation  * IsGroup set to true if this is not a direct message (default is false)  * Members array contining the members you want to have be in the conversation.    The return value is a ResourceResponse which contains a conversation id which is suitable for use  in the message payload and REST API uris.    Most channels only support the semantics of bots initiating a direct message conversation.  An example of how to do that would be:    ```  var resource = await connector.conversations.CreateConversation(new ConversationParameters(){ Bot = bot, members = new ChannelAccount[] { new ChannelAccount(\"user1\") } );  await connect.Conversations.SendToConversationAsync(resource.Id, new Activity() ... ) ;    ```

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $parameters = MS::BotBuilder::Object::ConversationParameters->new(); # ConversationParameters | Parameters to create the conversation from

eval { 
    my $result = $api_instance->conversations_create_conversation(parameters => $parameters);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_create_conversation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **parameters** | [**ConversationParameters**](ConversationParameters.md)| Parameters to create the conversation from | 

### Return type

[**ConversationResourceResponse**](ConversationResourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversations_delete_activity**
> conversations_delete_activity(conversation_id => $conversation_id, activity_id => $activity_id)

DeleteActivity

Delete an existing activity.    Some channels allow you to delete an existing activity, and if successful this method will remove the specified activity.

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $conversation_id = 'conversation_id_example'; # string | Conversation ID
my $activity_id = 'activity_id_example'; # string | activityId to delete

eval { 
    $api_instance->conversations_delete_activity(conversation_id => $conversation_id, activity_id => $activity_id);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_delete_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **string**| Conversation ID | 
 **activity_id** | **string**| activityId to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversations_get_activity_members**
> ARRAY[ChannelAccount] conversations_get_activity_members(conversation_id => $conversation_id, activity_id => $activity_id)

GetActivityMembers

Enumerate the members of an activity.     This REST API takes a ConversationId and a ActivityId, returning an array of ChannelAccount objects representing the members of the particular activity in the conversation.

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $conversation_id = 'conversation_id_example'; # string | Conversation ID
my $activity_id = 'activity_id_example'; # string | Activity ID

eval { 
    my $result = $api_instance->conversations_get_activity_members(conversation_id => $conversation_id, activity_id => $activity_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_get_activity_members: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **string**| Conversation ID | 
 **activity_id** | **string**| Activity ID | 

### Return type

[**ARRAY[ChannelAccount]**](ChannelAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversations_get_conversation_members**
> ARRAY[ChannelAccount] conversations_get_conversation_members(conversation_id => $conversation_id)

GetConversationMembers

Enumerate the members of a converstion.     This REST API takes a ConversationId and returns an array of ChannelAccount objects representing the members of the conversation.

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $conversation_id = 'conversation_id_example'; # string | Conversation ID

eval { 
    my $result = $api_instance->conversations_get_conversation_members(conversation_id => $conversation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_get_conversation_members: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **string**| Conversation ID | 

### Return type

[**ARRAY[ChannelAccount]**](ChannelAccount.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversations_reply_to_activity**
> ResourceResponse conversations_reply_to_activity(conversation_id => $conversation_id, activity_id => $activity_id, activity => $activity)

ReplyToActivity

This method allows you to reply to an activity.    This is slightly different from SendToConversation().  * SendToConverstion(conversationId) - will append the activity to the end of the conversation according to the timestamp or semantics of the channel.  * ReplyToActivity(conversationId,ActivityId) - adds the activity as a reply to another activity, if the channel supports it. If the channel does not support nested replies, ReplyToActivity falls back to SendToConversation.    Use ReplyToActivity when replying to a specific activity in the conversation.    Use SendToConversation in all other cases.

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $conversation_id = 'conversation_id_example'; # string | Conversation ID
my $activity_id = 'activity_id_example'; # string | activityId the reply is to (OPTIONAL)
my $activity = MS::BotBuilder::Object::Activity->new(); # Activity | Activity to send

eval { 
    my $result = $api_instance->conversations_reply_to_activity(conversation_id => $conversation_id, activity_id => $activity_id, activity => $activity);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_reply_to_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **string**| Conversation ID | 
 **activity_id** | **string**| activityId the reply is to (OPTIONAL) | 
 **activity** | [**Activity**](Activity.md)| Activity to send | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversations_send_to_conversation**
> ResourceResponse conversations_send_to_conversation(activity => $activity, conversation_id => $conversation_id)

SendToConversation

This method allows you to send an activity to the end of a conversation.    This is slightly different from ReplyToActivity().  * SendToConverstion(conversationId) - will append the activity to the end of the conversation according to the timestamp or semantics of the channel.  * ReplyToActivity(conversationId,ActivityId) - adds the activity as a reply to another activity, if the channel supports it. If the channel does not support nested replies, ReplyToActivity falls back to SendToConversation.    Use ReplyToActivity when replying to a specific activity in the conversation.    Use SendToConversation in all other cases.

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $activity = MS::BotBuilder::Object::Activity->new(); # Activity | Activity to send
my $conversation_id = 'conversation_id_example'; # string | Conversation ID

eval { 
    my $result = $api_instance->conversations_send_to_conversation(activity => $activity, conversation_id => $conversation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_send_to_conversation: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **activity** | [**Activity**](Activity.md)| Activity to send | 
 **conversation_id** | **string**| Conversation ID | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversations_update_activity**
> ResourceResponse conversations_update_activity(conversation_id => $conversation_id, activity_id => $activity_id, activity => $activity)

UpdateActivity

Edit an existing activity.    Some channels allow you to edit an existing activity to reflect the new state of a bot conversation.    For example, you can remove buttons after someone has clicked \"Approve\" button.

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $conversation_id = 'conversation_id_example'; # string | Conversation ID
my $activity_id = 'activity_id_example'; # string | activityId to update
my $activity = MS::BotBuilder::Object::Activity->new(); # Activity | replacement Activity

eval { 
    my $result = $api_instance->conversations_update_activity(conversation_id => $conversation_id, activity_id => $activity_id, activity => $activity);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_update_activity: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **string**| Conversation ID | 
 **activity_id** | **string**| activityId to update | 
 **activity** | [**Activity**](Activity.md)| replacement Activity | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **conversations_upload_attachment**
> ResourceResponse conversations_upload_attachment(conversation_id => $conversation_id, attachment_upload => $attachment_upload)

UploadAttachment

Upload an attachment directly into a channel's blob storage.    This is useful because it allows you to store data in a compliant store when dealing with enterprises.    The response is a ResourceResponse which contains an AttachmentId which is suitable for using with the attachments API.

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::ConversationsApi->new();
my $conversation_id = 'conversation_id_example'; # string | Conversation ID
my $attachment_upload = MS::BotBuilder::Object::AttachmentData->new(); # AttachmentData | Attachment data

eval { 
    my $result = $api_instance->conversations_upload_attachment(conversation_id => $conversation_id, attachment_upload => $attachment_upload);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ConversationsApi->conversations_upload_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **conversation_id** | **string**| Conversation ID | 
 **attachment_upload** | [**AttachmentData**](AttachmentData.md)| Attachment data | 

### Return type

[**ResourceResponse**](ResourceResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

