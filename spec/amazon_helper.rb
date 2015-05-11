module AmazonHelper

  def response
    {"ItemLookupResponse"=>
  {"OperationRequest"=>
    {"HTTPHeaders"=>{"Header"=>{"Name"=>"UserAgent", "Value"=>"Jeff/1.3.0 (Language=Ruby; Roberts-MacBook-Pro.local)"}},
     "RequestId"=>"8d8322d5-d0e9-43c9-8c14-16b006e6edb7",
     "Arguments"=>
      {"Argument"=>
        [{"Name"=>"AWSAccessKeyId", "Value"=>"AKIAIRBKK35SHPHUR23Q"},
         {"Name"=>"AssociateTag", "Value"=>"pridro02-20"},
         {"Name"=>"Condition", "Value"=>"New"},
         {"Name"=>"IdType", "Value"=>"ASIN"},
         {"Name"=>"ItemId", "Value"=>"B0038K6MY2"},
         {"Name"=>"Operation", "Value"=>"ItemLookup"},
         {"Name"=>"ResponseGroup", "Value"=>"Images,ItemAttributes,OfferSummary"},
         {"Name"=>"Service", "Value"=>"AWSECommerceService"},
         {"Name"=>"SignatureMethod", "Value"=>"HmacSHA256"},
         {"Name"=>"SignatureVersion", "Value"=>"2"},
         {"Name"=>"Timestamp", "Value"=>"2015-05-11T17:27:11Z"},
         {"Name"=>"Version", "Value"=>"2013-08-01"},
         {"Name"=>"Signature", "Value"=>"CdFiHLnSF7hov7lRHTV6W1uulHFZOnF0W3CxGC39m8I="}]},
     "RequestProcessingTime"=>"0.0244650000000000"},
   "Items"=>
    {"Request"=>
      {"IsValid"=>"True",
       "ItemLookupRequest"=>
        {"Condition"=>"New",
         "IdType"=>"ASIN",
         "ItemId"=>"B0038K6MY2",
         "ResponseGroup"=>["Images", "ItemAttributes", "OfferSummary"],
         "VariationPage"=>"All"}},
     "Item"=>
      {"ASIN"=>"B0038K6MY2",
       "ParentASIN"=>"B00LHS270U",
       "DetailPageURL"=>
        "http://www.amazon.co.uk/Portta-Version-Switcher-Pigtail-compatible-Black/dp/B0038K6MY2%3Fpsc%3D1%26SubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0038K6MY2",
       "ItemLinks"=>
        {"ItemLink"=>
          [{"Description"=>"Add To Wishlist",
            "URL"=>
             "http://www.amazon.co.uk/gp/registry/wishlist/add-item.html%3Fasin.0%3DB0038K6MY2%26SubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2"},
           {"Description"=>"Tell A Friend",
            "URL"=>
             "http://www.amazon.co.uk/gp/pdp/taf/B0038K6MY2%3FSubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2"},
           {"Description"=>"All Customer Reviews",
            "URL"=>
             "http://www.amazon.co.uk/review/product/B0038K6MY2%3FSubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2"},
           {"Description"=>"All Offers",
            "URL"=>
             "http://www.amazon.co.uk/gp/offer-listing/B0038K6MY2%3FSubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2"}]},
       "SmallImage"=>
        {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL75_.jpg",
         "Height"=>{"__content__"=>"75", "Units"=>"pixels"},
         "Width"=>{"__content__"=>"75", "Units"=>"pixels"}},
       "MediumImage"=>
        {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL160_.jpg",
         "Height"=>{"__content__"=>"160", "Units"=>"pixels"},
         "Width"=>{"__content__"=>"160", "Units"=>"pixels"}},
       "LargeImage"=>
        {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL.jpg",
         "Height"=>{"__content__"=>"500", "Units"=>"pixels"},
         "Width"=>{"__content__"=>"500", "Units"=>"pixels"}},
       "ImageSets"=>
        {"ImageSet"=>
          {"SwatchImage"=>
            {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL30_.jpg",
             "Height"=>{"__content__"=>"30", "Units"=>"pixels"},
             "Width"=>{"__content__"=>"30", "Units"=>"pixels"}},
           "SmallImage"=>
            {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL75_.jpg",
             "Height"=>{"__content__"=>"75", "Units"=>"pixels"},
             "Width"=>{"__content__"=>"75", "Units"=>"pixels"}},
           "ThumbnailImage"=>
            {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL75_.jpg",
             "Height"=>{"__content__"=>"75", "Units"=>"pixels"},
             "Width"=>{"__content__"=>"75", "Units"=>"pixels"}},
           "TinyImage"=>
            {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL110_.jpg",
             "Height"=>{"__content__"=>"110", "Units"=>"pixels"},
             "Width"=>{"__content__"=>"110", "Units"=>"pixels"}},
           "MediumImage"=>
            {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL._SL160_.jpg",
             "Height"=>{"__content__"=>"160", "Units"=>"pixels"},
             "Width"=>{"__content__"=>"160", "Units"=>"pixels"}},
           "LargeImage"=>
            {"URL"=>"http://ecx.images-amazon.com/images/I/31hqkd-zohL.jpg",
             "Height"=>{"__content__"=>"500", "Units"=>"pixels"},
             "Width"=>{"__content__"=>"500", "Units"=>"pixels"}},
           "HiResImage"=>
            {"URL"=>"http://ecx.images-amazon.com/images/I/71ZeN773YwL.jpg",
             "Height"=>{"__content__"=>"2560", "Units"=>"pixels"},
             "Width"=>{"__content__"=>"2560", "Units"=>"pixels"}},
           "Category"=>"primary"}},
       "ItemAttributes"=>
        {"Binding"=>"Accessory",
         "Brand"=>"Portta",
         "CatalogNumberList"=>{"CatalogNumberListElement"=>"2407770011"},
         "Color"=>"Black",
         "EAN"=>"5060186819051",
         "EANList"=>{"EANListElement"=>"5060186819051"},
         "Feature"=>["Hassle Free Easy to open Packaging (sealed poly bag)", "Exclusively Sold By World of Data® & Distributed By Amazon"],
         "ItemDimensions"=>
          {"Height"=>{"__content__"=>"59", "Units"=>"hundredths-inches"},
           "Length"=>{"__content__"=>"323", "Units"=>"hundredths-inches"},
           "Weight"=>{"__content__"=>"20", "Units"=>"hundredths-pounds"},
           "Width"=>{"__content__"=>"240", "Units"=>"hundredths-inches"}},
         "Label"=>"Protech Electronics & Technology Limited",
         "ListPrice"=>{"Amount"=>"1050", "CurrencyCode"=>"GBP", "FormattedPrice"=>"£10.50"},
         "Manufacturer"=>"Protech Electronics & Technology Limited",
         "Model"=>"4PET0301DP",
         "MPN"=>"4PET0301DP",
         "NumberOfItems"=>"1",
         "PackageDimensions"=>
          {"Height"=>{"__content__"=>"213", "Units"=>"hundredths-inches"},
           "Length"=>{"__content__"=>"953", "Units"=>"hundredths-inches"},
           "Weight"=>{"__content__"=>"40", "Units"=>"hundredths-pounds"},
           "Width"=>{"__content__"=>"575", "Units"=>"hundredths-inches"}},
         "PackageQuantity"=>"1",
         "PartNumber"=>"4PET0301DP",
         "ProductGroup"=>"CE",
         "ProductTypeName"=>"CABLE_OR_ADAPTER",
         "Publisher"=>"Protech Electronics & Technology Limited",
         "ReleaseDate"=>"2014-05-15",
         "Size"=>"3 Port",
         "SKU"=>"HD-SWCAB3",
         "Studio"=>"Protech Electronics & Technology Limited",
         "Title"=>"Portta Version 1.4 HDMI 3 Port 3x1 Switch Switcher with Pigtail Full 1080p 3D and 4Kx2K compatible 1.3"},
       "OfferSummary"=>
        {"LowestNewPrice"=>{"Amount"=>"31", "CurrencyCode"=>"GBP", "FormattedPrice"=>"£0.31"},
         "TotalNew"=>"28",
         "TotalUsed"=>"0",
         "TotalCollectible"=>"0",
         "TotalRefurbished"=>"0"}}}}}
  end

end