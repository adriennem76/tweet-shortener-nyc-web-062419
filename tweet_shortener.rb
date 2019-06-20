require 'pry'
def dictionary(word)
    short_words = {"hello" => "hi", "to" => "2", "two" => "2","too" => "2", "for" => "4", "four" => "4", "be" => "b", "you" => "u", "at" => "@", "and" => "&"}
    if short_words.keys.include?(word.downcase)
        word = short_words[word.downcase]
    end
    word
end

def word_substituter(tweet)
    tweet = tweet.split(" ")
    tweet = tweet.collect do |word|
        word = dictionary(word)
    end
    tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
        tweet = tweet.split(" ")
        tweet = tweet.collect do |word|
            word = dictionary(word)
        end
        tweet.join(" ")
    else
        tweet
    end
end

def shortened_tweet_truncator(tweet)
    if tweet.length > 140
        tweet = tweet[0..136]
        tweet += "..."
    end
    tweet
end
# Write your code here.