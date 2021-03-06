# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::NewsSearch::V1_0
  module Models
    #
    # Response base
    #
    class ResponseBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["NewsArticle"] = "NewsArticle"
      @@discriminatorMap["News"] = "News"
      @@discriminatorMap["SearchResultsAnswer"] = "SearchResultsAnswer"
      @@discriminatorMap["ImageObject"] = "ImageObject"
      @@discriminatorMap["News/Topic"] = "NewsTopic"
      @@discriminatorMap["Answer"] = "Answer"
      @@discriminatorMap["Article"] = "Article"
      @@discriminatorMap["Thing"] = "Thing"
      @@discriminatorMap["Response"] = "Response"
      @@discriminatorMap["TrendingTopics"] = "TrendingTopics"
      @@discriminatorMap["VideoObject"] = "VideoObject"
      @@discriminatorMap["CreativeWork"] = "CreativeWork"
      @@discriminatorMap["Organization"] = "Organization"
      @@discriminatorMap["Identifiable"] = "Identifiable"
      @@discriminatorMap["ErrorResponse"] = "ErrorResponse"
      @@discriminatorMap["MediaObject"] = "MediaObject"

      def initialize
        @_type = "ResponseBase"
      end

      attr_accessor :_type


      #
      # Mapper for ResponseBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResponseBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: '_type',
            uber_parent: 'ResponseBase',
            class_name: 'ResponseBase',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
