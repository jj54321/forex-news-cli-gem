class ForexNews::CLI

  def call
      puts "The following pairs have news events scheduled for today:"
      list_pairs
      choose_pair
      goodbye
  end

  def list_pairs
    @events = ForexNews::Event.today
    @currencies = @events.map do |event|
      event.currency
    end
    @currencies.uniq.each.with_index(1) do |currency, i|
      puts "#{i}. #{currency}"
    end
    puts "#{@currencies.uniq.count+1}. Show all"
  end

  def choose_pair
    input = nil
    while input != "exit"
      puts "Which pair would you like to see news events for?"
      input = gets.strip.upcase
      if @currencies.include?(input)
        puts "For the #{input.upcase} we are expecting the following events today:"
        @events.each do |event|
          if event.currency == input
            puts "#{event.time}: #{event.name} - #{event.impact}"
          end
        end

    elsif input == "SHOW ALL"
      puts "We are expecting the following news events today"
      @events.each do |event|
          puts "#{event.time}: #{event.name} - #{event.impact} on the #{event.currency}"
      end

    elsif input == "LIST"
        list_pairs

    else
      puts "Invalid input: If you'd like to choose a currency please choose one from the list. If you'd like to see the list again please enter 'list'. If you would like to see all the news events for today, please enter 'show all'."
    end

    end
  end

  def goodbye
    puts "See you tommorrow for more news events!"
  end

end
