class WordReader

  def read_from_file(file_name)
    begin
      f = File.new(file_name, "r:UTF-8")
      lines = f.readlines
      f.close
      return lines.sample.chomp
    rescue Errno::ENOENT => error
      puts "К сожелению файл со словами не найден или был поврежден: #{error}"
      end
  end
end