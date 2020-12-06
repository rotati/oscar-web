# This is an autogenerated file for dynamic methods in SharedClient
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class SharedClient::ActiveRecord_Relation < ActiveRecord::Relation
  include SharedClient::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: SharedClient)
end

class SharedClient::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include SharedClient::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: SharedClient)
end

class SharedClient < ActiveRecord::Base
  extend T::Sig
  extend T::Generic
  extend SharedClient::ModelRelationShared
  include SharedClient::InstanceMethods
  Elem = type_template(fixed: SharedClient)
end

module SharedClient::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(String)) }
  def archived_slug(); end

  sig { params(value: T.nilable(String)).void }
  def archived_slug=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def archived_slug?(*args); end

  sig { returns(T.nilable(Integer)) }
  def birth_province_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def birth_province_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def birth_province_id?(*args); end

  sig { returns(T.nilable(String)) }
  def country_origin(); end

  sig { params(value: T.nilable(String)).void }
  def country_origin=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def country_origin?(*args); end

  sig { returns(T.untyped) }
  def created_at(); end

  sig { params(value: T.untyped).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(T.nilable(Date)) }
  def date_of_birth(); end

  sig { params(value: T.nilable(Date)).void }
  def date_of_birth=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def date_of_birth?(*args); end

  sig { returns(T.nilable(String)) }
  def duplicate_checker(); end

  sig { params(value: T.nilable(String)).void }
  def duplicate_checker=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def duplicate_checker?(*args); end

  sig { returns(T.nilable(String)) }
  def external_case_worker_id(); end

  sig { params(value: T.nilable(String)).void }
  def external_case_worker_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def external_case_worker_id?(*args); end

  sig { returns(T.nilable(String)) }
  def external_case_worker_name(); end

  sig { params(value: T.nilable(String)).void }
  def external_case_worker_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def external_case_worker_name?(*args); end

  sig { returns(T.nilable(String)) }
  def external_id(); end

  sig { params(value: T.nilable(String)).void }
  def external_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def external_id?(*args); end

  sig { returns(T.nilable(String)) }
  def external_id_display(); end

  sig { params(value: T.nilable(String)).void }
  def external_id_display=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def external_id_display?(*args); end

  sig { returns(T.nilable(String)) }
  def family_name(); end

  sig { params(value: T.nilable(String)).void }
  def family_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def family_name?(*args); end

  sig { returns(T.nilable(String)) }
  def gender(); end

  sig { params(value: T.nilable(String)).void }
  def gender=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def gender?(*args); end

  sig { returns(T.nilable(String)) }
  def given_name(); end

  sig { params(value: T.nilable(String)).void }
  def given_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def given_name?(*args); end

  sig { returns(T.nilable(String)) }
  def global_id(); end

  sig { params(value: T.nilable(String)).void }
  def global_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def global_id?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(String)) }
  def live_with(); end

  sig { params(value: T.nilable(String)).void }
  def live_with=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def live_with?(*args); end

  sig { returns(T.nilable(String)) }
  def local_family_name(); end

  sig { params(value: T.nilable(String)).void }
  def local_family_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def local_family_name?(*args); end

  sig { returns(T.nilable(String)) }
  def local_given_name(); end

  sig { params(value: T.nilable(String)).void }
  def local_given_name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def local_given_name?(*args); end

  sig { returns(T.nilable(String)) }
  def mosvy_number(); end

  sig { params(value: T.nilable(String)).void }
  def mosvy_number=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def mosvy_number?(*args); end

  sig { returns(T.nilable(String)) }
  def slug(); end

  sig { params(value: T.nilable(String)).void }
  def slug=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def slug?(*args); end

  sig { returns(T.nilable(String)) }
  def telephone_number(); end

  sig { params(value: T.nilable(String)).void }
  def telephone_number=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def telephone_number?(*args); end

  sig { returns(T.untyped) }
  def updated_at(); end

  sig { params(value: T.untyped).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

end

class SharedClient
  extend T::Sig

  sig { returns(T.nilable(::Province)) }
  def birth_province(); end

  sig { params(value: T.nilable(::Province)).void }
  def birth_province=(value); end

  sig { returns(::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy) }
  def versions(); end

  sig { params(value: T.any(T::Array[::PaperTrail::Version], ::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy)).void }
  def versions=(value); end

end

module SharedClient::ModelRelationShared
  extend T::Sig

  sig { returns(SharedClient::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(SharedClient::ActiveRecord_Relation) }
  def except(*args, &block); end

end