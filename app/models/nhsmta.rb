class Nhsmta < ApplicationRecord
    default_scope { 
        where(datkb: '1')
    }
end
