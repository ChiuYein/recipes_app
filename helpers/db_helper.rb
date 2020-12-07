def run_sql(sql)

  db = PG.connect(ENV['DATABASE_URL'] || {dbname: 'recipes_app'})
  results = db.exec(sql)
  db.close
  return results

end