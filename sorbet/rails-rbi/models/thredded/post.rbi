# This is an autogenerated file for dynamic methods in Thredded::Post
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Thredded::Post::ActiveRecord_Relation < ActiveRecord::Relation
  include Thredded::Post::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Thredded::Post)
end

class Thredded::Post::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Thredded::Post::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Thredded::Post)
end

class Thredded::Post < ActiveRecord::Base
  extend T::Sig
  extend T::Generic
  extend Thredded::Post::ModelRelationShared
  include Thredded::Post::InstanceMethods
  Elem = type_template(fixed: Thredded::Post)
end

module Thredded::Post::InstanceMethods
  extend T::Sig

  sig { void }
  def approved!(); end

  sig { returns(T::Boolean) }
  def approved?(); end

  sig { void }
  def blocked!(); end

  sig { returns(T::Boolean) }
  def blocked?(); end

  sig { returns(T.nilable(String)) }
  def content(); end

  sig { params(value: T.nilable(String)).void }
  def content=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def content?(*args); end

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

  sig { returns(T.nilable(String)) }
  def ip(); end

  sig { params(value: T.nilable(String)).void }
  def ip=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def ip?(*args); end

  sig { returns(Integer) }
  def messageboard_id(); end

  sig { params(value: Integer).void }
  def messageboard_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def messageboard_id?(*args); end

  sig { returns(String) }
  def moderation_state(); end

  sig { params(value: T.any(Integer, String, Symbol)).void }
  def moderation_state=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def moderation_state?(*args); end

  sig { void }
  def pending_moderation!(); end

  sig { returns(T::Boolean) }
  def pending_moderation?(); end

  sig { returns(Integer) }
  def postable_id(); end

  sig { params(value: Integer).void }
  def postable_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def postable_id?(*args); end

  sig { returns(T.nilable(String)) }
  def source(); end

  sig { params(value: T.nilable(String)).void }
  def source=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def source?(*args); end

  sig { returns(T.untyped) }
  def updated_at(); end

  sig { params(value: T.untyped).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

  sig { returns(T.nilable(Integer)) }
  def user_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def user_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def user_id?(*args); end

end

class Thredded::Post
  extend T::Sig

  sig { returns(T.nilable(::Thredded::PostModerationRecord)) }
  def last_moderation_record(); end

  sig { params(value: T.nilable(::Thredded::PostModerationRecord)).void }
  def last_moderation_record=(value); end

  sig { returns(::Thredded::Messageboard) }
  def messageboard(); end

  sig { params(value: ::Thredded::Messageboard).void }
  def messageboard=(value); end

  sig { returns(::Thredded::PostModerationRecord::ActiveRecord_Associations_CollectionProxy) }
  def moderation_records(); end

  sig { params(value: T.any(T::Array[::Thredded::PostModerationRecord], ::Thredded::PostModerationRecord::ActiveRecord_Associations_CollectionProxy)).void }
  def moderation_records=(value); end

  sig { returns(::Thredded::PostNotification::ActiveRecord_Associations_CollectionProxy) }
  def post_notifications(); end

  sig { params(value: T.any(T::Array[::Thredded::PostNotification], ::Thredded::PostNotification::ActiveRecord_Associations_CollectionProxy)).void }
  def post_notifications=(value); end

  sig { returns(::Thredded::Topic) }
  def postable(); end

  sig { params(value: ::Thredded::Topic).void }
  def postable=(value); end

  sig { returns(T.nilable(::User)) }
  def user(); end

  sig { params(value: T.nilable(::User)).void }
  def user=(value); end

  sig { returns(T.nilable(::Thredded::UserDetail)) }
  def user_detail(); end

  sig { params(value: T.nilable(::Thredded::UserDetail)).void }
  def user_detail=(value); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def self.approved(*args); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def self.blocked(*args); end

  sig { returns(T::Hash[T.any(String, Symbol), Integer]) }
  def self.moderation_states(); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def self.pending_moderation(*args); end

end

module Thredded::Post::ModelRelationShared
  extend T::Sig

  sig { returns(Thredded::Post::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def approved(*args); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def blocked(*args); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def moderation_state_visible_to_all(*args); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def moderation_state_visible_to_user(*args); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def order_newest_first(*args); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def order_oldest_first(*args); end

  sig { params(args: T.untyped).returns(Thredded::Post::ActiveRecord_Relation) }
  def pending_moderation(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Thredded::Post::ActiveRecord_Relation) }
  def except(*args, &block); end

end
