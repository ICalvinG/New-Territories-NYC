class ResumeUploader < CarrierWave::Uploader::Base
  storage :file
  after :remove, :delete_empty_upstream_dirs

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(pdf doc htm html docx)
  end

  def delete_empty_upstream_dirs
    path = ::File.expand_path(store_dir, root)
    Dir.delete(path) # fails if path not empty dir

  rescue SystemCallError
    true # nothing, the dir is not empty
  end

end
