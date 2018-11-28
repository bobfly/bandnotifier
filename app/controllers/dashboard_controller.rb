class DashboardController < ApplicationController
  def index
    @quotes = [{author: "Necastivi", title: "I taj band notifier isto nabijem na kurac"}, 
               {author: "Djuro", title: "Necu, danas ne pijem"},
               {author: "Josip", title: "Mislim da bi bilo u redu da donesete tamburu"},
               {author: "Necastivi", title: "Meni je to sastavni dio posla"}, 
               {author: "Vjeko", title: "Ma da, bitno da je nesto toplo u ustima"},
               {author: "Necastivi", title: "Necete vjerovat sta mi se desilo"}
      ]
    @quote = @quotes.sample
    @upcoming_gigs = Gig.where("gig_date >= ? and gig_date <= ?", Date.today, Date.today.end_of_year).order(gig_date: :asc)
  end
end
