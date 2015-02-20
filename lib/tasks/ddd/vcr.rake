namespace :ddd do
  namespace :vcr do
    desc "Draw cassettes of VCR"
    task :draw do
      CassetteRack.configure do |config|
        config.content_layout =  Rails.root.join('doc/caracal/content.md.liquid').to_s
      end

      path = ENV['path'] ||= Rails.root.join('doc/cassettes').to_s
      CassetteRack::Cli.draw(path)
      puts "drawing cassettes to #{path}"
    end
  end
end
