class JordanReleases::Months

  attr_accessor :name, :release_date
  @@all = []

  def initialize(name)
    @name = name
    @release_date = release_date
    @@all << self
  end

  def self.all
    JordanReleases::Scraper.scrap_sneaker_name(name) if @@all.empty?
    @@all
  end

  def release_date
    JordanReleases::Scraper.scrape_release_date(self) if @release_date.empty?
  end

  def month
    @month
  end

end
