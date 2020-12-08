# This is an autogenerated file for dynamic methods in Problem
# Please rerun rake rails_rbi:models to regenerate.
# typed: strong

class Problem::ActiveRecord_Relation < ActiveRecord::Relation
  include Problem::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Problem)
end

class Problem::ActiveRecord_Associations_CollectionProxy < ActiveRecord::Associations::CollectionProxy
  include Problem::ModelRelationShared
  extend T::Generic
  Elem = type_member(fixed: Problem)
end

class Problem < ActiveRecord::Base
  extend T::Sig
  extend T::Generic
  extend Problem::ModelRelationShared
  include Problem::InstanceMethods
  Elem = type_template(fixed: Problem)
end

module Problem::InstanceMethods
  extend T::Sig

  sig { returns(T.nilable(T.untyped)) }
  def created_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
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
  def name(); end

  sig { params(value: T.nilable(String)).void }
  def name=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def name?(*args); end

  sig { returns(T.nilable(T.untyped)) }
  def updated_at(); end

  sig { params(value: T.nilable(T.untyped)).void }
  def updated_at=(value); end

  sig { params(args: T.untyped).returns(T::Boolean) }
  def updated_at?(*args); end

end

class Problem
  extend T::Sig

  sig { returns(::GovernmentFormProblem::ActiveRecord_Associations_CollectionProxy) }
  def government_form_problems(); end

  sig { params(value: T.any(T::Array[::GovernmentFormProblem], ::GovernmentFormProblem::ActiveRecord_Associations_CollectionProxy)).void }
  def government_form_problems=(value); end

  sig { returns(::GovernmentForm::ActiveRecord_Associations_CollectionProxy) }
  def government_forms(); end

  sig { params(value: T.any(T::Array[::GovernmentForm], ::GovernmentForm::ActiveRecord_Associations_CollectionProxy)).void }
  def government_forms=(value); end

  sig { returns(::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy) }
  def versions(); end

  sig { params(value: T.any(T::Array[::PaperTrail::Version], ::PaperTrail::Version::ActiveRecord_Associations_CollectionProxy)).void }
  def versions=(value); end

end

module Problem::ModelRelationShared
  extend T::Sig

  sig { returns(Problem::ActiveRecord_Relation) }
  def all(); end

  sig { params(block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def unscoped(&block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def select(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def order(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def reorder(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def group(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def limit(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def offset(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def joins(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def where(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def rewhere(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def preload(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def eager_load(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def includes(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def from(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def lock(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def readonly(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def or(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def having(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def create_with(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def distinct(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def references(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def none(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def unscope(*args, &block); end

  sig { params(args: T.untyped, block: T.nilable(T.proc.void)).returns(Problem::ActiveRecord_Relation) }
  def except(*args, &block); end

end
