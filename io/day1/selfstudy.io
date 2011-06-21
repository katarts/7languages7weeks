#!/usr/bin/env io

/** FIND SECTION **/

// Io example problems - print to stdout when running this Io script
problems := list(
  "Scripting",
  "Actors",
  "Embedding"
)

"Sample problems that would be easy to solve with Io are:" println
problems foreach(i, problem,
  ("  " .. (i+1) .. ". " .. problem) println
)
"" println

// Io Community information
CommunityType := Object clone
CommunityType println := method(
  // TODO
  self kind println
  self host println
  self url println
)

MailingList := CommunityType clone
MailingList kind := "Mailing List"
MailingList host := "yahoogroups.com"
MailingList url := "http://tech.groups.yahoo.com/group/iolanguage/"

MicroBlog := CommunityType clone
MicroBlog kind := "Micro Blog"
MicroBlog host := "twitter.com"
MicroBlog url := "http://twitter.com/iolanguage"

IRCChannel := CommunityType clone
IRCChannel kind := "IRC Channel"
IRCChannel host := "irc.freenode.net"
IRCChannel url := "irc://irc.freenode.net/io"

ioCommunities := list(MailingList, MicroBlog, IRCChannel)
ioCommunities foreach(community,
  community println
  "" println
)

// Style Guide - copied the guidelines I understood *and* agreed with
ioStyle := Object clone
ioStyle source := "http://en.wikibooks.org/wiki/Io_Programming/Io_Style_Guide"
ioStyle guideLines := Map clone
ioStyle guideLines atPut("Assignments", list(
  "Use setters whenever possible, not direct assignment. " ..
  "This makes sense not just from a readability perspective, but also for those like me that prefer building more immutable objects.",
  "Consider direct assignment on external objects harmful. " ..
  "Let the object handle its internal state itself to preserve encapsulation."
))
ioStyle guideLines atPut("Initialization", list(
  "The init method should:" ..
  " * be used to initialize object state to known good defaults *only*, nothing more!\n" ..
  " * not be used to initialize literal or immutable values (do this in its prototype)\n" ..
  " * always be used to initialize dynamically created values (e.g. list()). Otherwise, these values will be shared by all instances of the object\n",
  "Facilitate isolation and testability by employing dependency injection, a very common technique.",
  "Keep object state as simple as possible."
))
ioStyle guideLines atPut("Methods", list(
  "Method names should begin with lowercase letter and camel cased. Like Java method names.",
  "Passing more than three arguments to a method creates a bad code smell and strongly suggests related data needs to be packaged together.",
  "Allow chaining by returning self when it doesn't make sense to return any other object."
))
ioStyle println := method(
  "Style Guidelines" println
  "" println
  self guideLines keys foreach(category,
    gl := self guideLines at(category)
    gl foreach(line,
      line println
    )
    "" println
  )
)
ioStyle println

/** ANSWER **/


/** DO **/


