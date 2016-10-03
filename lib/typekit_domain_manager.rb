require "typekit_domain_manager/version"
require "typekit"

module TypekitDomainManager
  class Kit
    def initialize(api_key, kit_id)
      @api_key = api_key
      @kit_id = kit_id
    end

    def add_domain(domain)
      kit = get_kit
      kit_domains = kit.domains

      unless (kit_domains.include? domain)
        kit_domains << domain

        kit.update(domains: kit_domains)
        kit.publish
      end

      kit_domains = get_domains
      abort "Failed to add domain to whitelist" unless kit_domains.include? domain
    end

    def remove_domain(domain)
      kit = get_kit
      kit_domains = kit.domains

      if (kit_domains.include? domain)
        kit_domains.delete domain

        kit.update(domains: kit_domains)
        kit.publish
      end

      kit_domains = get_domains
      abort "Failed to remove domain from whitelist" if kit_domains.include? domain
    end

    def get_domains
      get_domains
    end

    private
    def get_kit
      typekit = Typekit::Client.new token: @api_key
      typekit::Kit.find @kit_id
    end

    def get_domains
      kit = get_kit
      kit.domains
    end
  end
end
