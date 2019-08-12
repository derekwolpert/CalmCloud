# == Schema Information
#
# Table name: comments
#
#  id                :bigint           not null, primary key
#  track_id          :integer          not null
#  user_id           :integer          not null
#  parent_comment_id :integer
#  bpdy              :text             not null
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Comment < ApplicationRecord

end
