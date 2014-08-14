module LitmusAnalytics
  class Campaign

    def initialize(client)
      @client = client
    end

    def create(newCampaign)
      @client.post('/Campaigns', { newCampaign: newCampaign })
    end

    def update_campaign(guid, updateCampaign)
      @client.put("/Campaigns/#{guid}", { updateCampaign: updateCampaign })
    end

    def start(guid)
      @client.put("/Campaigns/#{guid}/Start")
    end

    def clear(guid)
      @client.put("/Campaigns/#{guid}/Stop")
    end

    def email_export_link(guid, export)
      @client.put("/Campaigns/#{guid}/EmailExportLink", { export: export })
    end

    def subscribe(guid, subscription)
      @client.put("/Campaigns/#{guid}/Subscribe", { subscription: subscription })
    end

    def unsubscribe(guid, subscription)
      @client.put("/Campaigns/#{guid}/UnSubscribe", { subscription: subscription })
    end

    def get(campaigns)
      @client.post('/Campaigns/Get', { campaigns: campaigns })
    end

    def open_counts(campaigns)
      @client.post('/Campaigns/OpenCounts', { campaigns: campaigns })
    end

    def open_counts_exact(year, month, campaigns)
      @client.post("/Campaigns/OpenCounts/#{year}/#{month}", { campaigns: campaigns })
    end

    def open_counts_time_frame(fromDate, untilDate, campaigns)
      @client.post("/Campaigns/OpenCounts/#{fromDate}/#{untilDate}", { campaigns: campaigns })
    end

    def OpenCountsByMonth(campaigns)
      @client.post('/Campaigns/OpenCountsByMonth', { campaigns: campaigns })
    end

    def AdvancedOpenCounts(campaigns)
      @client.post('/Campaigns/AdvancedOpenCounts', { campaigns: campaigns })
    end

    def compare(campaigns)
      @client.post('/Campaigns/Compare', { campaigns: campaigns })
    end

    def open_counts_for_user(userGuid, fromDate, untilDate)
      @client.get("/Campaigns/OpenCountsForUser/#{userGuid}/#{fromDate}/#{untilDate}")
    end

    def open_counts_for_user_month(userGuid, monthDate)
      @client.get("/Campaigns/OpenCountsForUser/#{userGuid}/#{monthDate}")
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

    def group_usage_report(guid)
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