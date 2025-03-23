# Configure ActiveStorage for Supabase S3 compatibility
Rails.application.config.after_initialize do
  # Set non-expiring URLs since we're using public-read ACL
  ActiveStorage::Service.url_expires_in = nil

  # Override URL generation for S3 service to use public URLs if needed
  if ENV["AWS_S3_URL"].present?
    ActiveStorage::Service::S3Service.class_eval do
      def url_for_direct_upload(key, **options)
        instrument :url, key: key do |payload|
          payload[:url] = object_for(key).presigned_url :put, **options
        end
      end
    end
  end
end
