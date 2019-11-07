import React       from 'react'
import {
  SelectInput,
  DateInput,
  TextInput
}                   from '../Commons/inputs'

export default props => {
  const { data: { client, users, birth_provinces, referral_source, referral_source_category}, translations } = props

  const blank = []
  const userLists = users.map(user => [user.first_name + ' ' + user.last_name, user.id])
  const genderLists = [ ['Female', 'female'], ['Male', 'male'], ['Other', 'other'], ['Unknown', 'unknown'] ]
  const provinces = [ ["Cambodia", [["Burmese", 52]]], ["Thai", [["Hello", 12]]] ]
  const addressType = [['Floor'], ['Building'], ['Office']]

  return (
    <div className="container">
      <legend>Referee Information</legend>
      <div className="row">
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <TextInput required label="Name" />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput required label="Gender" collections={genderLists} />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <TextInput label="Referee ID" />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <TextInput label="Referee Phone Number" />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <TextInput label="Referee Email Address" />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput required label= "Referral Source Catgeory" collections={blank} />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput required label="Referral Source" collections={blank} />
        </div>
      </div>
      <legend>Address</legend>
      <div className="row">
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput required label="Province" collections={provinces} />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput label="District / Khan" collections={blank} />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput label="Commune / Sangkat" collections={blank} />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput label="Village" collections={blank} />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <TextInput label="Street Number" />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <TextInput label="House Number" />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <TextInput label="Address Name" />
        </div>
        <div className=" col-xs-12 col-sm-6 col-md-3">
          <SelectInput label="Address Type" collections={addressType} />
        </div>
      </div>
    </div>
  )
}
