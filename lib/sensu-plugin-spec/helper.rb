module SensuPluginSpec
  module Helper
    def set_script(script)
      @script = script
    end

    def run_script(*args)
      IO.popen(([@script] + args).join(" "), "r+") do |child|
        child.read
      end
    end

    def run_script_with_input(input, *args)
      IO.popen(([@script] + args).join(" "), "r+") do |child|
        child.write(input)
        child.close_write
        child.read
      end
    end
  end
end
