
 (func $build/teto-generated/teto/__bq_302aa901_parseString (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.get $1
  i32.ge_u
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load8_u
   i32.const 34
   i32.ne
  end
  if
   i32.const -1
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.tee $2
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $1
   i32.lt_u
   if
    local.get $0
    i32.load8_u
    local.tee $4
    i32.const 34
    i32.eq
    if
     i32.const 3328
     local.get $2
     i64.extend_i32_u
     i64.store32
     i32.const 3332
     local.get $0
     local.get $2
     i32.sub
     i64.extend_i32_u
     i64.store32
     i32.const 3336
     local.get $3
     i64.extend_i32_u
     i64.store32
     local.get $0
     i32.const 1
     i32.add
     return
    end
    local.get $4
    i32.const 32
    i32.lt_u
    if
     i32.const -1
     return
    end
    local.get $4
    i32.const 92
    i32.eq
    if
     i32.const 1
     local.set $3
     local.get $0
     i32.const 1
     i32.add
     local.tee $0
     local.get $1
     i32.ge_u
     if
      i32.const -1
      return
     end
     local.get $0
     i32.load8_u
     local.tee $4
     i32.const 117
     i32.eq
     if
      local.get $1
      local.get $0
      i32.sub
      i32.const 5
      i32.lt_u
      if (result i32)
       i32.const 0
      else
       local.get $0
       i32.load8_u offset=1
       local.tee $4
       i32.const 57
       i32.le_u
       local.get $4
       i32.const 48
       i32.ge_u
       i32.and
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 70
        i32.le_u
        local.get $4
        i32.const 65
        i32.ge_u
        i32.and
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 102
        i32.le_u
        local.get $4
        i32.const 97
        i32.ge_u
        i32.and
       end
      end
      if (result i32)
       local.get $0
       i32.load8_u offset=2
       local.tee $4
       i32.const 57
       i32.le_u
       local.get $4
       i32.const 48
       i32.ge_u
       i32.and
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 70
        i32.le_u
        local.get $4
        i32.const 65
        i32.ge_u
        i32.and
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 102
        i32.le_u
        local.get $4
        i32.const 97
        i32.ge_u
        i32.and
       end
      else
       i32.const 0
      end
      if (result i32)
       local.get $0
       i32.load8_u offset=3
       local.tee $4
       i32.const 57
       i32.le_u
       local.get $4
       i32.const 48
       i32.ge_u
       i32.and
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 70
        i32.le_u
        local.get $4
        i32.const 65
        i32.ge_u
        i32.and
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 102
        i32.le_u
        local.get $4
        i32.const 97
        i32.ge_u
        i32.and
       end
      else
       i32.const 0
      end
      if (result i32)
       local.get $0
       i32.load8_u offset=4
       local.tee $4
       i32.const 57
       i32.le_u
       local.get $4
       i32.const 48
       i32.ge_u
       i32.and
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 70
        i32.le_u
        local.get $4
        i32.const 65
        i32.ge_u
        i32.and
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        i32.const 102
        i32.le_u
        local.get $4
        i32.const 97
        i32.ge_u
        i32.and
       end
      else
       i32.const 0
      end
      i32.eqz
      if
       i32.const -1
       return
      end
      local.get $0
      i32.const 5
      i32.add
      local.set $0
      br $while-continue|0
     end
     local.get $4
     i32.const 92
     i32.ne
     local.get $4
     i32.const 34
     i32.ne
     i32.and
     local.get $4
     i32.const 47
     i32.ne
     i32.and
     local.get $4
     i32.const 98
     i32.ne
     i32.and
     local.get $4
     i32.const 102
     i32.ne
     i32.and
     local.get $4
     i32.const 110
     i32.ne
     i32.and
     local.get $4
     i32.const 114
     i32.ne
     i32.and
     local.get $4
     i32.const 116
     i32.ne
     i32.and
     if
      i32.const -1
      return
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $build/teto-generated/teto/__bq_302aa901_skipValue (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  block $folding-inner1
   block $folding-inner0
    local.get $3
    i32.const 32
    i32.gt_u
    br_if $folding-inner0
    loop $while-continue|0
     local.get $1
     local.get $2
     i32.lt_u
     if (result i32)
      local.get $1
      i32.load8_u
      local.tee $4
      i32.const 9
      i32.eq
      local.get $4
      i32.const 32
      i32.eq
      i32.or
      local.get $4
      i32.const 10
      i32.eq
      i32.or
      local.get $4
      i32.const 13
      i32.eq
      i32.or
     else
      i32.const 0
     end
     if
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $while-continue|0
     end
    end
    local.get $1
    local.get $2
    i32.ge_u
    br_if $folding-inner0
    local.get $1
    i32.load8_u
    local.tee $4
    i32.const 34
    i32.eq
    if
     local.get $1
     local.get $2
     call $build/teto-generated/teto/__bq_302aa901_parseString
     return
    end
    local.get $4
    i32.const 116
    i32.eq
    if
     block $__inlined_func$build/teto-generated/teto/__bq_302aa901_literal$92 (result i32)
      i32.const -1
      local.get $2
      local.get $1
      i32.sub
      i32.const 4
      i32.lt_u
      if (result i32)
       i32.const 0
      else
       local.get $1
       i32.load8_u
       i32.const 116
       i32.eq
      end
      if (result i32)
       local.get $1
       i32.load8_u offset=1
       i32.const 114
       i32.eq
      else
       i32.const 0
      end
      if (result i32)
       local.get $1
       i32.load8_u offset=2
       i32.const 117
       i32.eq
      else
       i32.const 0
      end
      i32.eqz
      br_if $__inlined_func$build/teto-generated/teto/__bq_302aa901_literal$92
      drop
      i32.const -1
      local.get $1
      i32.load8_u offset=3
      i32.const 101
      i32.ne
      br_if $__inlined_func$build/teto-generated/teto/__bq_302aa901_literal$92
      drop
      local.get $1
      i32.const 4
      i32.add
     end
     return
    end
    local.get $4
    i32.const 102
    i32.eq
    if
     local.get $2
     local.get $1
     i32.sub
     i32.const 5
     i32.lt_u
     if (result i32)
      i32.const 0
     else
      local.get $1
      i32.load8_u
      i32.const 102
      i32.eq
     end
     if (result i32)
      local.get $1
      i32.load8_u offset=1
      i32.const 97
      i32.eq
     else
      i32.const 0
     end
     if (result i32)
      local.get $1
      i32.load8_u offset=2
      i32.const 108
      i32.eq
     else
      i32.const 0
     end
     if (result i32)
      local.get $1
      i32.load8_u offset=3
      i32.const 115
      i32.eq
     else
      i32.const 0
     end
     if (result i32)
      local.get $1
      i32.load8_u offset=4
      i32.const 101
      i32.eq
     else
      i32.const 0
     end
     i32.eqz
     br_if $folding-inner0
     local.get $1
     i32.const 5
     i32.add
     return
    end
    local.get $4
    i32.const 110
    i32.eq
    if
     block $__inlined_func$build/teto-generated/teto/__bq_302aa901_literal$93 (result i32)
      i32.const -1
      local.get $2
      local.get $1
      i32.sub
      i32.const 4
      i32.lt_u
      if (result i32)
       i32.const 0
      else
       local.get $1
       i32.load8_u
       i32.const 110
       i32.eq
      end
      if (result i32)
       local.get $1
       i32.load8_u offset=1
       i32.const 117
       i32.eq
      else
       i32.const 0
      end
      if (result i32)
       local.get $1
       i32.load8_u offset=2
       i32.const 108
       i32.eq
      else
       i32.const 0
      end
      i32.eqz
      br_if $__inlined_func$build/teto-generated/teto/__bq_302aa901_literal$93
      drop
      i32.const -1
      local.get $1
      i32.load8_u offset=3
      i32.const 108
      i32.ne
      br_if $__inlined_func$build/teto-generated/teto/__bq_302aa901_literal$93
      drop
      local.get $1
      i32.const 4
      i32.add
     end
     return
    end
    local.get $4
    i32.const 45
    i32.eq
    if (result i32)
     i32.const 1
    else
     local.get $4
     i32.const 57
     i32.le_u
     local.get $4
     i32.const 48
     i32.ge_u
     i32.and
    end
    if
     block $__inlined_func$build/teto-generated/teto/__bq_302aa901_skipNumber$9
      local.get $2
      local.get $1
      i32.const 1
      i32.add
      local.get $1
      local.get $1
      local.get $2
      i32.lt_u
      if (result i32)
       local.get $1
       i32.load8_u
       i32.const 45
       i32.eq
      else
       i32.const 0
      end
      select
      local.tee $0
      i32.le_u
      if (result i32)
       i32.const 0
      else
       local.get $0
       i32.load8_u
       local.tee $1
       i32.const 57
       i32.le_u
       local.get $1
       i32.const 48
       i32.ge_u
       i32.and
      end
      i32.eqz
      if
       i32.const -1
       local.set $0
       br $__inlined_func$build/teto-generated/teto/__bq_302aa901_skipNumber$9
      end
      local.get $0
      i32.load8_u
      i32.const 48
      i32.eq
      if
       local.get $0
       i32.const 1
       i32.add
       local.set $0
      else
       loop $while-continue|00
        local.get $0
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $0
         i32.load8_u
         local.tee $1
         i32.const 57
         i32.le_u
         local.get $1
         i32.const 48
         i32.ge_u
         i32.and
        else
         i32.const 0
        end
        if
         local.get $0
         i32.const 1
         i32.add
         local.set $0
         br $while-continue|00
        end
       end
      end
      local.get $0
      local.get $2
      i32.lt_u
      if (result i32)
       local.get $0
       i32.load8_u
       i32.const 46
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $2
       local.get $0
       i32.const 1
       i32.add
       local.tee $0
       i32.le_u
       if (result i32)
        i32.const 0
       else
        local.get $0
        i32.load8_u
        local.tee $1
        i32.const 57
        i32.le_u
        local.get $1
        i32.const 48
        i32.ge_u
        i32.and
       end
       i32.eqz
       if
        i32.const -1
        local.set $0
        br $__inlined_func$build/teto-generated/teto/__bq_302aa901_skipNumber$9
       end
       loop $while-continue|1
        local.get $0
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $0
         i32.load8_u
         local.tee $1
         i32.const 57
         i32.le_u
         local.get $1
         i32.const 48
         i32.ge_u
         i32.and
        else
         i32.const 0
        end
        if
         local.get $0
         i32.const 1
         i32.add
         local.set $0
         br $while-continue|1
        end
       end
      end
      local.get $0
      local.get $2
      i32.lt_u
      if (result i32)
       local.get $0
       i32.load8_u
       i32.const 101
       i32.eq
       if (result i32)
        i32.const 1
       else
        local.get $0
        i32.load8_u
        i32.const 69
        i32.eq
       end
      else
       i32.const 0
      end
      if
       local.get $2
       local.get $0
       i32.const 1
       i32.add
       local.tee $0
       i32.gt_u
       if (result i32)
        local.get $0
        i32.load8_u
        i32.const 43
        i32.eq
        if (result i32)
         i32.const 1
        else
         local.get $0
         i32.load8_u
         i32.const 45
         i32.eq
        end
       else
        i32.const 0
       end
       if
        local.get $0
        i32.const 1
        i32.add
        local.set $0
       end
       local.get $0
       local.get $2
       i32.ge_u
       if (result i32)
        i32.const 0
       else
        local.get $0
        i32.load8_u
        local.tee $1
        i32.const 57
        i32.le_u
        local.get $1
        i32.const 48
        i32.ge_u
        i32.and
       end
       i32.eqz
       if
        i32.const -1
        local.set $0
        br $__inlined_func$build/teto-generated/teto/__bq_302aa901_skipNumber$9
       end
       loop $while-continue|2
        local.get $0
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $0
         i32.load8_u
         local.tee $1
         i32.const 57
         i32.le_u
         local.get $1
         i32.const 48
         i32.ge_u
         i32.and
        else
         i32.const 0
        end
        if
         local.get $0
         i32.const 1
         i32.add
         local.set $0
         br $while-continue|2
        end
       end
      end
     end
     local.get $0
     return
    end
    local.get $4
    i32.const 91
    i32.eq
    if
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     loop $while-continue|01
      local.get $1
      local.get $2
      i32.lt_u
      if (result i32)
       local.get $1
       i32.load8_u
       local.tee $4
       i32.const 9
       i32.eq
       local.get $4
       i32.const 32
       i32.eq
       i32.or
       local.get $4
       i32.const 10
       i32.eq
       i32.or
       local.get $4
       i32.const 13
       i32.eq
       i32.or
      else
       i32.const 0
      end
      if
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $while-continue|01
      end
     end
     local.get $1
     local.get $2
     i32.lt_u
     if (result i32)
      local.get $1
      i32.load8_u
      i32.const 93
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner1
     loop $while-continue|05
      local.get $1
      local.get $2
      i32.lt_u
      if
       local.get $0
       local.get $1
       local.get $2
       local.get $3
       i32.const 1
       i32.add
       call $build/teto-generated/teto/__bq_302aa901_skipValue
       local.tee $1
       i32.const -1
       i32.eq
       br_if $folding-inner0
       loop $while-continue|07
        local.get $1
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $1
         i32.load8_u
         local.tee $4
         i32.const 9
         i32.eq
         local.get $4
         i32.const 32
         i32.eq
         i32.or
         local.get $4
         i32.const 10
         i32.eq
         i32.or
         local.get $4
         i32.const 13
         i32.eq
         i32.or
        else
         i32.const 0
        end
        if
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $while-continue|07
        end
       end
       local.get $1
       local.get $2
       i32.lt_u
       if (result i32)
        local.get $1
        i32.load8_u
        i32.const 93
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner1
       local.get $1
       local.get $2
       i32.ge_u
       if (result i32)
        i32.const 1
       else
        local.get $1
        i32.load8_u
        i32.const 44
        i32.ne
       end
       br_if $folding-inner0
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       loop $while-continue|011
        local.get $1
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $1
         i32.load8_u
         local.tee $4
         i32.const 9
         i32.eq
         local.get $4
         i32.const 32
         i32.eq
         i32.or
         local.get $4
         i32.const 10
         i32.eq
         i32.or
         local.get $4
         i32.const 13
         i32.eq
         i32.or
        else
         i32.const 0
        end
        if
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $while-continue|011
        end
       end
       br $while-continue|05
      end
     end
     br $folding-inner0
    end
    local.get $4
    i32.const 123
    i32.eq
    if
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     loop $while-continue|015
      local.get $1
      local.get $2
      i32.lt_u
      if (result i32)
       local.get $1
       i32.load8_u
       local.tee $4
       i32.const 9
       i32.eq
       local.get $4
       i32.const 32
       i32.eq
       i32.or
       local.get $4
       i32.const 10
       i32.eq
       i32.or
       local.get $4
       i32.const 13
       i32.eq
       i32.or
      else
       i32.const 0
      end
      if
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       br $while-continue|015
      end
     end
     local.get $1
     local.get $2
     i32.lt_u
     if (result i32)
      local.get $1
      i32.load8_u
      i32.const 125
      i32.eq
     else
      i32.const 0
     end
     br_if $folding-inner1
     loop $while-continue|11
      local.get $1
      local.get $2
      i32.lt_u
      if
       local.get $1
       local.get $2
       call $build/teto-generated/teto/__bq_302aa901_parseString
       local.tee $1
       i32.const -1
       i32.eq
       br_if $folding-inner0
       loop $while-continue|019
        local.get $1
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $1
         i32.load8_u
         local.tee $4
         i32.const 9
         i32.eq
         local.get $4
         i32.const 32
         i32.eq
         i32.or
         local.get $4
         i32.const 10
         i32.eq
         i32.or
         local.get $4
         i32.const 13
         i32.eq
         i32.or
        else
         i32.const 0
        end
        if
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $while-continue|019
        end
       end
       local.get $1
       local.get $2
       i32.ge_u
       if (result i32)
        i32.const 1
       else
        local.get $1
        i32.load8_u
        i32.const 58
        i32.ne
       end
       br_if $folding-inner0
       local.get $0
       local.get $1
       i32.const 1
       i32.add
       local.get $2
       local.get $3
       i32.const 1
       i32.add
       call $build/teto-generated/teto/__bq_302aa901_skipValue
       local.tee $1
       i32.const -1
       i32.eq
       br_if $folding-inner0
       loop $while-continue|023
        local.get $1
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $1
         i32.load8_u
         local.tee $4
         i32.const 9
         i32.eq
         local.get $4
         i32.const 32
         i32.eq
         i32.or
         local.get $4
         i32.const 10
         i32.eq
         i32.or
         local.get $4
         i32.const 13
         i32.eq
         i32.or
        else
         i32.const 0
        end
        if
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $while-continue|023
        end
       end
       local.get $1
       local.get $2
       i32.lt_u
       if (result i32)
        local.get $1
        i32.load8_u
        i32.const 125
        i32.eq
       else
        i32.const 0
       end
       br_if $folding-inner1
       local.get $1
       local.get $2
       i32.ge_u
       if (result i32)
        i32.const 1
       else
        local.get $1
        i32.load8_u
        i32.const 44
        i32.ne
       end
       br_if $folding-inner0
       local.get $1
       i32.const 1
       i32.add
       local.set $1
       loop $while-continue|027
        local.get $1
        local.get $2
        i32.lt_u
        if (result i32)
         local.get $1
         i32.load8_u
         local.tee $4
         i32.const 9
         i32.eq
         local.get $4
         i32.const 32
         i32.eq
         i32.or
         local.get $4
         i32.const 10
         i32.eq
         i32.or
         local.get $4
         i32.const 13
         i32.eq
         i32.or
        else
         i32.const 0
        end
        if
         local.get $1
         i32.const 1
         i32.add
         local.set $1
         br $while-continue|027
        end
       end
       br $while-continue|11
      end
     end
    end
    i32.const -1
    return
   end
   i32.const -1
   return
  end
  local.get $1
  i32.const 1
  i32.add
 )
 (func $build/teto-generated/teto/__bq_302aa901_parseUnsigned (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  local.get $1
  i32.ge_u
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load8_u
   local.tee $2
   i32.const 57
   i32.le_u
   local.get $2
   i32.const 48
   i32.ge_u
   i32.and
  end
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $0
  i32.load8_u
  local.set $4
  local.get $0
  local.set $2
  loop $while-continue|0
   local.get $1
   local.get $2
   i32.gt_u
   if (result i32)
    local.get $2
    i32.load8_u
    local.tee $5
    i32.const 57
    i32.le_u
    local.get $5
    i32.const 48
    i32.ge_u
    i32.and
   else
    i32.const 0
   end
   if
    local.get $4
    i32.const 48
    i32.eq
    local.get $0
    local.get $2
    i32.ne
    i32.and
    if
     i32.const -1
     return
    end
    local.get $2
    i32.load8_u
    i32.const 48
    i32.sub
    i64.extend_i32_u
    local.get $3
    i64.const 10
    i64.mul
    i64.add
    local.tee $3
    i64.const 9007199254740991
    i64.gt_u
    if
     i32.const -1
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  i32.const 3344
  local.get $3
  i64.store
  local.get $2
 )
 (func $build/teto-generated/teto/__bq_302aa901_keyId (result i32)
  (local $0 i32)
  (local $1 i32)
  i32.const 3336
  i32.load
  if
   i32.const 0
   return
  end
  i32.const 3328
  i32.load
  local.set $0
  i32.const 3332
  i32.load
  local.tee $1
  i32.const 2
  i32.eq
  if (result i32)
   local.get $0
   i32.load8_u
   i32.const 97
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=1
   i32.const 116
   i32.eq
  else
   i32.const 0
  end
  if
   i32.const 19
   return
  end
  local.get $1
  i32.const 3
  i32.eq
  if
   local.get $0
   i32.load8_u
   i32.const 118
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 114
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 2
    return
   end
   local.get $0
   i32.load8_u
   i32.const 115
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 99
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 3
    return
   end
   local.get $0
   i32.load8_u
   i32.const 115
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 121
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 109
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 4
    return
   end
   local.get $0
   i32.load8_u
   i32.const 114
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 108
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 5
    return
   end
   local.get $0
   i32.load8_u
   i32.const 100
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 98
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 103
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 6
    return
   end
   local.get $0
   i32.load8_u
   i32.const 109
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 109
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 9
    return
   end
   local.get $0
   i32.load8_u
   i32.const 105
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 115
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 97
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 10
    return
   end
   local.get $0
   i32.load8_u
   i32.const 102
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 108
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 103
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 15
    return
   end
   local.get $0
   i32.load8_u
   i32.const 108
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 110
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 20
    return
   end
  end
  local.get $1
  i32.const 4
  i32.eq
  if
   local.get $0
   i32.load8_u
   i32.const 110
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 97
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 109
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 14
    return
   end
   local.get $0
   i32.load8_u
   i32.const 115
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 105
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 122
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 17
    return
   end
   local.get $0
   i32.load8_u
   i32.const 97
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 100
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 100
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 114
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 18
    return
   end
   local.get $0
   i32.load8_u
   i32.const 112
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 104
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 100
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 114
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 11
    return
   end
  end
  local.get $1
  i32.const 5
  i32.eq
  if
   local.get $0
   i32.load8_u
   i32.const 105
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 100
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 110
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=4
    i32.const 116
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 7
    return
   end
   local.get $0
   i32.load8_u
   i32.const 101
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 110
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 116
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 114
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=4
    i32.const 121
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 8
    return
   end
   local.get $0
   i32.load8_u
   i32.const 112
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 104
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 101
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 110
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=4
    i32.const 116
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 12
    return
   end
   local.get $0
   i32.load8_u
   i32.const 112
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 104
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 110
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 117
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=4
    i32.const 109
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 13
    return
   end
   local.get $0
   i32.load8_u
   i32.const 97
   i32.eq
   if (result i32)
    local.get $0
    i32.load8_u offset=1
    i32.const 108
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=2
    i32.const 105
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=3
    i32.const 103
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.load8_u offset=4
    i32.const 110
    i32.eq
   else
    i32.const 0
   end
   if
    i32.const 16
    return
   end
  end
  local.get $1
  i32.const 7
  i32.eq
  if (result i32)
   local.get $0
   i32.load8_u
   i32.const 109
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=1
   i32.const 97
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=2
   i32.const 99
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=3
   i32.const 104
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=4
   i32.const 105
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=5
   i32.const 110
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.load8_u offset=6
   i32.const 101
   i32.eq
  else
   i32.const 0
  end
  if
   i32.const 1
   return
  end
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoLoadThx (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  i32.const 128
  i32.load
  i32.const 1
  i32.ne
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 124
   i32.load
   local.tee $6
   i32.sub
   local.tee $5
   i32.const 132
   i32.load
   local.tee $4
   i32.le_u
   local.get $2
   local.get $6
   i32.ge_u
   i32.and
   local.get $3
   local.get $4
   local.get $5
   i32.sub
   i32.le_u
   i32.and
  end
  i32.eqz
  if
   i32.const 2
   return
  end
  local.get $3
  i32.const 16
  i32.lt_u
  if
   i32.const 4
   return
  end
  local.get $2
  i32.load8_u
  i32.const 84
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.load8_u offset=1
   i32.const 72
   i32.ne
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.load8_u offset=2
   i32.const 88
   i32.ne
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.load8_u offset=3
   i32.const 50
   i32.ne
  end
  if
   i32.const 3
   return
  end
  local.get $2
  i32.load offset=8
  local.tee $18
  local.get $3
  i32.const 16
  i32.sub
  local.tee $4
  local.get $2
  i32.load offset=4
  local.tee $6
  i32.sub
  i32.ne
  local.get $4
  local.get $6
  i32.lt_u
  i32.or
  if
   i32.const 4
   return
  end
  i32.const -2128831035
  local.set $5
  i32.const 16
  local.set $4
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.gt_u
   if
    local.get $5
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
    i32.xor
    i32.const 16777619
    i32.mul
    local.set $5
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $5
  local.get $2
  i32.load offset=12
  i32.ne
  if
   i32.const 5
   return
  end
  local.get $6
  local.get $2
  i32.const 16
  i32.add
  local.tee $4
  i32.add
  local.set $8
  loop $while-continue|01
   local.get $4
   local.get $8
   i32.lt_u
   if (result i32)
    local.get $4
    i32.load8_u
    local.tee $2
    i32.const 9
    i32.eq
    local.get $2
    i32.const 32
    i32.eq
    i32.or
    local.get $2
    i32.const 10
    i32.eq
    i32.or
    local.get $2
    i32.const 13
    i32.eq
    i32.or
   else
    i32.const 0
   end
   if
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $while-continue|01
   end
  end
  local.get $4
  local.get $8
  i32.ge_u
  if (result i32)
   i32.const 1
  else
   local.get $4
   i32.load8_u
   i32.const 123
   i32.ne
  end
  if
   i32.const 6
   return
  end
  local.get $4
  i32.const 1
  i32.add
  local.set $4
  loop $while-continue|03
   local.get $4
   local.get $8
   i32.lt_u
   if (result i32)
    local.get $4
    i32.load8_u
    local.tee $2
    i32.const 9
    i32.eq
    local.get $2
    i32.const 32
    i32.eq
    i32.or
    local.get $2
    i32.const 10
    i32.eq
    i32.or
    local.get $2
    i32.const 13
    i32.eq
    i32.or
   else
    i32.const 0
   end
   if
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $while-continue|03
   end
  end
  i32.const -1
  local.set $5
  block $folding-inner0
   loop $while-continue|1
    local.get $4
    local.get $8
    i32.lt_u
    if (result i32)
     local.get $4
     i32.load8_u
     i32.const 125
     i32.ne
    else
     i32.const 0
    end
    if
     block $while-break|1
      local.get $4
      local.get $8
      call $build/teto-generated/teto/__bq_302aa901_parseString
      local.tee $4
      i32.const -1
      i32.eq
      if
       i32.const 6
       return
      end
      call $build/teto-generated/teto/__bq_302aa901_keyId
      local.set $7
      loop $while-continue|07
       local.get $4
       local.get $8
       i32.lt_u
       if (result i32)
        local.get $4
        i32.load8_u
        local.tee $2
        i32.const 9
        i32.eq
        local.get $2
        i32.const 32
        i32.eq
        i32.or
        local.get $2
        i32.const 10
        i32.eq
        i32.or
        local.get $2
        i32.const 13
        i32.eq
        i32.or
       else
        i32.const 0
       end
       if
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $while-continue|07
       end
      end
      local.get $4
      local.get $8
      i32.ge_u
      if (result i32)
       i32.const 1
      else
       local.get $4
       i32.load8_u
       i32.const 58
       i32.ne
      end
      if
       i32.const 6
       return
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      loop $while-continue|011
       local.get $4
       local.get $8
       i32.lt_u
       if (result i32)
        local.get $4
        i32.load8_u
        local.tee $2
        i32.const 9
        i32.eq
        local.get $2
        i32.const 32
        i32.eq
        i32.or
        local.get $2
        i32.const 10
        i32.eq
        i32.or
        local.get $2
        i32.const 13
        i32.eq
        i32.or
       else
        i32.const 0
       end
       if
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $while-continue|011
       end
      end
      local.get $10
      local.get $7
      i32.const 1
      i32.eq
      if (result i32)
       i32.const 1
      else
       local.get $7
       i32.const 2
       i32.eq
       if (result i32)
        i32.const 2
       else
        local.get $7
        i32.const 3
        i32.eq
        if (result i32)
         i32.const 4
        else
         local.get $7
         i32.const 4
         i32.eq
         if (result i32)
          i32.const 8
         else
          local.get $7
          i32.const 5
          i32.eq
          if (result i32)
           i32.const 16
          else
           local.get $7
           i32.const 6
           i32.eq
           if (result i32)
            i32.const 32
           else
            local.get $7
            i32.const 7
            i32.eq
            if (result i32)
             i32.const 64
            else
             local.get $7
             i32.const 8
             i32.eq
             if (result i32)
              i32.const 128
             else
              local.get $7
              i32.const 9
              i32.eq
              if (result i32)
               i32.const 256
              else
               local.get $7
               i32.const 10
               i32.eq
               if (result i32)
                i32.const 512
               else
                local.get $7
                i32.const 11
                i32.eq
                if (result i32)
                 i32.const 1024
                else
                 i32.const 2048
                 i32.const 4096
                 i32.const 0
                 local.get $7
                 i32.const 13
                 i32.eq
                 select
                 local.get $7
                 i32.const 12
                 i32.eq
                 select
                end
               end
              end
             end
            end
           end
          end
         end
        end
       end
      end
      local.tee $21
      i32.and
      i32.const 0
      local.get $21
      select
      br_if $folding-inner0
      local.get $7
      i32.const 10
      i32.eq
      local.get $7
      i32.const 1
      i32.eq
      i32.or
      if
       local.get $4
       local.get $8
       call $build/teto-generated/teto/__bq_302aa901_parseString
       local.tee $4
       i32.const -1
       i32.eq
       if (result i32)
        i32.const 0
       else
        local.get $7
        i32.const 1
        i32.eq
        if (result i32)
         i32.const 3336
         i32.load
         if (result i32)
          i32.const 1
         else
          i32.const 3332
          i32.load
          i32.const 9
          i32.ne
         end
         if (result i32)
          i32.const 0
         else
          i32.const 3328
          i32.load
          local.tee $2
          i32.load8_u
          i32.const 116
          i32.eq
          if (result i32)
           local.get $2
           i32.load8_u offset=1
           i32.const 104
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=2
           i32.const 105
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=3
           i32.const 115
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=4
           i32.const 116
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=5
           i32.const 108
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=6
           i32.const 101
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=7
           i32.const 54
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=8
           i32.const 52
           i32.eq
          else
           i32.const 0
          end
         end
        else
         i32.const 1
        end
       end
       if (result i32)
        local.get $7
        i32.const 10
        i32.eq
        if (result i32)
         i32.const 3336
         i32.load
         if (result i32)
          i32.const 1
         else
          i32.const 3332
          i32.load
          i32.const 6
          i32.ne
         end
         if (result i32)
          i32.const 0
         else
          i32.const 3328
          i32.load
          local.tee $2
          i32.load8_u
          i32.const 114
          i32.eq
          if (result i32)
           local.get $2
           i32.load8_u offset=1
           i32.const 118
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=2
           i32.const 54
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=3
           i32.const 52
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=4
           i32.const 103
           i32.eq
          else
           i32.const 0
          end
          if (result i32)
           local.get $2
           i32.load8_u offset=5
           i32.const 99
           i32.eq
          else
           i32.const 0
          end
         end
        else
         i32.const 1
        end
       else
        i32.const 0
       end
       i32.eqz
       br_if $folding-inner0
      else
       local.get $7
       i32.const 13
       i32.eq
       local.tee $11
       local.get $7
       i32.const 12
       i32.eq
       local.tee $12
       local.get $7
       i32.const 11
       i32.eq
       local.tee $19
       local.get $7
       i32.const 9
       i32.eq
       local.tee $20
       local.get $7
       i32.const 8
       i32.eq
       local.tee $6
       local.get $7
       i32.const 2
       i32.eq
       local.tee $2
       i32.or
       i32.or
       i32.or
       i32.or
       i32.or
       if
        local.get $4
        local.get $8
        call $build/teto-generated/teto/__bq_302aa901_parseUnsigned
        local.tee $4
        i32.const -1
        i32.eq
        br_if $folding-inner0
        local.get $2
        i32.const 3344
        i64.load
        local.tee $9
        i64.const 2
        i64.ne
        i32.and
        br_if $folding-inner0
        local.get $9
        local.get $13
        local.get $6
        select
        local.set $13
        local.get $9
        local.get $14
        local.get $20
        select
        local.set $14
        local.get $9
        local.get $15
        local.get $19
        select
        local.set $15
        local.get $11
        local.get $12
        i32.or
        local.get $9
        i64.const 4294967295
        i64.gt_u
        i32.and
        br_if $folding-inner0
        local.get $9
        i32.wrap_i64
        local.tee $2
        local.get $16
        local.get $12
        select
        local.set $16
        local.get $2
        local.get $17
        local.get $11
        select
        local.set $17
       else
        local.get $7
        i32.const 3
        i32.eq
        if
         local.get $4
         local.set $5
        else
         local.get $7
         i32.const 5
         i32.eq
         local.get $7
         i32.const 4
         i32.eq
         i32.or
         local.get $7
         i32.const 6
         i32.eq
         i32.or
         local.get $7
         i32.const 7
         i32.eq
         i32.or
         if
          local.get $4
          local.get $8
          i32.ge_u
          if (result i32)
           i32.const 1
          else
           local.get $4
           i32.load8_u
           i32.const 91
           i32.ne
          end
          if
           i32.const 7
           return
          end
         end
        end
        local.get $0
        local.get $4
        local.get $8
        i32.const 0
        call $build/teto-generated/teto/__bq_302aa901_skipValue
        local.tee $4
        i32.const -1
        i32.eq
        if
         i32.const 6
         return
        end
       end
      end
      local.get $10
      local.get $21
      i32.or
      local.set $10
      loop $while-continue|015
       local.get $4
       local.get $8
       i32.lt_u
       if (result i32)
        local.get $4
        i32.load8_u
        local.tee $2
        i32.const 9
        i32.eq
        local.get $2
        i32.const 32
        i32.eq
        i32.or
        local.get $2
        i32.const 10
        i32.eq
        i32.or
        local.get $2
        i32.const 13
        i32.eq
        i32.or
       else
        i32.const 0
       end
       if
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $while-continue|015
       end
      end
      local.get $4
      local.get $8
      i32.lt_u
      if (result i32)
       local.get $4
       i32.load8_u
       i32.const 125
       i32.eq
      else
       i32.const 0
      end
      br_if $while-break|1
      local.get $4
      local.get $8
      i32.ge_u
      if (result i32)
       i32.const 1
      else
       local.get $4
       i32.load8_u
       i32.const 44
       i32.ne
      end
      if
       i32.const 6
       return
      end
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      loop $while-continue|019
       local.get $4
       local.get $8
       i32.lt_u
       if (result i32)
        local.get $4
        i32.load8_u
        local.tee $2
        i32.const 9
        i32.eq
        local.get $2
        i32.const 32
        i32.eq
        i32.or
        local.get $2
        i32.const 10
        i32.eq
        i32.or
        local.get $2
        i32.const 13
        i32.eq
        i32.or
       else
        i32.const 0
       end
       if
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $while-continue|019
       end
      end
      br $while-continue|1
     end
    end
   end
   local.get $10
   i32.const 1023
   i32.and
   i32.const 1023
   i32.ne
   local.set $6
   local.get $4
   local.get $8
   i32.ge_u
   if (result i32)
    i32.const 1
   else
    local.get $4
    i32.load8_u
    i32.const 125
    i32.ne
   end
   if (result i32)
    i32.const 1
   else
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    loop $while-continue|023
     local.get $4
     local.get $8
     i32.lt_u
     if (result i32)
      local.get $4
      i32.load8_u
      local.tee $2
      i32.const 9
      i32.eq
      local.get $2
      i32.const 32
      i32.eq
      i32.or
      local.get $2
      i32.const 10
      i32.eq
      i32.or
      local.get $2
      i32.const 13
      i32.eq
      i32.or
     else
      i32.const 0
     end
     if
      local.get $4
      i32.const 1
      i32.add
      local.set $4
      br $while-continue|023
     end
    end
    local.get $4
    local.get $8
    i32.ne
   end
   local.get $6
   i32.or
   local.get $5
   i32.const -1
   i32.eq
   i32.or
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $14
   local.get $13
   local.get $15
   local.get $16
   local.get $17
   call $build/teto-generated/teto/tetoImageBegin
   local.tee $2
   if
    local.get $2
    return
   end
   local.get $0
   local.get $1
   local.get $5
   local.get $8
   local.get $8
   local.get $18
   call $build/teto-generated/teto/__bq_302aa901_parseSections
   local.tee $2
   if
    local.get $2
    return
   end
   local.get $0
   local.get $1
   local.get $3
   call $build/teto-generated/teto/tetoImageFinish
   return
  end
  i32.const 7
 )
 (func $build/teto-generated/teto/__bq_302aa901_parseSections (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i64)
  (local $13 i64)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.lt_u
   if (result i32)
    local.get $2
    i32.load8_u
    local.tee $7
    i32.const 9
    i32.eq
    local.get $7
    i32.const 32
    i32.eq
    i32.or
    local.get $7
    i32.const 10
    i32.eq
    i32.or
    local.get $7
    i32.const 13
    i32.eq
    i32.or
   else
    i32.const 0
   end
   if
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  block $folding-inner0
   local.get $2
   local.get $3
   i32.ge_u
   if (result i32)
    i32.const 1
   else
    local.get $2
    i32.load8_u
    i32.const 91
    i32.ne
   end
   br_if $folding-inner0
   local.get $2
   i32.const 1
   i32.add
   local.set $2
   loop $while-continue|01
    local.get $2
    local.get $3
    i32.lt_u
    if (result i32)
     local.get $2
     i32.load8_u
     local.tee $7
     i32.const 9
     i32.eq
     local.get $7
     i32.const 32
     i32.eq
     i32.or
     local.get $7
     i32.const 10
     i32.eq
     i32.or
     local.get $7
     i32.const 13
     i32.eq
     i32.or
    else
     i32.const 0
    end
    if
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $while-continue|01
    end
   end
   local.get $2
   local.get $3
   i32.lt_u
   if (result i32)
    local.get $2
    i32.load8_u
    i32.const 93
    i32.eq
   else
    i32.const 0
   end
   br_if $folding-inner0
   loop $while-continue|05
    local.get $2
    local.get $3
    i32.lt_u
    if
     local.get $2
     i32.load8_u
     i32.const 123
     i32.ne
     br_if $folding-inner0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     loop $while-continue|07
      local.get $2
      local.get $3
      i32.lt_u
      if (result i32)
       local.get $2
       i32.load8_u
       local.tee $7
       i32.const 9
       i32.eq
       local.get $7
       i32.const 32
       i32.eq
       i32.or
       local.get $7
       i32.const 10
       i32.eq
       i32.or
       local.get $7
       i32.const 13
       i32.eq
       i32.or
      else
       i32.const 0
      end
      if
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $while-continue|07
      end
     end
     i32.const 0
     local.set $15
     i32.const 0
     local.set $11
     i32.const 0
     local.set $17
     i32.const 0
     local.set $16
     i64.const 0
     local.set $8
     i64.const 0
     local.set $12
     i64.const 0
     local.set $13
     i64.const 0
     local.set $9
     i64.const 0
     local.set $10
     loop $while-continue|1
      local.get $2
      local.get $3
      i32.lt_u
      if (result i32)
       local.get $2
       i32.load8_u
       i32.const 125
       i32.ne
      else
       i32.const 0
      end
      if
       block $while-break|1
        local.get $2
        local.get $3
        call $build/teto-generated/teto/__bq_302aa901_parseString
        local.tee $2
        i32.const -1
        i32.eq
        br_if $folding-inner0
        call $build/teto-generated/teto/__bq_302aa901_keyId
        local.set $7
        loop $while-continue|011
         local.get $2
         local.get $3
         i32.lt_u
         if (result i32)
          local.get $2
          i32.load8_u
          local.tee $14
          i32.const 9
          i32.eq
          local.get $14
          i32.const 32
          i32.eq
          i32.or
          local.get $14
          i32.const 10
          i32.eq
          i32.or
          local.get $14
          i32.const 13
          i32.eq
          i32.or
         else
          i32.const 0
         end
         if
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|011
         end
        end
        local.get $2
        local.get $3
        i32.ge_u
        if (result i32)
         i32.const 1
        else
         local.get $2
         i32.load8_u
         i32.const 58
         i32.ne
        end
        br_if $folding-inner0
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        loop $while-continue|015
         local.get $2
         local.get $3
         i32.lt_u
         if (result i32)
          local.get $2
          i32.load8_u
          local.tee $14
          i32.const 9
          i32.eq
          local.get $14
          i32.const 32
          i32.eq
          i32.or
          local.get $14
          i32.const 10
          i32.eq
          i32.or
          local.get $14
          i32.const 13
          i32.eq
          i32.or
         else
          i32.const 0
         end
         if
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|015
         end
        end
        local.get $7
        i32.const 14
        i32.eq
        if (result i32)
         i32.const 1
        else
         local.get $7
         i32.const 15
         i32.eq
         if (result i32)
          i32.const 2
         else
          local.get $7
          i32.const 16
          i32.eq
          if (result i32)
           i32.const 4
          else
           local.get $7
           i32.const 17
           i32.eq
           if (result i32)
            i32.const 8
           else
            local.get $7
            i32.const 18
            i32.eq
            if (result i32)
             i32.const 16
            else
             i32.const 32
             i32.const 64
             i32.const 0
             local.get $7
             i32.const 20
             i32.eq
             select
             local.get $7
             i32.const 19
             i32.eq
             select
            end
           end
          end
         end
        end
        local.tee $18
        local.get $15
        i32.and
        i32.const 0
        local.get $18
        select
        br_if $folding-inner0
        local.get $7
        i32.const 14
        i32.eq
        local.tee $14
        local.get $7
        i32.const 15
        i32.eq
        i32.or
        if
         local.get $2
         local.get $3
         call $build/teto-generated/teto/__bq_302aa901_parseString
         local.tee $2
         i32.const -1
         i32.eq
         br_if $folding-inner0
         local.get $14
         if
          i32.const 3336
          i32.load
          br_if $folding-inner0
          i32.const 3328
          i32.load
          local.set $11
          i32.const 3332
          i32.load
          local.set $17
          i32.const -2128831035
          local.set $7
          i32.const 0
          local.set $14
          loop $while-continue|0119
           local.get $14
           local.get $17
           i32.lt_u
           if
            local.get $7
            local.get $11
            local.get $14
            i32.add
            i32.load8_u
            i32.xor
            i32.const 16777619
            i32.mul
            local.set $7
            local.get $14
            i32.const 1
            i32.add
            local.set $14
            br $while-continue|0119
           end
          end
          local.get $7
          local.set $11
          i32.const 3332
          i32.load
          local.set $17
         else
          block $__inlined_func$build/teto-generated/teto/__bq_302aa901_sectionFlags$561 (result i32)
           i32.const -1
           i32.const 3336
           i32.load
           br_if $__inlined_func$build/teto-generated/teto/__bq_302aa901_sectionFlags$561
           drop
           i32.const 3328
           i32.load
           local.set $16
           i32.const 3332
           i32.load
           local.set $19
           i32.const 0
           local.set $14
           i32.const 0
           local.set $7
           loop $while-continue|03
            local.get $7
            local.get $19
            i32.lt_u
            if
             i32.const -1
             local.get $14
             local.get $7
             local.get $16
             i32.add
             i32.load8_u
             local.tee $20
             i32.const 114
             i32.eq
             if (result i32)
              i32.const 1
             else
              local.get $20
              i32.const 119
              i32.eq
              if (result i32)
               i32.const 2
              else
               i32.const -1
               local.get $20
               i32.const 120
               i32.ne
               br_if $__inlined_func$build/teto-generated/teto/__bq_302aa901_sectionFlags$561
               drop
               i32.const 4
              end
             end
             local.tee $20
             i32.and
             br_if $__inlined_func$build/teto-generated/teto/__bq_302aa901_sectionFlags$561
             drop
             local.get $14
             local.get $20
             i32.or
             local.set $14
             local.get $7
             i32.const 1
             i32.add
             local.set $7
             br $while-continue|03
            end
           end
           local.get $14
          end
          local.tee $16
          i32.const -1
          i32.eq
          br_if $folding-inner0
         end
        else
         local.get $18
         if
          local.get $2
          local.get $3
          call $build/teto-generated/teto/__bq_302aa901_parseUnsigned
          local.tee $2
          i32.const -1
          i32.eq
          br_if $folding-inner0
          i32.const 3344
          i64.load
          local.set $6
          local.get $7
          i32.const 16
          i32.eq
          if
           local.get $6
           local.set $8
          else
           local.get $7
           i32.const 17
           i32.eq
           if
            local.get $6
            local.set $12
           else
            local.get $7
            i32.const 18
            i32.eq
            if
             local.get $6
             local.set $13
            else
             local.get $7
             i32.const 19
             i32.eq
             if
              local.get $6
              local.set $9
             else
              local.get $6
              local.set $10
             end
            end
           end
          end
         else
          local.get $0
          local.get $2
          local.get $3
          i32.const 0
          call $build/teto-generated/teto/__bq_302aa901_skipValue
          local.tee $2
          i32.const -1
          i32.eq
          br_if $folding-inner0
         end
        end
        local.get $15
        local.get $18
        i32.or
        local.set $15
        loop $while-continue|021
         local.get $2
         local.get $3
         i32.lt_u
         if (result i32)
          local.get $2
          i32.load8_u
          local.tee $7
          i32.const 9
          i32.eq
          local.get $7
          i32.const 32
          i32.eq
          i32.or
          local.get $7
          i32.const 10
          i32.eq
          i32.or
          local.get $7
          i32.const 13
          i32.eq
          i32.or
         else
          i32.const 0
         end
         if
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|021
         end
        end
        local.get $2
        local.get $3
        i32.lt_u
        if (result i32)
         local.get $2
         i32.load8_u
         i32.const 125
         i32.eq
        else
         i32.const 0
        end
        br_if $while-break|1
        local.get $2
        local.get $3
        i32.ge_u
        if (result i32)
         i32.const 1
        else
         local.get $2
         i32.load8_u
         i32.const 44
         i32.ne
        end
        br_if $folding-inner0
        local.get $2
        i32.const 1
        i32.add
        local.set $2
        loop $while-continue|025
         local.get $2
         local.get $3
         i32.lt_u
         if (result i32)
          local.get $2
          i32.load8_u
          local.tee $7
          i32.const 9
          i32.eq
          local.get $7
          i32.const 32
          i32.eq
          i32.or
          local.get $7
          i32.const 10
          i32.eq
          i32.or
          local.get $7
          i32.const 13
          i32.eq
          i32.or
         else
          i32.const 0
         end
         if
          local.get $2
          i32.const 1
          i32.add
          local.set $2
          br $while-continue|025
         end
        end
        br $while-continue|1
       end
      end
     end
     local.get $10
     local.get $12
     i64.gt_u
     local.set $7
     local.get $15
     i32.const 127
     i32.ne
     local.set $14
     local.get $10
     local.get $5
     i64.extend_i32_u
     local.tee $6
     local.get $9
     i64.sub
     i64.gt_u
     i64.const 0
     local.get $8
     local.get $2
     local.get $3
     i32.ge_u
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.load8_u
      i32.const 125
      i32.ne
     end
     local.get $14
     i32.or
     select
     i64.eqz
     if (result i32)
      i32.const 1
     else
      local.get $8
      local.get $8
      i64.const 1
      i64.sub
      i64.and
      i64.const 0
      i64.ne
     end
     if (result i32)
      i32.const 1
     else
      local.get $13
      local.get $8
      i64.rem_u
      i64.const 0
      i64.ne
     end
     local.get $7
     i32.or
     local.get $6
     local.get $9
     i64.lt_u
     i32.or
     i32.or
     local.get $9
     i64.const 4294967295
     i64.gt_u
     i32.or
     local.get $10
     i64.const 4294967295
     i64.gt_u
     i32.or
     br_if $folding-inner0
     local.get $0
     local.get $1
     local.get $11
     local.get $17
     local.get $13
     local.get $12
     local.get $16
     local.get $4
     local.get $9
     i32.wrap_i64
     i32.add
     local.get $10
     i32.wrap_i64
     call $build/teto-generated/teto/tetoImageSegment
     local.tee $7
     if
      local.get $7
      return
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     loop $while-continue|029
      local.get $2
      local.get $3
      i32.lt_u
      if (result i32)
       local.get $2
       i32.load8_u
       local.tee $7
       i32.const 9
       i32.eq
       local.get $7
       i32.const 32
       i32.eq
       i32.or
       local.get $7
       i32.const 10
       i32.eq
       i32.or
       local.get $7
       i32.const 13
       i32.eq
       i32.or
      else
       i32.const 0
      end
      if
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $while-continue|029
      end
     end
     local.get $2
     local.get $3
     i32.lt_u
     if (result i32)
      local.get $2
      i32.load8_u
      i32.const 93
      i32.eq
     else
      i32.const 0
     end
     if
      i32.const 0
      return
     end
     local.get $2
     local.get $3
     i32.ge_u
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.load8_u
      i32.const 44
      i32.ne
     end
     br_if $folding-inner0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     loop $while-continue|033
      local.get $2
      local.get $3
      i32.lt_u
      if (result i32)
       local.get $2
       i32.load8_u
       local.tee $7
       i32.const 9
       i32.eq
       local.get $7
       i32.const 32
       i32.eq
       i32.or
       local.get $7
       i32.const 10
       i32.eq
       i32.or
       local.get $7
       i32.const 13
       i32.eq
       i32.or
      else
       i32.const 0
      end
      if
       local.get $2
       i32.const 1
       i32.add
       local.set $2
       br $while-continue|033
      end
     end
     br $while-continue|05
    end
   end
   i32.const 8
   return
  end
  i32.const 8
 )
