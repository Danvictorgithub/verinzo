module SupabaseStorageUrl
  extend ActiveSupport::Concern

  # Get the base URL from environment variable
  SUPABASE_STORAGE_URL = ENV["AWS_S3_URL"] || "https://qhoorsgdumxfllapibpu.supabase.co/storage/v1/object/public/"
  S3_BUCKET = ENV["S3_BUCKET_NAME"] || "assets"

  # Add a method to Active Storage attachments to get Supabase public URL
  module AttachmentExtension
    def supabase_public_url
      return nil unless attached?
      # Combine the base URL with bucket name and blob key
      "#{SUPABASE_STORAGE_URL}#{S3_BUCKET}/#{blob.key}"
    end
  end

  included do
    # Register the new method on all attachments in this model
    ActiveStorage::Attached::One.prepend AttachmentExtension
    ActiveStorage::Attached::Many.prepend AttachmentExtension
  end

  class_methods do
    # Class method to generate a Supabase URL directly from a blob key
    def supabase_url_for(key, bucket = S3_BUCKET)
      "#{SUPABASE_STORAGE_URL}#{bucket}/#{key}"
    end
  end
end
