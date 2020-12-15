# This is an autogenerated file for dynamic methods in Province
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Province::ActiveRecord_Relation < ActiveRecord::Relation
  include Province::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Province)
end

class Province::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Province::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Province)
end

class Province < ActiveRecord::Base
  extend T::Sig
  extend T::Generic
  extend Province::ModelRelationShared
  include Province::InstanceMethods
  Elem = type_template(fixed: Province)
end

module Province::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(Integer)) }
  def cases_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def cases_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def cases_count?(*args); end

  sig { returns(T.nilable(Integer)) }
  def clients_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def clients_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def clients_count?(*args); end

  sig { returns(T.nilable(String)) }
  def country(); end

  sig { params(value: T.nilable(String)).void }
  def country=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def country?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def created_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(T.nilable(String)) }
  def description(); end

  sig { params(value: T.nilable(String)).void }
  def description=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def description?(*args); end

  sig { returns(T.nilable(Integer)) }
  def families_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def families_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def families_count?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(String)) }
  def name(); end

  sig { params(value: T.nilable(String)).void }
  def name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def name?(*args); end

  sig { returns(T.nilable(Integer)) }
  def partners_count(); end

  sig { params(value: T.nilable(Integer)).void }
  def partners_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def partners_count?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def updated_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

  sig { returns(Integer) }
  def users_count(); end

  sig { params(value: Integer).void }
  def users_count=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def users_count?(*args); end

end

class Province
  extend T::Sig

  sig { returns(::Case::ActiveRecord_Associations_CollectionProxy) }
  def cases(); end

  sig { params(value: T.any(T::Array[::Case], ::Case::ActiveRecord_Associations_CollectionProxy)).void }
  def cases=(value); end

  sig { returns(::Client::ActiveRecord_Associations_CollectionProxy) }
  def clients(); end

  sig { params(value: T.any(T::Array[::Client], ::Client::ActiveRecord_Associations_CollectionProxy)).void }
  def clients=(value); end

  sig { returns(::District::ActiveRecord_Associations_CollectionProxy) }
  def districts(); end

  sig { params(value: T.any(T::Array[::District], ::District::ActiveRecord_Associations_CollectionProxy)).void }
  def districts=(value); end

  sig { returns(::Family::ActiveRecord_Associations_CollectionProxy) }
  def families(); end

  sig { params(value: T.any(T::Array[::Family], ::Family::ActiveRecord_Associations_CollectionProxy)).void }
  def families=(value); end

  sig { returns(::GovernmentForm::ActiveRecord_Associations_CollectionProxy) }
  def government_forms(); end

  sig { params(value: T.any(T::Array[::GovernmentForm], ::GovernmentForm::ActiveRecord_Associations_CollectionProxy)).void }
  def government_forms=(value); end

  sig { returns(::Partner::ActiveRecord_Associations_CollectionProxy) }
  def partners(); end

  sig { params(value: T.any(T::Array[::Partner], ::Partner::ActiveRecord_Associations_CollectionProxy)).void }
  def partners=(value); end

  sig { returns(::Setting::ActiveRecord_Associations_CollectionProxy) }
  def settings(); end

  sig { params(value: T.any(T::Array[::Setting], ::Setting::ActiveRecord_Associations_CollectionProxy)).void }
  def settings=(value); end

  sig { returns(::User::ActiveRecord_Associations_CollectionProxy) }
  def users(); end

  sig { params(value: T.any(T::Array[::User], ::User::ActiveRecord_Associations_CollectionProxy)).void }
  def users=(value); end

  sig { returns(::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy) }
  def versions(); end

  sig { params(value: T.any(T::Array[::PaperTrail::Version], ::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy)).void }
  def versions=(value); end

end

module Province::ModelRelationShared
  extend T::Sig

  sig { returns(Province::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Province::ActiveRecord_Relation) }
  def birth_places(*args); end

  sig { params(args: T.untyped).returns(Province::ActiveRecord_Relation) }
  def country_is(*args); end

  sig { params(args: T.untyped).returns(Province::ActiveRecord_Relation) }
  def dropdown_list_option(*args); end

  sig { params(args: T.untyped).returns(Province::ActiveRecord_Relation) }
  def has_clients(*args); end

  sig { params(args: T.untyped).returns(Province::ActiveRecord_Relation) }
  def official(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Province::ActiveRecord_Relation) }
  def except(*args, &block); end

end