class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :profile
  has_many :chequeos
  def full_name
    return profile.name if profile?

    email
  end

  def diferencia_de_peso
    chequeos.last.peso - chequeos.first.peso
  end

  def profile?
    profile.present? && profile.persisted?
  end

end
