# frozen_string_literal: true

VulnerubyEngine::Engine.routes.draw do
  root 'application#home'

  RULES = %w[
    cmdi
    ssrf
    xxe
  ].freeze

  RULES.each do |rule|
    get  "/#{ rule }" => "#{ rule }#index"
    post "/#{ rule }" => "#{ rule }#run"
  end
end
