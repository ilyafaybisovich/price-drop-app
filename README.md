[![Build Status](https://travis-ci.org/DanBlakeman/price-drop-app.svg)](https://travis-ci.org/DanBlakeman/price-drop-app)
[![Coverage Status](https://coveralls.io/repos/DanBlakeman/price-drop-app/badge.svg)](https://coveralls.io/r/DanBlakeman/price-drop-app)

Creating an app to give alerts on amazon price drops!
-----

User Stories:
-----

As a voyeuristic consumer
So that i can see products
I want to see products listed on the homepage

As a price motivated user
So that i can get a great deal
I'd like to paste an amazon url and give my budget

As a price motivated user
So that i can get a great deal
I want to see when i next visit if a product is within my budget

As a fickle user
So that i can get a buzz
I want the app to look and behave gorgeously

MVps:
-----

  - Can add amazon link to list with a budget

  - Can access current price

  - Can identify products that are in budget
      - Further Styling


Accessing the Amazon Product Advertising API
-----

We can use the [Vacuum Gem](https://rubygems.org/gems/vacuum/versions/1.2.0) to access the API and supply the various query parameters required. Vacuum Gem [documentation](https://github.com/hakanensari/vacuum).

A simple run through of accessing the data we need would be to
```ruby
request = Vacuum.new('GB')

request.configure(
    aws_access_key_id: 'key_here',
    aws_secret_access_key: 'secret_here',
    associate_tag: 'tag_here'
)

response = request.item_lookup(query: {'Condition'=>'New','IdType'=>'ASIN','ItemId'=>'B0038K6MY2','Operation'=>'ItemLookup','ResponseGroup'=>'ItemAttributes,OfferSummary'})

hashed_response = response.to_h

price = hashed_response['ItemLookupResponse']['Items']['Item']['OfferSummary']['LowestNewPrice']['FormattedPrice']

title =hashed_response['ItemLookupResponse']['Items']['Item']['ItemAttributes']['Title']

```
The following xml is returned, it is possible to run `response.to_h` to retrieve a ruby hash though it is also possible to use an xml parser, this needs to be investigated for best solution.

```xml
<ItemLookupResponse xmlns="http://webservices.amazon.com/AWSECommerceService/2011-08-01">
  <OperationRequest>
    <HTTPHeaders>
      <Header Name="UserAgent" Value="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/42.0.2311.135 Safari/537.36"/>
    </HTTPHeaders>
    <RequestId>6df6c121-31a1-4761-a860-fa1d8196cff7</RequestId>
    <Arguments>
      <Argument Name="AWSAccessKeyId" Value="AKIAIRBKK35SHPHUR23Q"/>
      <Argument Name="AssociateTag" Value="pridro02-20"/>
      <Argument Name="Condition" Value="New"/>
      <Argument Name="IdType" Value="ASIN"/>
      <Argument Name="ItemId" Value="B0038K6MY2"/>
      <Argument Name="Operation" Value="ItemLookup"/>
      <Argument Name="ResponseGroup" Value="ItemAttributes,Offers"/>
      <Argument Name="Service" Value="AWSECommerceService"/>
      <Argument Name="Timestamp" Value="2015-05-11T14:05:02.000Z"/>
      <Argument Name="Version" Value="2011-08-01"/>
      <Argument Name="Signature" Value="FW8+d171SGpudEGmv89uVj7YeASTjaitz0ZM4fF85PY="/>
    </Arguments>
    <RequestProcessingTime>0.0178570000000000</RequestProcessingTime>
  </OperationRequest>
  <Items>
    <Request>
      <IsValid>True</IsValid>
      <ItemLookupRequest>
        <Condition>New</Condition>
        <IdType>ASIN</IdType>
        <ItemId>B0038K6MY2</ItemId>
        <ResponseGroup>ItemAttributes</ResponseGroup>
        <ResponseGroup>Offers</ResponseGroup>
        <VariationPage>All</VariationPage>
      </ItemLookupRequest>
    </Request>
    <Item>
      <ASIN>B0038K6MY2</ASIN>
      <ParentASIN>B00LHS270U</ParentASIN>
      <DetailPageURL>
      http://www.amazon.co.uk/Portta-Version-Switcher-Pigtail-compatible-Black/dp/B0038K6MY2%3Fpsc%3D1%26SubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D165953%26creativeASIN%3DB0038K6MY2
      </DetailPageURL>
      <ItemLinks>
        <ItemLink>
          <Description>Add To Wishlist</Description>
          <URL>
          http://www.amazon.co.uk/gp/registry/wishlist/add-item.html%3Fasin.0%3DB0038K6MY2%26SubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2
          </URL>
        </ItemLink>
        <ItemLink>
          <Description>Tell A Friend</Description>
          <URL>
          http://www.amazon.co.uk/gp/pdp/taf/B0038K6MY2%3FSubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2
          </URL>
        </ItemLink>
        <ItemLink>
          <Description>All Customer Reviews</Description>
          <URL>
          http://www.amazon.co.uk/review/product/B0038K6MY2%3FSubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2
          </URL>
        </ItemLink>
        <ItemLink>
          <Description>All Offers</Description>
          <URL>
          http://www.amazon.co.uk/gp/offer-listing/B0038K6MY2%3FSubscriptionId%3DAKIAIRBKK35SHPHUR23Q%26tag%3Dpridro02-20%26linkCode%3Dxm2%26camp%3D2025%26creative%3D12734%26creativeASIN%3DB0038K6MY2
          </URL>
        </ItemLink>
      </ItemLinks>
      <ItemAttributes>
        <Binding>Accessory</Binding>
        <Brand>Portta</Brand>
        <CatalogNumberList>
        <CatalogNumberListElement>2407770011</CatalogNumberListElement>
        </CatalogNumberList>
        <Color>Black</Color>
        <EAN>5060186819051</EAN>
        <EANList>
          <EANListElement>5060186819051</EANListElement>
        </EANList>
        <Feature>
        Hassle Free Easy to open Packaging (sealed poly bag)
        </Feature>
        <Feature>
        Exclusively Sold By World of Data® & Distributed By Amazon
        </Feature>
        <ItemDimensions>
          <Height Units="hundredths-inches">59</Height>
          <Length Units="hundredths-inches">323</Length>
          <Weight Units="hundredths-pounds">20</Weight>
          <Width Units="hundredths-inches">240</Width>
        </ItemDimensions>
        <Label>Protech Electronics & Technology Limited</Label>
        <ListPrice>
          <Amount>1050</Amount>
          <CurrencyCode>GBP</CurrencyCode>
          <FormattedPrice>£10.50</FormattedPrice>
        </ListPrice>
        <Manufacturer>Protech Electronics & Technology Limited</Manufacturer>
        <Model>4PET0301DP</Model>
        <MPN>4PET0301DP</MPN>
        <NumberOfItems>1</NumberOfItems>
        <PackageDimensions>
          <Height Units="hundredths-inches">213</Height>
          <Length Units="hundredths-inches">953</Length>
          <Weight Units="hundredths-pounds">40</Weight>
          <Width Units="hundredths-inches">575</Width>
        </PackageDimensions>
        <PackageQuantity>1</PackageQuantity>
        <PartNumber>4PET0301DP</PartNumber>
        <ProductGroup>CE</ProductGroup>
        <ProductTypeName>CABLE_OR_ADAPTER</ProductTypeName>
        <Publisher>Protech Electronics & Technology Limited</Publisher>
        <ReleaseDate>2014-05-15</ReleaseDate>
        <Size>3 Port</Size>
        <SKU>HD-SWCAB3</SKU>
        <Studio>Protech Electronics & Technology Limited</Studio>
        <Title>
        Portta Version 1.4 HDMI 3 Port 3x1 Switch Switcher with Pigtail Full 1080p 3D and 4Kx2K compatible 1.3
        </Title>
      </ItemAttributes>
      <OfferSummary>
        <LowestNewPrice>
          <Amount>31</Amount>
          <CurrencyCode>GBP</CurrencyCode>
          <FormattedPrice>£0.31</FormattedPrice>
        </LowestNewPrice>
        <TotalNew>28</TotalNew>
        <TotalUsed>0</TotalUsed>
        <TotalCollectible>0</TotalCollectible>
        <TotalRefurbished>0</TotalRefurbished>
      </OfferSummary>
    </Item>
  </Items>
</ItemLookupResponse>
```
