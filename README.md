# NAME

MS::BotBuilder::Role - a Moose role for the Microsoft Bot Connector API - v3.0

﻿The Bot Connector REST API allows your bot to send and receive messages to channels configured in the  [Bot Framework Developer Portal](https://dev.botframework.com). The Connector service uses industry-standard REST  and JSON over HTTPS.    Client libraries for this REST API are available. See below for a list.    Many bots will use both the Bot Connector REST API and the associated [Bot State REST API](/en-us/restapi/state). The  Bot State REST API allows a bot to store and retrieve state associated with users and conversations.    Authentication for both the Bot Connector and Bot State REST APIs is accomplished with JWT Bearer tokens, and is  described in detail in the [Connector Authentication](/en-us/restapi/authentication) document.

# Client Libraries for the Bot Connector REST API

* [Bot Builder for C#](/en-us/csharp/builder/sdkreference/)
* [Bot Builder for Node.js](/en-us/node/builder/overview/)
* Generate your own from the [Connector API Swagger file](https://raw.githubusercontent.com/Microsoft/BotBuilder/master/CSharp/Library/Microsoft.Bot.Connector/Swagger/ConnectorAPI.json)

© 2016 Microsoft

# VERSION

Automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: v3
- Package version: 1.0.0
- Build date: 2017-01-13T22:08:02.708Z
- Build package: class io.swagger.codegen.languages.PerlClientCodegen
For more information, please visit [https://botframework.com](https://botframework.com)

## A note on Moose

This role is the only component of the library that uses Moose. See 
MS::BotBuilder::ApiFactory for non-Moosey usage. 

# SYNOPSIS

The Perl Swagger Codegen project builds a library of Perl modules to interact with 
a web service defined by a OpenAPI Specification. See below for how to build the 
library.

This module provides an interface to the generated library. All the classes, 
objects, and methods (well, not quite \*all\*, see below) are flattened into this 
role. 

        package MyApp;
        use Moose;
        with 'MS::BotBuilder::Role';
        
        package main;
        
        my $api = MyApp->new({ tokens => $tokens });
        
        my $pet = $api->get_pet_by_id(pet_id => $pet_id);
        

## Structure of the library

The library consists of a set of API classes, one for each endpoint. These APIs
implement the method calls available on each endpoint. 

Additionally, there is a set of "object" classes, which represent the objects 
returned by and sent to the methods on the endpoints. 

An API factory class is provided, which builds instances of each endpoint API. 

This Moose role flattens all the methods from the endpoint APIs onto the consuming 
class. It also provides methods to retrieve the endpoint API objects, and the API 
factory object, should you need it. 

For documentation of all these methods, see AUTOMATIC DOCUMENTATION below.

## Configuring authentication

In the normal case, the OpenAPI Spec will describe what parameters are
required and where to put them. You just need to supply the tokens.

    my $tokens = {
        # basic
        username => $username,
        password => $password,
        
        # oauth
        access_token => $oauth_token,
        
        # keys
        $some_key => { token => $token,
                       prefix => $prefix, 
                       in => $in,             # 'head||query',     
                       },
                       
        $another => { token => $token,
                      prefix => $prefix, 
                      in => $in,              # 'head||query',      
                      },                   
        ...,
        
        };
        
        my $api = MyApp->new({ tokens => $tokens });

Note these are all optional, as are `prefix` and `in`, and depend on the API
you are accessing. Usually `prefix` and `in` will be determined by the code generator from
the spec and you will not need to set them at run time. If not, `in` will
default to 'head' and `prefix` to the empty string. 

The tokens will be placed in the `MS::BotBuilder::Configuration` namespace
as follows, but you don't need to know about this. 

- `$MS::BotBuilder::Configuration::username`

    String. The username for basic auth.

- `$MS::BotBuilder::Configuration::password`

    String. The password for basic auth.

- `$MS::BotBuilder::Configuration::api_key`

    Hashref. Keyed on the name of each key (there can be multiple tokens).

            $MS::BotBuilder::Configuration::api_key = {
                    secretKey => 'aaaabbbbccccdddd',
                    anotherKey => '1111222233334444',
                    };

- `$MS::BotBuilder::Configuration::api_key_prefix`

    Hashref. Keyed on the name of each key (there can be multiple tokens). Note not
    all api keys require a prefix.

            $MS::BotBuilder::Configuration::api_key_prefix = {
                    secretKey => 'string',
                    anotherKey => 'same or some other string',
                    };

- `$MS::BotBuilder::Configuration::access_token`

    String. The OAuth access token. 

# METHODS

## `base_url`

The generated code has the `base_url` already set as a default value. This method 
returns (and optionally sets, but only if the API client has not been 
created yet) the current value of `base_url`.

## `api_factory`

Returns an API factory object. You probably won't need to call this directly. 

        $self->api_factory('Pet'); # returns a MS::BotBuilder::PetApi instance
        
        $self->pet_api;            # the same

# MISSING METHODS

Most of the methods on the API are delegated to individual endpoint API objects
(e.g. Pet API, Store API, User API etc). Where different endpoint APIs use the
same method name (e.g. `new()`), these methods can't be delegated. So you need
to call `$api->pet_api->new()`.

In principle, every API is susceptible to the presence of a few, random, undelegatable 
method names. In practice, because of the way method names are constructed, it's 
unlikely in general that any methods will be undelegatable, except for: 

        new()
        class_documentation()
        method_documentation()

To call these methods, you need to get a handle on the relevant object, either
by calling `$api->foo_api` or by retrieving an object, e.g.
`$api->get_pet_by_id(pet_id => $pet_id)`. They are class methods, so
you could also call them on class names.

# BUILDING YOUR LIBRARY

See the homepage `https://github.com/swagger-api/swagger-codegen` for full details. 
But briefly, clone the git repository, build the codegen codebase, set up your build 
config file, then run the API build script. You will need git, Java 7 or 8 and Apache
maven 3.0.3 or better already installed.

The config file should specify the project name for the generated library: 

        {"moduleName":"WWW::MyProjectName"}

Your library files will be built under `WWW::MyProjectName`.

          $ git clone https://github.com/swagger-api/swagger-codegen.git
          $ cd swagger-codegen
          $ mvn package
          $ java -jar modules/swagger-codegen-cli/target/swagger-codegen-cli.jar generate \
    -i [URL or file path to JSON swagger API spec] \
    -l perl \
    -c /path/to/config/file.json \
    -o /path/to/output/folder

Bang, all done. Run the `autodoc` script in the `bin` directory to see the API 
you just built. 

# AUTOMATIC DOCUMENTATION

You can print out a summary of the generated API by running the included
`autodoc` script in the `bin` directory of your generated library. A few
output formats are supported:

          Usage: autodoc [OPTION]

    -w           wide format (default)
    -n           narrow format
    -p           POD format 
    -H           HTML format 
    -m           Markdown format
    -h           print this help message
    -c           your application class
    

The `-c` option allows you to load and inspect your own application. A dummy
namespace is used if you don't supply your own class.

# DOCUMENTATION FROM THE OpenAPI Spec

Additional documentation for each class and method may be provided by the Swagger 
spec. If so, this is available via the `class_documentation()` and 
`method_documentation()` methods on each generated object class, and the 
`method_documentation()` method on the endpoint API classes: 

        my $cmdoc = $api->pet_api->method_documentation->{$method_name}; 
        
        my $odoc = $api->get_pet_by_id->(pet_id => $pet_id)->class_documentation;                                  
        my $omdoc = $api->get_pet_by_id->(pet_id => $pet_id)->method_documentation->{method_name}; 
        

Each of these calls returns a hashref with various useful pieces of information.

# LOAD THE MODULES

To load the API packages:
```perl
use MS::BotBuilder::AttachmentsApi;
use MS::BotBuilder::ConversationsApi;

```

To load the models:
```perl
use MS::BotBuilder::Object::Activity;
use MS::BotBuilder::Object::AnimationCard;
use MS::BotBuilder::Object::Attachment;
use MS::BotBuilder::Object::AttachmentData;
use MS::BotBuilder::Object::AttachmentInfo;
use MS::BotBuilder::Object::AttachmentView;
use MS::BotBuilder::Object::AudioCard;
use MS::BotBuilder::Object::CardAction;
use MS::BotBuilder::Object::CardImage;
use MS::BotBuilder::Object::ChannelAccount;
use MS::BotBuilder::Object::ConversationAccount;
use MS::BotBuilder::Object::ConversationParameters;
use MS::BotBuilder::Object::ConversationResourceResponse;
use MS::BotBuilder::Object::Entity;
use MS::BotBuilder::Object::Error;
use MS::BotBuilder::Object::ErrorResponse;
use MS::BotBuilder::Object::Fact;
use MS::BotBuilder::Object::GeoCoordinates;
use MS::BotBuilder::Object::HeroCard;
use MS::BotBuilder::Object::MediaUrl;
use MS::BotBuilder::Object::Object;
use MS::BotBuilder::Object::Place;
use MS::BotBuilder::Object::ReceiptCard;
use MS::BotBuilder::Object::ReceiptItem;
use MS::BotBuilder::Object::ResourceResponse;
use MS::BotBuilder::Object::SigninCard;
use MS::BotBuilder::Object::ThumbnailCard;
use MS::BotBuilder::Object::ThumbnailUrl;
use MS::BotBuilder::Object::VideoCard;

````

# GETTING STARTED
Put the Perl SDK under the 'lib' folder in your project directory, then run the following
```perl
#!/usr/bin/perl
use lib 'lib';
use strict;
use warnings;
# load the API package
use MS::BotBuilder::AttachmentsApi;
use MS::BotBuilder::ConversationsApi;

# load the models
use MS::BotBuilder::Object::Activity;
use MS::BotBuilder::Object::AnimationCard;
use MS::BotBuilder::Object::Attachment;
use MS::BotBuilder::Object::AttachmentData;
use MS::BotBuilder::Object::AttachmentInfo;
use MS::BotBuilder::Object::AttachmentView;
use MS::BotBuilder::Object::AudioCard;
use MS::BotBuilder::Object::CardAction;
use MS::BotBuilder::Object::CardImage;
use MS::BotBuilder::Object::ChannelAccount;
use MS::BotBuilder::Object::ConversationAccount;
use MS::BotBuilder::Object::ConversationParameters;
use MS::BotBuilder::Object::ConversationResourceResponse;
use MS::BotBuilder::Object::Entity;
use MS::BotBuilder::Object::Error;
use MS::BotBuilder::Object::ErrorResponse;
use MS::BotBuilder::Object::Fact;
use MS::BotBuilder::Object::GeoCoordinates;
use MS::BotBuilder::Object::HeroCard;
use MS::BotBuilder::Object::MediaUrl;
use MS::BotBuilder::Object::Object;
use MS::BotBuilder::Object::Place;
use MS::BotBuilder::Object::ReceiptCard;
use MS::BotBuilder::Object::ReceiptItem;
use MS::BotBuilder::Object::ResourceResponse;
use MS::BotBuilder::Object::SigninCard;
use MS::BotBuilder::Object::ThumbnailCard;
use MS::BotBuilder::Object::ThumbnailUrl;
use MS::BotBuilder::Object::VideoCard;

# for displaying the API response data
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

# DOCUMENTATION FOR API ENDPOINTS

All URIs are relative to *https://api.botframework.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AttachmentsApi* | [**attachments_get_attachment**](docs/AttachmentsApi.md#attachments_get_attachment) | **GET** /v3/attachments/{attachmentId}/views/{viewId} | GetAttachment
*AttachmentsApi* | [**attachments_get_attachment_info**](docs/AttachmentsApi.md#attachments_get_attachment_info) | **GET** /v3/attachments/{attachmentId} | GetAttachmentInfo
*ConversationsApi* | [**conversations_create_conversation**](docs/ConversationsApi.md#conversations_create_conversation) | **POST** /v3/conversations | CreateConversation
*ConversationsApi* | [**conversations_delete_activity**](docs/ConversationsApi.md#conversations_delete_activity) | **DELETE** /v3/conversations/{conversationId}/activities/{activityId} | DeleteActivity
*ConversationsApi* | [**conversations_get_activity_members**](docs/ConversationsApi.md#conversations_get_activity_members) | **GET** /v3/conversations/{conversationId}/activities/{activityId}/members | GetActivityMembers
*ConversationsApi* | [**conversations_get_conversation_members**](docs/ConversationsApi.md#conversations_get_conversation_members) | **GET** /v3/conversations/{conversationId}/members | GetConversationMembers
*ConversationsApi* | [**conversations_reply_to_activity**](docs/ConversationsApi.md#conversations_reply_to_activity) | **POST** /v3/conversations/{conversationId}/activities/{activityId} | ReplyToActivity
*ConversationsApi* | [**conversations_send_to_conversation**](docs/ConversationsApi.md#conversations_send_to_conversation) | **POST** /v3/conversations/{conversationId}/activities | SendToConversation
*ConversationsApi* | [**conversations_update_activity**](docs/ConversationsApi.md#conversations_update_activity) | **PUT** /v3/conversations/{conversationId}/activities/{activityId} | UpdateActivity
*ConversationsApi* | [**conversations_upload_attachment**](docs/ConversationsApi.md#conversations_upload_attachment) | **POST** /v3/conversations/{conversationId}/attachments | UploadAttachment


# DOCUMENTATION FOR MODELS
 - [MS::BotBuilder::Object::Activity](docs/Activity.md)
 - [MS::BotBuilder::Object::AnimationCard](docs/AnimationCard.md)
 - [MS::BotBuilder::Object::Attachment](docs/Attachment.md)
 - [MS::BotBuilder::Object::AttachmentData](docs/AttachmentData.md)
 - [MS::BotBuilder::Object::AttachmentInfo](docs/AttachmentInfo.md)
 - [MS::BotBuilder::Object::AttachmentView](docs/AttachmentView.md)
 - [MS::BotBuilder::Object::AudioCard](docs/AudioCard.md)
 - [MS::BotBuilder::Object::CardAction](docs/CardAction.md)
 - [MS::BotBuilder::Object::CardImage](docs/CardImage.md)
 - [MS::BotBuilder::Object::ChannelAccount](docs/ChannelAccount.md)
 - [MS::BotBuilder::Object::ConversationAccount](docs/ConversationAccount.md)
 - [MS::BotBuilder::Object::ConversationParameters](docs/ConversationParameters.md)
 - [MS::BotBuilder::Object::ConversationResourceResponse](docs/ConversationResourceResponse.md)
 - [MS::BotBuilder::Object::Entity](docs/Entity.md)
 - [MS::BotBuilder::Object::Error](docs/Error.md)
 - [MS::BotBuilder::Object::ErrorResponse](docs/ErrorResponse.md)
 - [MS::BotBuilder::Object::Fact](docs/Fact.md)
 - [MS::BotBuilder::Object::GeoCoordinates](docs/GeoCoordinates.md)
 - [MS::BotBuilder::Object::HeroCard](docs/HeroCard.md)
 - [MS::BotBuilder::Object::MediaUrl](docs/MediaUrl.md)
 - [MS::BotBuilder::Object::Object](docs/Object.md)
 - [MS::BotBuilder::Object::Place](docs/Place.md)
 - [MS::BotBuilder::Object::ReceiptCard](docs/ReceiptCard.md)
 - [MS::BotBuilder::Object::ReceiptItem](docs/ReceiptItem.md)
 - [MS::BotBuilder::Object::ResourceResponse](docs/ResourceResponse.md)
 - [MS::BotBuilder::Object::SigninCard](docs/SigninCard.md)
 - [MS::BotBuilder::Object::ThumbnailCard](docs/ThumbnailCard.md)
 - [MS::BotBuilder::Object::ThumbnailUrl](docs/ThumbnailUrl.md)
 - [MS::BotBuilder::Object::VideoCard](docs/VideoCard.md)


# DOCUMENTATION FOR AUTHORIATION
 All endpoints do not require authorization.



