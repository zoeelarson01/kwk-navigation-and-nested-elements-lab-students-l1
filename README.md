# Navigation and Nested Elements HTML Lab

## Objectives

1. Create a `header` including navigation and branding.
2. Nest HTML elements to create well-organized, structured content.

## Introduction

In this lab, you're tasked with extending that well-formed HTML document
structure we have learned, adding in a navigation header and some HTML nested
tags.  Nesting HTML elements are part of building a good page layout in HTML,
and is essential for keeping parts and sections of a web page separated and
organized.  We'll be starting from scratch with a blank HTML file, so feel free
to refer back to the lab on well-formed document structure if you've forgotten
the specific syntax.

We're going to be using some newer HTML5 tags, `nav` and `header`.  They act
just like normal HTML tags.. their names are for _our_ desire to keep HTML
organized.  

The `nav` tag should contain a page's navigation, such as links to
other parts of the site.  

The `header` tag is ideal for containing the `nav` as
well as any page logos, brandnames or titles. For example, Facebook's blue bar
at the top of the page, would be a good candidate for using a `header` section -
its got their logo, links and your status notifications.

## Instructions

* Open `index.html` in your text editor
* Write a well-formed HTML document structure, starting with the `doctype`.  Make
sure to include `<html>` opening and closing tags, along with `head` and a
`body` tags
* Add a set of `header` tags inside the document `body` to enclose the site
navigation and branding.
* Inside the `header`, add two things:
  * a `nav` to house our site navigation links (`<nav></nav>`)
  * an `h3` to serve as the branding for our site.
* After creating opening and closing `nav` tags, inside those, create an
`u`nordered `l`ist.
* Inside the `ul`, add a pair of nested `li`st elements to represent the other
pages of the site.
* Finally, below the `nav` (but still inside the `header`), add an `h3` containing
the site's name, which can be whatever you like!

You can run the tests with this lab via `learn`. Make sure you save the file
before running the test suite. Failing tests will provide helpful error
messages that you can use to debug your code — read them closely for hints!

## Viewing your work in the browser

While working through these assignments, your general workflow should center on
writing code in the text editor and periodically running the test suite in the
terminal to check your work.

Another great way to track your progress is to open up the HTML document in your
browser and watch how each change you make in the text editor affects the visual
layout in the browser. If you're using a local development environment, you can
open the HTML file directly in your browser. If you're coding in the Learn IDE,
check out this [Help Center
article](http://help.learn.co/the-learn-ide/common-ide-questions/viewing-html-pages-in-the-learn-ide)
that explains how to spin up and connect to a simple remote server.

Once you have the HTML document open in your browser, you can make changes to it
in the text editor, save the file, refresh the page in the browser, and see the
changes instantly.

## Resources

* [W3S — HTML `<ul>` Tag](https://www.w3schools.com/tags/tag_ul.asp)
* [MDN — `<nav>` example](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/nav#Examples)
<p data-visibility='hidden'>KWK-T1 Navigation and Nested Elements HTML Lab</p>
