module LitmusAnalytics
  class Campaign

    def initialize(client)
      @client = client
    end

    def create(newCampaign)
      @client.post('/Campaigns', { newCampaign: newCampaign })
    end

    def activity_report(guid)
      @client.get("/Campaigns/#{guid}/ActivityReport")
    end

    def activity_summary_report(guid)
      @client.get("/Campaigns/#{guid}/ActivitySummaryReport")
    end

    def engagement_report(guid)
      @client.get("/Campaigns/#{guid}/EngagementReport")
    end

    def detailed_engagement_report(guid)
      @client.get("/Campaigns/#{guid}/DetailedEngagementReport")
    end

    def group_engagement_report(guid)
      @client.get("/Campaigns/#{guid}/GroupEngagementReport")
    end

    def mail_client_usage_report(guid)
      @client.get("/Campaigns/#{guid}/MailClientUsageReport")
    end

    def egroup_usage_report(guid)
      @client.get("/Campaigns/#{guid}/GroupUsageReport")
    end

    def browser_usage_report(guid)
      @client.get("/Campaigns/#{guid}/BrowserUsageReport")
    end

    def rendering_category_report(guid)
      @client.get("/Campaigns/#{guid}/RenderingCategoryReport")
    end

    def mail_client_engagement_report(guid)
      @client.get("/Campaigns/#{guid}/MailClientEngagementReport")
    end

    def detailed_mail_client_engagement_report(guid)
      @client.get("/Campaigns/#{guid}/DetailedMailClientEngagementReport")
    end

    def geolocation_report(guid)
      @client.get("/Campaigns/#{guid}/GeolocationReport")
    end

    def all_expiring_guids(untilDate)
      @client.get("/Campaigns/AllExpiringGuids/{untilDate}")
    end

  end
end