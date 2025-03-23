class ApplicationRecord < ActiveRecord::Base
  primary_abstract_class

  # Include the Supabase Storage URL helper in all models
  include SupabaseStorageUrl
end
