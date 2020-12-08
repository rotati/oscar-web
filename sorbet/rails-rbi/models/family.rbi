# This is an autogenerated file for dynamic methods in Family
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Family::ActiveRecord_Relation < ActiveRecord::Relation
  include Family::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Family)
end

class Family::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Family::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Family)
end

class Family < ActiveRecord::Base
  extend T::Sig
  extend T::Generic
  extend Family::ModelRelationShared
  include Family::InstanceMethods
  Elem = type_template(fixed: Family)
end

module Family::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(String)) }
  def address(); end

  sig { params(value: T.nilable(String)).void }
  def address=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def address?(*args); end

  sig { returns(T.nilable(String)) }
  def caregiver_information(); end

  sig { params(value: T.nilable(String)).void }
  def caregiver_information=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def caregiver_information?(*args); end

  sig { returns(T.nilable(String)) }
  def case_history(); end

  sig { params(value: T.nilable(String)).void }
  def case_history=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def case_history?(*args); end

  sig { returns(T.nilable(Integer)) }
  def cases_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def cases_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def cases_count?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def children(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def children=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def children?(*args); end

  sig { returns(T.nilable(String)) }
  def code(); end

  sig { params(value: T.nilable(String)).void }
  def code=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def code?(*args); end

  sig { returns(T.nilable(Integer)) }
  def commune_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def commune_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def commune_id?(*args); end

  sig { returns(T.nilable(Date)) }
  def contract_date(); end

  sig { params(value: T.nilable(Date)).void }
  def contract_date=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def contract_date?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def created_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def deleted_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def deleted_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def deleted_at?(*args); end

  sig { returns(T.nilable(T::Boolean)) }
  def dependable_income(); end

  sig { params(value: T.nilable(T::Boolean)).void }
  def dependable_income=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def dependable_income?(*args); end

  sig { returns(T.nilable(Integer)) }
  def district_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def district_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def district_id?(*args); end

  sig { returns(T.nilable(String)) }
  def family_type(); end

  sig { params(value: T.nilable(String)).void }
  def family_type=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def family_type?(*args); end

  sig { returns(T.nilable(Integer)) }
  def female_adult_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def female_adult_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def female_adult_count?(*args); end

  sig { returns(T.nilable(Integer)) }
  def female_children_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def female_children_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def female_children_count?(*args); end

  sig { returns(T.nilable(String)) }
  def house(); end

  sig { params(value: T.nilable(String)).void }
  def house=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def house?(*args); end

  sig { returns(T.nilable(Float)) }
  def household_income(); end

  sig { params(value: T.nilable(Float)).void }
  def household_income=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def household_income?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(Integer)) }
  def male_adult_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def male_adult_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def male_adult_count?(*args); end

  sig { returns(T.nilable(Integer)) }
  def male_children_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def male_children_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def male_children_count?(*args); end

  sig { returns(T.nilable(String)) }
  def name(); end

  sig { params(value: T.nilable(String)).void }
  def name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def name?(*args); end

  sig { returns(T.nilable(String)) }
  def old_commune(); end

  sig { params(value: T.nilable(String)).void }
  def old_commune=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def old_commune?(*args); end

  sig { returns(T.nilable(String)) }
  def old_village(); end

  sig { params(value: T.nilable(String)).void }
  def old_village=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def old_village?(*args); end

  sig { returns(T.nilable(Integer)) }
  def province_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def province_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def province_id?(*args); end

  sig { returns(T.nilable(Integer)) }
  def significant_family_member_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def significant_family_member_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def significant_family_member_count?(*args); end

  sig { returns(T.nilable(String)) }
  def status(); end

  sig { params(value: T.nilable(String)).void }
  def status=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def status?(*args); end

  sig { returns(T.nilable(String)) }
  def street(); end

  sig { params(value: T.nilable(String)).void }
  def street=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def street?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def updated_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

  sig { returns(T.nilable(Integer)) }
  def user_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def user_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def user_id?(*args); end

  sig { returns(T.nilable(Integer)) }
  def village_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def village_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def village_id?(*args); end

end

class Family
  extend T::Sig

  sig { returns(::Case::ActiveRecord_Associations_CollectionProxy) }
  def cases(); end

  sig { params(value: T.any(T::Array[::Case], ::Case::ActiveRecord_Associations_CollectionProxy)).void }
  def cases=(value); end

  sig { returns(::Client::ActiveRecord_Associations_CollectionProxy) }
  def clients(); end

  sig { params(value: T.any(T::Array[::Client], ::Client::ActiveRecord_Associations_CollectionProxy)).void }
  def clients=(value); end

  sig { returns(T.nilable(::Commune)) }
  def commune(); end

  sig { params(value: T.nilable(::Commune)).void }
  def commune=(value); end

  sig { returns(::CustomFieldProperty::ActiveRecord_Associations_CollectionProxy) }
  def custom_field_properties(); end

  sig { params(value: T.any(T::Array[::CustomFieldProperty], ::CustomFieldProperty::ActiveRecord_Associations_CollectionProxy)).void }
  def custom_field_properties=(value); end

  sig { returns(::CustomField::ActiveRecord_Associations_CollectionProxy) }
  def custom_fields(); end

  sig { params(value: T.any(T::Array[::CustomField], ::CustomField::ActiveRecord_Associations_CollectionProxy)).void }
  def custom_fields=(value); end

  sig { returns(T.nilable(::District)) }
  def district(); end

  sig { params(value: T.nilable(::District)).void }
  def district=(value); end

  sig { returns(::FamilyMember::ActiveRecord_Associations_CollectionProxy) }
  def family_members(); end

  sig { params(value: T.any(T::Array[::FamilyMember], ::FamilyMember::ActiveRecord_Associations_CollectionProxy)).void }
  def family_members=(value); end

  sig { returns(T.nilable(::Province)) }
  def province(); end

  sig { params(value: T.nilable(::Province)).void }
  def province=(value); end

  sig { returns(T.nilable(::User)) }
  def user(); end

  sig { params(value: T.nilable(::User)).void }
  def user=(value); end

  sig { returns(::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy) }
  def versions(); end

  sig { params(value: T.any(T::Array[::PaperTrail::Version], ::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy)).void }
  def versions=(value); end

  sig { returns(T.nilable(::Village)) }
  def village(); end

  sig { params(value: T.nilable(::Village)).void }
  def village=(value); end

end

module Family::ModelRelationShared
  extend T::Sig

  sig { returns(Family::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def active(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def address_like(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def as_non_cases(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def birth_family_both_parents(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def birth_family_only_father(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def birth_family_only_mother(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def by_family_type(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def by_status(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def caregiver_information_like(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def case_history_like(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def child_headed_household(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def deleted_after_time(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def deleted_before_time(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def deleted_inside_time_window(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def domestically_adopted(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def emergency(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def family_id_like(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def foster(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def house_like(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def inactive(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def kinship(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def name_like(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def no_family(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def other(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def province_are(*args); end

  sig { params(args: T.untyped).returns(Family::ActiveRecord_Relation) }
  def street_like(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Family::ActiveRecord_Relation) }
  def except(*args, &block); end

end
