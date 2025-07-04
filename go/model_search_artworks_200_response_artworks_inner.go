/*
Art Search API

Art Search let's you search and discover over one million pieces of historic art.

API version: 1.0.0
Contact: mail@artsearch.io
*/

// Code generated by OpenAPI Generator (https://openapi-generator.tech); DO NOT EDIT.

package artsearch

import (
	"encoding/json"
)

// checks if the SearchArtworks200ResponseArtworksInner type satisfies the MappedNullable interface at compile time
var _ MappedNullable = &SearchArtworks200ResponseArtworksInner{}

// SearchArtworks200ResponseArtworksInner struct for SearchArtworks200ResponseArtworksInner
type SearchArtworks200ResponseArtworksInner struct {
	Title NullableString `json:"title,omitempty"`
	Image NullableString `json:"image,omitempty"`
	Id *int32 `json:"id,omitempty"`
}

// NewSearchArtworks200ResponseArtworksInner instantiates a new SearchArtworks200ResponseArtworksInner object
// This constructor will assign default values to properties that have it defined,
// and makes sure properties required by API are set, but the set of arguments
// will change when the set of required properties is changed
func NewSearchArtworks200ResponseArtworksInner() *SearchArtworks200ResponseArtworksInner {
	this := SearchArtworks200ResponseArtworksInner{}
	return &this
}

// NewSearchArtworks200ResponseArtworksInnerWithDefaults instantiates a new SearchArtworks200ResponseArtworksInner object
// This constructor will only assign default values to properties that have it defined,
// but it doesn't guarantee that properties required by API are set
func NewSearchArtworks200ResponseArtworksInnerWithDefaults() *SearchArtworks200ResponseArtworksInner {
	this := SearchArtworks200ResponseArtworksInner{}
	return &this
}

// GetTitle returns the Title field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchArtworks200ResponseArtworksInner) GetTitle() string {
	if o == nil || IsNil(o.Title.Get()) {
		var ret string
		return ret
	}
	return *o.Title.Get()
}

// GetTitleOk returns a tuple with the Title field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchArtworks200ResponseArtworksInner) GetTitleOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Title.Get(), o.Title.IsSet()
}

// HasTitle returns a boolean if a field has been set.
func (o *SearchArtworks200ResponseArtworksInner) HasTitle() bool {
	if o != nil && o.Title.IsSet() {
		return true
	}

	return false
}

// SetTitle gets a reference to the given NullableString and assigns it to the Title field.
func (o *SearchArtworks200ResponseArtworksInner) SetTitle(v string) {
	o.Title.Set(&v)
}
// SetTitleNil sets the value for Title to be an explicit nil
func (o *SearchArtworks200ResponseArtworksInner) SetTitleNil() {
	o.Title.Set(nil)
}

// UnsetTitle ensures that no value is present for Title, not even an explicit nil
func (o *SearchArtworks200ResponseArtworksInner) UnsetTitle() {
	o.Title.Unset()
}

// GetImage returns the Image field value if set, zero value otherwise (both if not set or set to explicit null).
func (o *SearchArtworks200ResponseArtworksInner) GetImage() string {
	if o == nil || IsNil(o.Image.Get()) {
		var ret string
		return ret
	}
	return *o.Image.Get()
}

// GetImageOk returns a tuple with the Image field value if set, nil otherwise
// and a boolean to check if the value has been set.
// NOTE: If the value is an explicit nil, `nil, true` will be returned
func (o *SearchArtworks200ResponseArtworksInner) GetImageOk() (*string, bool) {
	if o == nil {
		return nil, false
	}
	return o.Image.Get(), o.Image.IsSet()
}

// HasImage returns a boolean if a field has been set.
func (o *SearchArtworks200ResponseArtworksInner) HasImage() bool {
	if o != nil && o.Image.IsSet() {
		return true
	}

	return false
}

// SetImage gets a reference to the given NullableString and assigns it to the Image field.
func (o *SearchArtworks200ResponseArtworksInner) SetImage(v string) {
	o.Image.Set(&v)
}
// SetImageNil sets the value for Image to be an explicit nil
func (o *SearchArtworks200ResponseArtworksInner) SetImageNil() {
	o.Image.Set(nil)
}

// UnsetImage ensures that no value is present for Image, not even an explicit nil
func (o *SearchArtworks200ResponseArtworksInner) UnsetImage() {
	o.Image.Unset()
}

// GetId returns the Id field value if set, zero value otherwise.
func (o *SearchArtworks200ResponseArtworksInner) GetId() int32 {
	if o == nil || IsNil(o.Id) {
		var ret int32
		return ret
	}
	return *o.Id
}

// GetIdOk returns a tuple with the Id field value if set, nil otherwise
// and a boolean to check if the value has been set.
func (o *SearchArtworks200ResponseArtworksInner) GetIdOk() (*int32, bool) {
	if o == nil || IsNil(o.Id) {
		return nil, false
	}
	return o.Id, true
}

// HasId returns a boolean if a field has been set.
func (o *SearchArtworks200ResponseArtworksInner) HasId() bool {
	if o != nil && !IsNil(o.Id) {
		return true
	}

	return false
}

// SetId gets a reference to the given int32 and assigns it to the Id field.
func (o *SearchArtworks200ResponseArtworksInner) SetId(v int32) {
	o.Id = &v
}

func (o SearchArtworks200ResponseArtworksInner) MarshalJSON() ([]byte, error) {
	toSerialize,err := o.ToMap()
	if err != nil {
		return []byte{}, err
	}
	return json.Marshal(toSerialize)
}

func (o SearchArtworks200ResponseArtworksInner) ToMap() (map[string]interface{}, error) {
	toSerialize := map[string]interface{}{}
	if o.Title.IsSet() {
		toSerialize["title"] = o.Title.Get()
	}
	if o.Image.IsSet() {
		toSerialize["image"] = o.Image.Get()
	}
	if !IsNil(o.Id) {
		toSerialize["id"] = o.Id
	}
	return toSerialize, nil
}

type NullableSearchArtworks200ResponseArtworksInner struct {
	value *SearchArtworks200ResponseArtworksInner
	isSet bool
}

func (v NullableSearchArtworks200ResponseArtworksInner) Get() *SearchArtworks200ResponseArtworksInner {
	return v.value
}

func (v *NullableSearchArtworks200ResponseArtworksInner) Set(val *SearchArtworks200ResponseArtworksInner) {
	v.value = val
	v.isSet = true
}

func (v NullableSearchArtworks200ResponseArtworksInner) IsSet() bool {
	return v.isSet
}

func (v *NullableSearchArtworks200ResponseArtworksInner) Unset() {
	v.value = nil
	v.isSet = false
}

func NewNullableSearchArtworks200ResponseArtworksInner(val *SearchArtworks200ResponseArtworksInner) *NullableSearchArtworks200ResponseArtworksInner {
	return &NullableSearchArtworks200ResponseArtworksInner{value: val, isSet: true}
}

func (v NullableSearchArtworks200ResponseArtworksInner) MarshalJSON() ([]byte, error) {
	return json.Marshal(v.value)
}

func (v *NullableSearchArtworks200ResponseArtworksInner) UnmarshalJSON(src []byte) error {
	v.isSet = true
	return json.Unmarshal(src, &v.value)
}


