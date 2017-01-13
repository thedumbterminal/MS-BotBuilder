# MS::BotBuilder::Object::ReceiptCard

## Load the model package
```perl
use MS::BotBuilder::Object::ReceiptCard;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**title** | **string** | Title of the card | [optional] 
**items** | [**ARRAY[ReceiptItem]**](ReceiptItem.md) | Array of Receipt Items | [optional] 
**facts** | [**ARRAY[Fact]**](Fact.md) | Array of Fact Objects   Array of key-value pairs. | [optional] 
**tap** | [**CardAction**](CardAction.md) | This action will be activated when user taps on the card | [optional] 
**total** | **string** | Total amount of money paid (or should be paid) | [optional] 
**tax** | **string** | Total amount of TAX paid(or should be paid) | [optional] 
**vat** | **string** | Total amount of VAT paid(or should be paid) | [optional] 
**buttons** | [**ARRAY[CardAction]**](CardAction.md) | Set of actions applicable to the current card | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


