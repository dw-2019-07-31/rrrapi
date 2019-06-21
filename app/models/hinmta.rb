class Hinmta < ApplicationRecord
    belongs_to :hinjancd, primary_key: 'hincd', foreign_key: 'hincd'
    belongs_to :brandmta, primary_key: 'clsid', foreign_key: 'hinclbid'
    default_scope { where(datkb: '1') }
    scope :list, -> { select(
        "TRIM(hinmta.hincd) hincd", "TRIM(hinmta.hinnma) hinnma", "TRIM(hinmta.hinstscd) hinstscd", 
        "TRIM(hinmta.prctk) prctk", "TRIM(hinmta.hinenma) hinenma", "TRIM(hinmta.hinrn) hinrn"
        ) }
end
