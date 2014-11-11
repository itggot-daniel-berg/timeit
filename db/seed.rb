class Seeder

  def self.seed
    self.categories_and_activities
    self.users
    self.samples
  end

  def self.categories_and_activities
    categories = [
        {name: 'Administration',
          activities: [{name: 'Rapportering' }, {name: 'Frånvaro'}]},
        {name: 'Undervisning',
          activities: [{name: 'Lektion'}, {name: 'Vikarie'}]}
    ]
    categories.each do |cat|
      tmp = Category.create(name: cat[:name])
      cat[:activities].each do |act|
        Activity.create(name: act[:name], category: tmp)
      end
    end
  end

  def self.samples
    samples = [
        {duration: 30, date: Date.today - 5 },
        {duration: 20, date: Date.today - 5, comment: 'Senap' },
        {duration: 15, date: Date.today - 4 },
        {duration: 60, date: Date.today },
        {duration: 12, date: Date.today - 10, comment: 'Banan' },
        {duration: 15, date: Date.today - 3 }
    ]
    activities = Activity.all
    users = User.all
    samples.each do |sample|
      Sample.create(sample.merge({activity: activities.sample,
                                  user: users.sample}))
    end
  end

  def self.users
    5.times do
      User.create
    end
  end

end