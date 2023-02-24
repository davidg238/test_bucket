// Copyright 2023 Ekorau LLC

import esp32
import system.storage as storage


// RAM_STORE_       ::= storage.Bucket.open --flash   "/admin"
RAM_STORE_       ::= storage.Bucket.open --ram   "/admin"


main:

  RAMBuffer.add Time.now.s_since_epoch

  print "size after $RAMBuffer.size"

  esp32.deep_sleep (Duration --s=5)


class RAMBuffer:

  static exists -> bool:
    return null != (RAM_STORE_.get "buffer")

  static get_buff_ -> List:
    buffer := RAM_STORE_.get "buffer"
    if not buffer: buffer = []
    return buffer

  static add entry/any -> none:
    buffer := List.from get_buff_
    buffer.add entry
    RAM_STORE_["buffer"] = buffer

  static clear -> none:
    RAM_STORE_["buffer"] = []

  static size -> int:
    return get_buff_.size

  static remove_first -> any:
    buffer := get_buff_
    entry := buffer.first
    RAM_STORE_["buffer"] = buffer[1..]
    return entry