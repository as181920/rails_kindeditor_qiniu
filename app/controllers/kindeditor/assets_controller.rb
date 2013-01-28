# encoding: utf-8
class Kindeditor::AssetsController < ApplicationController
  skip_before_filter :verify_authenticity_token

  def create
    @img_file = params[:imgFile]
    upload_token = generate_upload_token
    key = generate_key
    response = Qiniu::RS.upload_file \
      uptoken:             upload_token,
      file:                @img_file.tempfile.path,
      bucket:              "testimages",
      key:                 key,
      note:                "rails kindeditor"
    
    Kindeditor::Asset.create \
      asset:                        key,
      file_name:                    @img_file.original_filename,
      file_type:                    @img_file.content_type,
      file_size:                    @img_file.size
    p response # should be checked for error handle
    render :text => ({:error => 0, :url => "http://testimages.qiniudn.com/#{key}"}.to_json)
  end

  private
  def generate_upload_token
    Qiniu::RS.generate_upload_token \
      scope:               "testimages",
      customer:            "as181920"
  end

  def generate_key
    SecureRandom.uuid
  end
end


