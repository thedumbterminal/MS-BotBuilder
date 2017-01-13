# MS::BotBuilder::Object::VideoCard

## Load the model package
```perl
use MS::BotBuilder::Object::VideoCard;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | Title of the card | [optional] 
**subtitle** | **string** | Subtitle of the card | [optional] 
**text** | **string** | Text of the card | [optional] 
**image** | [**ThumbnailUrl**](ThumbnailUrl.md) | Thumbnail placeholder | [optional] 
**media** | [**ARRAY[MediaUrl]**](MediaUrl.md) | Array of media Url objects | [optional] 
**buttons** | [**ARRAY[CardAction]**](CardAction.md) | Set of actions applicable to the current card | [optional] 
**shareable** | **boolean** | Is it OK for this content to be shareable with others (default:true) | [optional] 
**autoloop** | **boolean** | Should the client loop playback at end of content (default:true) | [optional] 
**autostart** | **boolean** | Should the client automatically start playback of video in this card (default:true) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


