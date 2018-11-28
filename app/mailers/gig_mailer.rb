class GigMailer < ApplicationMailer

  def upcoming_gig(gig, email)
    @gig = gig
    mail(to: email, subject: "Nova svirka #{gig.gig_date.strftime("%-d.%-m.%Y.")}" )
  end
end