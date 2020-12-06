# This is an autogenerated file for dynamic methods in Task
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Task::ActiveRecord_Relation < ActiveRecord::Relation
  include Task::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Task)
end

class Task::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Task::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Task)
end

class Task < ActiveRecord::Base
  extend T::Sig
  extend T::Generic
  extend Task::ModelRelationShared
  include Task::InstanceMethods
  Elem = type_template(fixed: Task)
end

module Task::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(Integer)) }
  def case_note_domain_group_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def case_note_domain_group_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def case_note_domain_group_id?(*args); end

  sig { returns(T.nilable(String)) }
  def case_note_id(); end

  sig { params(value: T.nilable(String)).void }
  def case_note_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def case_note_id?(*args); end

  sig { returns(T.nilable(Integer)) }
  def client_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def client_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def client_id?(*args); end

  sig { returns(T.nilable(T::Boolean)) }
  def completed(); end

  sig { params(value: T.nilable(T::Boolean)).void }
  def completed=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def completed?(*args); end

  sig { returns(T.nilable(Date)) }
  def completion_date(); end

  sig { params(value: T.nilable(Date)).void }
  def completion_date=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def completion_date?(*args); end

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

  sig { returns(T.nilable(Integer)) }
  def domain_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def domain_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def domain_id?(*args); end

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

  sig { returns(T.nilable(String)) }
  def relation(); end

  sig { params(value: T.nilable(String)).void }
  def relation=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def relation?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def remind_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def remind_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def remind_at?(*args); end

  sig { returns(T.nilable(Integer)) }
  def taskable_id(); end

  sig { params(value: T.nilable(Integer)).void }
  def taskable_id=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def taskable_id?(*args); end

  sig { returns(T.nilable(String)) }
  def taskable_type(); end

  sig { params(value: T.nilable(String)).void }
  def taskable_type=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def taskable_type?(*args); end

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

end

class Task
  extend T::Sig

  sig { returns(T.nilable(::CaseNoteDomainGroup)) }
  def case_note_domain_group(); end

  sig { params(value: T.nilable(::CaseNoteDomainGroup)).void }
  def case_note_domain_group=(value); end

  sig { returns(T.nilable(::Client)) }
  def client(); end

  sig { params(value: T.nilable(::Client)).void }
  def client=(value); end

  sig { returns(T.nilable(::Domain)) }
  def domain(); end

  sig { params(value: T.nilable(::Domain)).void }
  def domain=(value); end

  sig { returns(T.nilable(T.untyped)) }
  def taskable(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def taskable=(value); end

  sig { returns(T.nilable(::User)) }
  def user(); end

  sig { params(value: T.nilable(::User)).void }
  def user=(value); end

  sig { returns(::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy) }
  def versions(); end

  sig { params(value: T.any(T::Array[::PaperTrail::Version], ::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy)).void }
  def versions=(value); end

end

module Task::ModelRelationShared
  extend T::Sig

  sig { returns(Task::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def by_assessment(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def by_case_note(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def by_domain_id(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def completed(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def deleted_after_time(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def deleted_before_time(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def deleted_inside_time_window(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def exclude_exited_ngo_clients(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def incomplete(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def overdue(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def overdue_incomplete(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def overdue_incomplete_ordered(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def the_latest(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def today(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def today_incomplete(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def upcoming(*args); end

  sig { params(args: T.untyped).returns(Task::ActiveRecord_Relation) }
  def upcoming_within_three_months(*args); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Task::ActiveRecord_Relation) }
  def except(*args, &block); end

end