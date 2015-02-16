require 'test_helper'

class ExperienceTest < ActiveSupport::TestCase
	fixtures :experiences
  test "experience attributes must not be empty" do 
		experience = Experience.new
		assert experience.invalid?
		assert experience.errors[:title].any?
		assert experience.errors[:category].any?		
		assert experience.errors[:description].any?
		assert experience.errors[:image_url].any?		
		assert experience.errors[:price].any?		
	end

	test "experience price must be positive" do
    experience = Experience.new(title: "My Book Title",
    											category: "drama",
                          description: "yyy",
                          image_url: "zzz.jpg")
    experience.price = -1
    assert experience.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      experience.errors[:price]
 
    experience.price = 0
    assert experience.invalid?
    assert_equal ["must be greater than or equal to 0.01"], 
      experience.errors[:price]
 
    experience.price = 1
    assert experience.valid?
  end

  def new_experience(image_url)
    Experience.new(title: "My Book Title",
    						category: "comedy", 
                description: "yyy",
                price: 1,
                image_url: image_url)
  end

  test "image url" do
    ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
             http://a.b.c/x/y/z/fred.gif }
    bad = %w{ fred.doc fred.gif/more fred.gif.more }
    
    ok.each do |name|
      assert new_experience(name).valid?, "#{name} shouldn't be invalid"
    end
 
    bad.each do |name|
      assert new_experience(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "product is not valid without a unique title" do 
    experience = Experience.new(title: experiences(:highlands).title,
     description: "yyy" ,
     price: 1,
     image_url: "fred.gif" )
    assert experience.invalid?
    assert_equal [ "has already been taken" ], experience.errors[:title]
  end
end
