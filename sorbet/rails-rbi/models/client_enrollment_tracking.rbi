# This is an autogenerated file for dynamic methods in ClientEnrollmentTracking
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class ClientEnrollmentTracking::ActiveRecord_Relation < ActiveRecord::Relation
  include ClientEnrollmentTracking::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: ClientEnrollmentTracking)
end

class ClientEnrollmentTracking::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include ClientEnrollmentTracking::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: ClientEnrollmentTracking)
end

class ClientEnrollmentTracking < ActiveRecord::Base
  extend T::Sig
  extend T::Generic
  extend ClientEnrollmentTracking::ModelRelationShared
  include ClientEnrollmentTracking::InstanceMethods
  Elem = type_template(fixed: ClientEnrollmentTracking)
end

module ClientEnrollmentTracking::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(Integer)) }
  def client_enrollment_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def client_enrollment_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def client_enrollment_id?(*args); end

  sig { returns(T.untyped) }
  def created_at(); end

  sig { params(value: T.untyped).void }
  def created_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def created_at?(*args); end

  sig { returns(Integer) }
  def id(); end

  sig { params(value: Integer).void }
  def id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def id?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def properties(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def properties=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def properties?(*args); end

  sig { returns(T.nilable(Integer)) }
  def tracking_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def tracking_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def tracking_id?(*args); end

  sig { returns(T.untyped) }
  def updated_at(); end

  sig { params(value: T.untyped).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

end

class ClientEnrollmentTracking
  extend T::Sig

  sig { returns(T.nilable(::ClientEnrollment)) }
  def client_enrollment(); end

  sig { params(value: T.nilable(::ClientEnrollment)).void }
  def client_enrollment=(value); end

  sig { returns(::FormBuilderAttachment::ActiveRecord_Associations_CollectionProxy) }
  def form_builder_attachments(); end

  sig { params(value: T.any(T::Array[::FormBuilderAttachment], ::FormBuilderAttachment::ActiveRecord_Associations_CollectionProxy)).void }
  def form_builder_attachments=(value); end

  sig { returns(T.nilable(::Tracking)) }
  def tracking(); end

  sig { params(value: T.nilable(::Tracking)).void }
  def tracking=(value); end

  sig { returns(::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy) }
  def versions(); end

  sig { params(value: T.any(T::Array[::PaperTrail::Version], ::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy)).void }
  def versions=(value); end

end

module ClientEnrollmentTracking::ModelRelationShared
  extend T::Sig

  sig { returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def enrollment_trackings_by(*args); end

  sig { params(args: T.untyped).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def ordered(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(ClientEnrollmentTracking::ActiveRecord_Relation) }
  def except(*args, &block); end

end