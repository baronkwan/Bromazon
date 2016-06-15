class Spree::StoreController
  before_filter :load_taxomonies

  def load_taxomonies
    @taxonomies = Spree::Taxonomy.includes(root: :children)
  end
end