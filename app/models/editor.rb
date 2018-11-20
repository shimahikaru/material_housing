class Editor < ApplicationRecord

  enum category: {
   住宅基礎知識:1, キッチン:2, "バス・洗面所・トイレ":3, "リビング・個室":4, "最新トレンド":5, "コーディネート":6, コラム:7, その他:8
  }

end
