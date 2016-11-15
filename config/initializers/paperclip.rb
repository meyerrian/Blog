# config/initializers/paperclip.rb
Paperclip::Attachment.default_options[:url] = 'https://s3.amazonaws.com/hoopblurbs/'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
