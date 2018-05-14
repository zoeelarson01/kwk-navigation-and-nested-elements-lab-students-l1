RSpec.describe 'Navigation and Nested Elements' do
  it 'begins with a valid doctype' do
    expect(parsed_html.children.first).to be_html5_dtd, "Make sure to include <!DOCTYPE html> in your file"
  end

  it 'has a top-level <html> tag to enclose the document' do
    expect(parsed_html.child.name).to eq('html'), "All well-structured HTML documents need an <html> tag"

    expect(html_file_contents).to include('</html>'), "Don't forget the closing </html> tag!"
  end

  context 'within <html>' do
    it 'contains a <head> tag to enclose the header' do
      head = parsed_html.search('html > head').first

      expect(head.name).to eq('head'), "Always include a <head> tag in your HTML pages"

      expect(html_file_contents).to include('</head>'), "Don't forget the closing </head> tag!"
    end

    context 'within <head>' do
      it 'contains a <title> tag to enclose the site title' do
        title = parsed_html.search('html > head > title').first

        expect(title.name).to eq('title'), "Always include a <title> in your <head> section"

        expect(html_file_contents).to include('</title>'), "Don't forget the closing </title> tag!"
      end
    end
  end

  context 'within <html>' do
    it 'contains a <body> tag to enclose the body of the document' do
      body = parsed_html.search('html > body').first

      expect(body.name).to eq('body'), "Every HTML page needs a <body> tag"

      expect(html_file_contents).to include('</body>'), "Don't forget the closing </body> tag!"
    end

    context 'within <body>' do
      it 'contains a <header> tag to enclose the site header' do
        header = parsed_html.search('html > body > header').first

        expect(header.name).to eq('header'), "Add a <header> tag within the <body>"

        expect(html_file_contents).to include('</header>'), "Don't forget the closing </header> tag!"
      end

      context 'within <header>' do
        it 'contains a <nav> tag to enclose the site navigation' do
          nav = parsed_html.search('html > body > header > nav').first

          expect(nav.name).to eq('nav'), "Add a <nav> tag within your <header> tag"

          expect(html_file_contents).to include('</nav>'), "Don't forget the closing </nav> tag!"
        end

        context 'within <nav>' do
          it 'contains a <ul> tag to enclose the site navigation' do
            ul = parsed_html.search('html > body > header > nav > ul').first

            expect(ul.name).to eq('ul'), "Add a <ul> tag within your <nav> tag"

            expect(html_file_contents).to include('</ul>'), "Don't forget the closing </ul> tag!"
          end

          context 'within <ul>' do
            it 'contains a pair of <li> tags for linking to other pages' do
              lis = parsed_html.search('html > body > header > nav > ul > li')

              expect(lis.length).to eq(2), "Add exactly two <li> tags within your <ul>"

              expect(html_file_contents).to include('</li>'), "Don't forget to close your <li> tags!"
            end
          end
        end
      end

      context 'within <header>' do
        it "contains an <h3> tag to enclose the site's title" do
          h3 = parsed_html.search('html > body > header > h3').first

          expect(h3.name).to eq('h3'), "Add an <h3> tag within your <header>"

          expect(html_file_contents).to include('</h3>'), "Don't forget to close your <h3> tag!"
        end
      end
    end
  end

  context 'w3c validation' do
    it 'is a valid w3c document' do
      validator = W3CValidators::NuValidator.new
      html = File.read('./index.html')
      results = validator.validate_text(html)

      error_messages = "Expected a valid w3c document but got:\n#{results.errors.collect{|e| e.to_s}.join("\n")}"

      expect(results.errors).to be_empty, error_messages
    end
  end
end
