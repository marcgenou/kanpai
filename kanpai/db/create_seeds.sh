#!/usr/bin/env bash

cat > seeds.rb << EOF
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Experience.delete_all
EOF

unoconv -f csv -i 59,34,utf-8 seeds.ods
awk -F";" 'NR>=5{ print "Experience.create!(title: \""$1"\" \
, category: \""$2"\" \
, description: \""$3"\" \
, image_url: \""$4"\" \
, price: "$5" \
, season: \""$6"\" \
, date: \""$7"\" \
, duration: \""$8"\" \
, tags: \""$9"\" \
, address: \""$10"\") \
"}' seeds.csv >> seeds.rb
