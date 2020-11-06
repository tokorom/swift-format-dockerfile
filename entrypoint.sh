#!/bin/sh

if [ -n "$SWIFT_FORMAT_ARGUMENTS" ]; then
  if [ -n "$SWIFT_FORMAT_OUTPUTFILE" ]; then
    swift-format $(echo $SWIFT_FORMAT_ARGUMENTS) 2>$SWIFT_FORMAT_OUTPUTFILE
  else
    swift-format $(echo $SWIFT_FORMAT_ARGUMENTS)
  fi
else
  swift-format $@
fi
