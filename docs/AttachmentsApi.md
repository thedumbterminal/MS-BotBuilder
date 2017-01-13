# MS::BotBuilder::AttachmentsApi

## Load the API package
```perl
use MS::BotBuilder::Object::AttachmentsApi;
```

All URIs are relative to *https://api.botframework.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**attachments_get_attachment**](AttachmentsApi.md#attachments_get_attachment) | **GET** /v3/attachments/{attachmentId}/views/{viewId} | GetAttachment
[**attachments_get_attachment_info**](AttachmentsApi.md#attachments_get_attachment_info) | **GET** /v3/attachments/{attachmentId} | GetAttachmentInfo


# **attachments_get_attachment**
> File attachments_get_attachment(attachment_id => $attachment_id, view_id => $view_id)

GetAttachment

Get the named view as binary content

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::AttachmentsApi->new();
my $attachment_id = 'attachment_id_example'; # string | attachment id
my $view_id = 'view_id_example'; # string | View id from attachmentInfo

eval { 
    my $result = $api_instance->attachments_get_attachment(attachment_id => $attachment_id, view_id => $view_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentsApi->attachments_get_attachment: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| attachment id | 
 **view_id** | **string**| View id from attachmentInfo | 

### Return type

[**File**](File.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **attachments_get_attachment_info**
> AttachmentInfo attachments_get_attachment_info(attachment_id => $attachment_id)

GetAttachmentInfo

Get AttachmentInfo structure describing the attachment views

### Example 
```perl
use Data::Dumper;

my $api_instance = MS::BotBuilder::AttachmentsApi->new();
my $attachment_id = 'attachment_id_example'; # string | attachment id

eval { 
    my $result = $api_instance->attachments_get_attachment_info(attachment_id => $attachment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling AttachmentsApi->attachments_get_attachment_info: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachment_id** | **string**| attachment id | 

### Return type

[**AttachmentInfo**](AttachmentInfo.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

