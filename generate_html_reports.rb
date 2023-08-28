#!/usr/bin/env ruby

require 'nokogiri'
require 'fileutils'

input_dir = "vulners_reports"
output_dir = "vulners_html_reports"

FileUtils.mkdir_p(output_dir)

Dir.glob("#{input_dir}/*.xml") do |xml_file|
  doc = File.open(xml_file) { |f| Nokogiri::XML(f) }

  host = doc.at_xpath("//host/hostnames/hostname").content
  output_file = "#{output_dir}/#{host}.html"

  File.open(output_file, 'w') do |html|
    html.puts <<~HTML
      <!DOCTYPE html>
      <html>
      <head>
        <title>Vulners Report for #{host}</title>
      </head>
      <body>
        <h1>Vulners Report for #{host}</h1>
        <pre>
    HTML

    doc.xpath("//script").each do |script|
      script_id = script.at_xpath("id").content
      output = script.at_xpath("output").content

      html.puts <<~HTML
        <h2>Script ID: #{script_id}</h2>
        <pre>
        #{output}
        </pre>
      HTML
    end

    html.puts <<~HTML
        </pre>
      </body>
      </html>
    HTML
  end
end
