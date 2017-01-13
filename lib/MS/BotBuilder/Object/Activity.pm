=begin comment

Microsoft Bot Connector API - v3.0

﻿The Bot Connector REST API allows your bot to send and receive messages to channels configured in the  [Bot Framework Developer Portal](https://dev.botframework.com). The Connector service uses industry-standard REST  and JSON over HTTPS.    Client libraries for this REST API are available. See below for a list.    Many bots will use both the Bot Connector REST API and the associated [Bot State REST API](/en-us/restapi/state). The  Bot State REST API allows a bot to store and retrieve state associated with users and conversations.    Authentication for both the Bot Connector and Bot State REST APIs is accomplished with JWT Bearer tokens, and is  described in detail in the [Connector Authentication](/en-us/restapi/authentication) document.    # Client Libraries for the Bot Connector REST API    * [Bot Builder for C#](/en-us/csharp/builder/sdkreference/)  * [Bot Builder for Node.js](/en-us/node/builder/overview/)  * Generate your own from the [Connector API Swagger file](https://raw.githubusercontent.com/Microsoft/BotBuilder/master/CSharp/Library/Microsoft.Bot.Connector/Swagger/ConnectorAPI.json)    © 2016 Microsoft

OpenAPI spec version: v3
Contact: botframework@microsoft.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package MS::BotBuilder::Object::Activity;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base ("Class::Accessor", "Class::Data::Inheritable");


#
#An Activity is the basic communication type for the Bot Framework 3.0 protocol
#
# NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
# REF: https://github.com/swagger-api/swagger-codegen
#

=begin comment

Microsoft Bot Connector API - v3.0

﻿The Bot Connector REST API allows your bot to send and receive messages to channels configured in the  [Bot Framework Developer Portal](https://dev.botframework.com). The Connector service uses industry-standard REST  and JSON over HTTPS.    Client libraries for this REST API are available. See below for a list.    Many bots will use both the Bot Connector REST API and the associated [Bot State REST API](/en-us/restapi/state). The  Bot State REST API allows a bot to store and retrieve state associated with users and conversations.    Authentication for both the Bot Connector and Bot State REST APIs is accomplished with JWT Bearer tokens, and is  described in detail in the [Connector Authentication](/en-us/restapi/authentication) document.    # Client Libraries for the Bot Connector REST API    * [Bot Builder for C#](/en-us/csharp/builder/sdkreference/)  * [Bot Builder for Node.js](/en-us/node/builder/overview/)  * Generate your own from the [Connector API Swagger file](https://raw.githubusercontent.com/Microsoft/BotBuilder/master/CSharp/Library/Microsoft.Bot.Connector/Swagger/ConnectorAPI.json)    © 2016 Microsoft

OpenAPI spec version: v3
Contact: botframework@microsoft.com
Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('swagger_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {}); 
__PACKAGE__->mk_classdata('class_documentation' => {});

# new object
sub new { 
    my ($class, %args) = @_; 

	my $self = bless {}, $class;
	
	foreach my $attribute (keys %{$class->attribute_map}) {
		my $args_key = $class->attribute_map->{$attribute};
		$self->$attribute( $args{ $args_key } );
	}
	
	return $self;
}  

# return perl hash
sub to_hash {
    return decode_json(JSON->new->convert_blessed->encode( shift ));
}

# used by JSON for serialization
sub TO_JSON { 
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }
    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use swagger_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->swagger_types} ) {
    	my $_json_attribute = $self->attribute_map->{$_key}; 
        if ($_type =~ /^array\[/i) { # array
            my $_subclass = substr($_type, 6, -1);
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
        	$log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }
  
    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);
        
    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "MS::BotBuilder::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'An Activity is the basic communication type for the Bot Framework 3.0 protocol',
                                  class => 'Activity',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'type' => {
    	datatype => 'string',
    	base_name => 'type',
    	description => 'The type of the activity [message|contactRelationUpdate|converationUpdate|typing]',
    	format => '',
    	read_only => '',
    		},
    'id' => {
    	datatype => 'string',
    	base_name => 'id',
    	description => 'Id for the activity',
    	format => '',
    	read_only => '',
    		},
    'timestamp' => {
    	datatype => 'DateTime',
    	base_name => 'timestamp',
    	description => 'UTC Time when message was sent (Set by service)',
    	format => '',
    	read_only => '',
    		},
    'local_timestamp' => {
    	datatype => 'DateTime',
    	base_name => 'localTimestamp',
    	description => 'Local time when message was sent (set by client Ex: 2016-09-23T13:07:49.4714686-07:00)',
    	format => '',
    	read_only => '',
    		},
    'service_url' => {
    	datatype => 'string',
    	base_name => 'serviceUrl',
    	description => 'Service endpoint',
    	format => '',
    	read_only => '',
    		},
    'channel_id' => {
    	datatype => 'string',
    	base_name => 'channelId',
    	description => 'ChannelId the activity was on',
    	format => '',
    	read_only => '',
    		},
    'from' => {
    	datatype => 'ChannelAccount',
    	base_name => 'from',
    	description => 'Sender address',
    	format => '',
    	read_only => '',
    		},
    'conversation' => {
    	datatype => 'ConversationAccount',
    	base_name => 'conversation',
    	description => 'Conversation',
    	format => '',
    	read_only => '',
    		},
    'recipient' => {
    	datatype => 'ChannelAccount',
    	base_name => 'recipient',
    	description => '(Outbound to bot only) Bot&#39;s address that received the message',
    	format => '',
    	read_only => '',
    		},
    'text_format' => {
    	datatype => 'string',
    	base_name => 'textFormat',
    	description => 'Format of text fields [plain|markdown] Default:markdown',
    	format => '',
    	read_only => '',
    		},
    'attachment_layout' => {
    	datatype => 'string',
    	base_name => 'attachmentLayout',
    	description => 'AttachmentLayout - hint for how to deal with multiple attachments Values: [list|carousel] Default:list',
    	format => '',
    	read_only => '',
    		},
    'members_added' => {
    	datatype => 'ARRAY[ChannelAccount]',
    	base_name => 'membersAdded',
    	description => 'Array of address added',
    	format => '',
    	read_only => '',
    		},
    'members_removed' => {
    	datatype => 'ARRAY[ChannelAccount]',
    	base_name => 'membersRemoved',
    	description => 'Array of addresses removed',
    	format => '',
    	read_only => '',
    		},
    'topic_name' => {
    	datatype => 'string',
    	base_name => 'topicName',
    	description => 'Conversations new topic name',
    	format => '',
    	read_only => '',
    		},
    'history_disclosed' => {
    	datatype => 'boolean',
    	base_name => 'historyDisclosed',
    	description => 'the previous history of the channel was disclosed',
    	format => '',
    	read_only => '',
    		},
    'locale' => {
    	datatype => 'string',
    	base_name => 'locale',
    	description => 'The language code of the Text field',
    	format => '',
    	read_only => '',
    		},
    'text' => {
    	datatype => 'string',
    	base_name => 'text',
    	description => 'Content for the message',
    	format => '',
    	read_only => '',
    		},
    'summary' => {
    	datatype => 'string',
    	base_name => 'summary',
    	description => 'Text to display if you can&#39;t render cards',
    	format => '',
    	read_only => '',
    		},
    'attachments' => {
    	datatype => 'ARRAY[Attachment]',
    	base_name => 'attachments',
    	description => 'Attachments',
    	format => '',
    	read_only => '',
    		},
    'entities' => {
    	datatype => 'ARRAY[Entity]',
    	base_name => 'entities',
    	description => 'Collection of Entity objects, each of which contains metadata about this activity. Each Entity object is typed.',
    	format => '',
    	read_only => '',
    		},
    'channel_data' => {
    	datatype => 'Object',
    	base_name => 'channelData',
    	description => 'Channel specific payload',
    	format => '',
    	read_only => '',
    		},
    'action' => {
    	datatype => 'string',
    	base_name => 'action',
    	description => 'ContactAdded/Removed action',
    	format => '',
    	read_only => '',
    		},
    'reply_to_id' => {
    	datatype => 'string',
    	base_name => 'replyToId',
    	description => 'the original id this message is a response to',
    	format => '',
    	read_only => '',
    		},
    'value' => {
    	datatype => 'Object',
    	base_name => 'value',
    	description => 'Open ended value',
    	format => '',
    	read_only => '',
    		},
});

__PACKAGE__->swagger_types( {
    'type' => 'string',
    'id' => 'string',
    'timestamp' => 'DateTime',
    'local_timestamp' => 'DateTime',
    'service_url' => 'string',
    'channel_id' => 'string',
    'from' => 'ChannelAccount',
    'conversation' => 'ConversationAccount',
    'recipient' => 'ChannelAccount',
    'text_format' => 'string',
    'attachment_layout' => 'string',
    'members_added' => 'ARRAY[ChannelAccount]',
    'members_removed' => 'ARRAY[ChannelAccount]',
    'topic_name' => 'string',
    'history_disclosed' => 'boolean',
    'locale' => 'string',
    'text' => 'string',
    'summary' => 'string',
    'attachments' => 'ARRAY[Attachment]',
    'entities' => 'ARRAY[Entity]',
    'channel_data' => 'Object',
    'action' => 'string',
    'reply_to_id' => 'string',
    'value' => 'Object'
} );

__PACKAGE__->attribute_map( {
    'type' => 'type',
    'id' => 'id',
    'timestamp' => 'timestamp',
    'local_timestamp' => 'localTimestamp',
    'service_url' => 'serviceUrl',
    'channel_id' => 'channelId',
    'from' => 'from',
    'conversation' => 'conversation',
    'recipient' => 'recipient',
    'text_format' => 'textFormat',
    'attachment_layout' => 'attachmentLayout',
    'members_added' => 'membersAdded',
    'members_removed' => 'membersRemoved',
    'topic_name' => 'topicName',
    'history_disclosed' => 'historyDisclosed',
    'locale' => 'locale',
    'text' => 'text',
    'summary' => 'summary',
    'attachments' => 'attachments',
    'entities' => 'entities',
    'channel_data' => 'channelData',
    'action' => 'action',
    'reply_to_id' => 'replyToId',
    'value' => 'value'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
