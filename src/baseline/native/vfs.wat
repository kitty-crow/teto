
 (func $build/teto-generated/teto/tetoVfsResolve (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  local.get $4
  i32.const 4096
  i32.gt_u
  i32.or
  if (result i32)
   i32.const 0
  else
   memory.size
   i32.const 16
   i32.shl
   local.tee $6
   local.get $3
   i32.ge_u
   local.get $4
   local.get $6
   local.get $3
   i32.sub
   i32.le_u
   i32.and
  end
  i32.eqz
  if
   i32.const -22
   return
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  i32.const 0
  i32.ne
  call $build/teto-generated/teto/__bq_12aa20f2_resolveRange
 )
 (func $build/teto-generated/teto/tetoVfsAccess (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  i32.const 7
  i32.le_u
  i32.const 0
  local.get $2
  i32.eqz
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 3236
   i32.load
   i32.ge_u
  end
  if (result i32)
   i32.const 0
  else
   i32.const 3232
   i32.load
   local.get $2
   i32.const 6
   i32.shl
   i32.add
   i32.load
  end
  select
  if (result i32)
   local.get $1
   local.get $2
   local.get $3
   call $build/teto-generated/teto/__bq_12aa20f2_allowed
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsReadData (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  i32.const 128
  i32.load
  i32.const 1
  i32.ne
  if (result i32)
   i32.const 0
  else
   local.get $3
   i32.const 124
   i32.load
   local.tee $5
   i32.sub
   local.tee $6
   i32.const 132
   i32.load
   local.tee $0
   i32.le_u
   local.get $3
   local.get $5
   i32.ge_u
   i32.and
   local.get $4
   local.get $0
   local.get $6
   i32.sub
   i32.le_u
   i32.and
  end
  i32.eqz
  if
   i32.const -22
   return
  end
  block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_readData$3
   local.get $1
   i32.eqz
   i32.const 3272
   i32.load
   i32.const 1
   i32.ne
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 3236
    i32.load
    i32.ge_u
   end
   if (result i32)
    i32.const 0
   else
    i32.const 3232
    i32.load
    local.get $1
    i32.const 6
    i32.shl
    i32.add
    i32.load
   end
   local.tee $0
   i32.const 3
   i32.ne
   local.get $0
   i32.const 1
   i32.ne
   i32.and
   if
    i32.const -22
    local.set $4
    br $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_readData$3
   end
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   local.tee $0
   i64.load offset=24
   local.tee $7
   local.get $2
   i64.le_u
   if
    i32.const 0
    local.set $4
    br $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_readData$3
   end
   local.get $7
   local.get $2
   i64.sub
   local.tee $7
   local.get $4
   i64.extend_i32_u
   i64.lt_u
   if
    local.get $7
    i32.wrap_i64
    local.set $4
   end
   local.get $4
   if
    local.get $3
    local.get $0
    i32.load offset=32
    local.get $2
    i32.wrap_i64
    i32.add
    local.get $4
    memory.copy
   end
  end
  local.get $4
 )
 (func $build/teto-generated/teto/__bq_12aa20f2_resolveRange (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $5
  i32.const 1
  i32.shr_u
  local.tee $10
  i32.const 32
  i32.gt_u
  if
   i32.const -40
   return
  end
  i32.const 3268
  i32.load
  local.get $2
  local.get $4
  if (result i32)
   local.get $3
   i32.load8_u
   i32.const 47
   i32.eq
  else
   i32.const 0
  end
  select
  local.tee $2
  if (result i32)
   local.get $2
   i32.eqz
   i32.const 3272
   i32.load
   i32.const 1
   i32.ne
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $2
    i32.const 3236
    i32.load
    i32.ge_u
   end
   if (result i32)
    i32.const 0
   else
    i32.const 3232
    i32.load
    local.get $2
    i32.const 6
    i32.shl
    i32.add
    i32.load
   end
   i32.const 2
   i32.ne
  else
   i32.const 1
  end
  if
   i32.const -20
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const -2
   return
  end
  local.get $5
  i32.const 1
  i32.and
  local.set $9
  local.get $3
  local.get $4
  i32.add
  local.set $7
  loop $while-continue|0
   local.get $3
   local.get $7
   i32.lt_u
   if
    block $while-break|0
     loop $while-continue|1
      local.get $3
      local.get $7
      i32.lt_u
      if (result i32)
       local.get $3
       i32.load8_u
       i32.const 47
       i32.eq
      else
       i32.const 0
      end
      if
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|1
      end
     end
     local.get $3
     local.get $7
     i32.eq
     br_if $while-break|0
     local.get $3
     local.set $6
     loop $while-continue|2
      local.get $3
      local.get $7
      i32.lt_u
      if (result i32)
       local.get $3
       i32.load8_u
       i32.const 47
       i32.ne
      else
       i32.const 0
      end
      if
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|2
      end
     end
     local.get $3
     local.get $6
     i32.sub
     local.tee $14
     i32.const 255
     i32.gt_u
     if
      i32.const -36
      return
     end
     local.get $3
     local.set $5
     block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_moreComponents$30 (result i32)
      loop $while-continue|01
       local.get $5
       local.get $7
       i32.lt_u
       if
        i32.const 1
        local.get $5
        i32.load8_u
        i32.const 47
        i32.ne
        br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_moreComponents$30
        drop
        local.get $5
        i32.const 1
        i32.add
        local.set $5
        br $while-continue|01
       end
      end
      i32.const 0
     end
     i32.eqz
     local.set $11
     local.get $14
     i32.const 1
     i32.eq
     if (result i32)
      local.get $6
      i32.load8_u
      i32.const 46
      i32.eq
     else
      i32.const 0
     end
     br_if $while-continue|0
     local.get $14
     i32.const 2
     i32.eq
     if (result i32)
      local.get $6
      i32.load8_u
      i32.const 46
      i32.eq
     else
      i32.const 0
     end
     if (result i32)
      local.get $6
      i32.load8_u offset=1
      i32.const 46
      i32.eq
     else
      i32.const 0
     end
     local.tee $8
     if
      block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_parentOf$589
       i32.const 3268
       i32.load
       local.tee $5
       local.get $2
       i32.eq
       br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_parentOf$589
       i32.const 3264
       i32.load
       local.set $12
       i32.const 0
       local.set $5
       loop $while-continue|02
        local.get $5
        local.get $12
        i32.lt_u
        if
         local.get $2
         i32.const 3240
         i32.load
         local.get $5
         i32.const 24
         i32.mul
         i32.add
         local.tee $13
         i32.load offset=4
         i32.eq
         if
          local.get $13
          i32.load
          local.set $5
          br $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_parentOf$589
         end
         local.get $5
         i32.const 1
         i32.add
         local.set $5
         br $while-continue|02
        end
       end
       i32.const 0
       local.set $5
      end
     else
      local.get $2
      local.set $5
     end
     local.get $5
     i32.const 1
     local.get $8
     select
     i32.eqz
     if
      i32.const -2
      return
     end
     local.get $8
     if
      local.get $5
      local.set $2
      br $while-continue|0
     end
     local.get $2
     i32.eqz
     i32.const 3272
     i32.load
     i32.const 1
     i32.ne
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.const 3236
      i32.load
      i32.ge_u
     end
     if (result i32)
      i32.const 0
     else
      i32.const 3232
      i32.load
      local.get $2
      i32.const 6
      i32.shl
      i32.add
      i32.load
     end
     i32.const 2
     i32.ne
     if
      i32.const -20
      return
     end
     local.get $1
     local.get $2
     i32.const 1
     call $build/teto-generated/teto/__bq_12aa20f2_allowed
     i32.eqz
     if
      i32.const -13
      return
     end
     local.get $2
     local.get $6
     local.get $14
     call $build/teto-generated/teto/__bq_12aa20f2_findChild
     local.tee $5
     i32.eqz
     if
      i32.const -2
      return
     end
     local.get $9
     local.get $11
     i32.eqz
     i32.or
     local.get $3
     local.get $7
     i32.lt_u
     i32.or
     local.get $5
     i32.eqz
     i32.const 3272
     i32.load
     i32.const 1
     i32.ne
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $5
      i32.const 3236
      i32.load
      i32.ge_u
     end
     if (result i32)
      i32.const 0
     else
      i32.const 3232
      i32.load
      local.get $5
      i32.const 6
      i32.shl
      i32.add
      i32.load
     end
     i32.const 3
     i32.eq
     i32.and
     if (result i32)
      i32.const 3232
      i32.load
      local.get $5
      i32.const 6
      i32.shl
      i32.add
      local.tee $5
      i32.load offset=32
      local.set $6
      local.get $5
      i64.load offset=24
      i32.wrap_i64
      local.tee $5
      i32.eqz
      local.get $5
      i32.const 4096
      i32.gt_u
      i32.or
      if (result i32)
       i32.const -2
      else
       local.get $0
       local.get $1
       i32.const 3268
       i32.load
       local.get $2
       local.get $6
       i32.load8_u
       i32.const 47
       i32.eq
       select
       local.get $6
       local.get $5
       local.get $10
       i32.const 1
       i32.add
       i32.const 1
       i32.shl
       i32.const 1
       i32.or
       call $build/teto-generated/teto/__bq_12aa20f2_resolveRange
      end
     else
      local.get $5
     end
     local.tee $2
     i32.const 0
     i32.lt_s
     if
      local.get $2
      return
     end
     br $while-continue|0
    end
   end
  end
  local.get $4
  if (result i32)
   local.get $7
   i32.const 1
   i32.sub
   i32.load8_u
   i32.const 47
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.eqz
   i32.const 3272
   i32.load
   i32.const 1
   i32.ne
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $2
    i32.const 3236
    i32.load
    i32.ge_u
   end
   if (result i32)
    i32.const 0
   else
    i32.const 3232
    i32.load
    local.get $2
    i32.const 6
    i32.shl
    i32.add
    i32.load
   end
   i32.const 2
   i32.ne
  else
   i32.const 0
  end
  if
   i32.const -20
   return
  end
  local.get $2
 )
 (func $build/teto-generated/teto/__bq_12aa20f2_findChild (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$1 (result i32)
   i32.const 0
   local.get $2
   i32.eqz
   local.get $2
   i32.const 255
   i32.gt_u
   i32.or
   br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$1
   drop
   loop $while-continue|0
    local.get $2
    local.get $3
    i32.gt_u
    if
     i32.const 0
     local.get $1
     local.get $3
     i32.add
     i32.load8_u
     local.tee $5
     i32.eqz
     local.get $5
     i32.const 47
     i32.eq
     i32.or
     br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$1
     drop
     local.get $3
     i32.const 1
     i32.add
     local.set $3
     br $while-continue|0
    end
   end
   i32.const 0
   local.get $2
   i32.const 1
   i32.eq
   if (result i32)
    local.get $1
    i32.load8_u
    i32.const 46
    i32.eq
   else
    i32.const 0
   end
   br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$1
   drop
   i32.const 0
   local.get $2
   i32.const 2
   i32.eq
   if (result i32)
    local.get $1
    i32.load8_u
    i32.const 46
    i32.eq
   else
    i32.const 0
   end
   if (result i32)
    local.get $1
    i32.load8_u offset=1
    i32.const 46
    i32.eq
   else
    i32.const 0
   end
   br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$1
   drop
   i32.const 1
  end
  i32.eqz
  if
   i32.const 0
   return
  end
  i32.const -2128831035
  local.set $5
  loop $while-continue|00
   local.get $2
   local.get $4
   i32.gt_u
   if
    local.get $5
    local.get $1
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
    br $while-continue|00
   end
  end
  i32.const 3264
  i32.load
  local.set $6
  i32.const 0
  local.set $4
  loop $while-continue|01
   local.get $4
   local.get $6
   i32.lt_u
   if
    local.get $0
    i32.const 3240
    i32.load
    local.get $4
    i32.const 24
    i32.mul
    i32.add
    local.tee $8
    i32.load
    i32.eq
    if (result i32)
     block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_sameName$11 (result i32)
      i32.const 0
      local.get $2
      local.get $8
      i32.load offset=12
      i32.ne
      if (result i32)
       i32.const 1
      else
       local.get $5
       local.get $8
       i32.load offset=16
       i32.ne
      end
      br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_sameName$11
      drop
      local.get $8
      i32.load offset=8
      local.set $7
      i32.const 0
      local.set $3
      loop $while-continue|001
       local.get $2
       local.get $3
       i32.gt_u
       if
        i32.const 0
        local.get $3
        local.get $7
        i32.add
        i32.load8_u
        local.get $1
        local.get $3
        i32.add
        i32.load8_u
        i32.ne
        br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_sameName$11
        drop
        local.get $3
        i32.const 1
        i32.add
        local.set $3
        br $while-continue|001
       end
      end
      i32.const 1
     end
    else
     i32.const 0
    end
    if
     local.get $8
     i32.load offset=4
     return
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $while-continue|01
   end
  end
  i32.const 0
 )
 (func $build/teto-generated/teto/__bq_12aa20f2_allowed (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 3232
  i32.load
  local.get $1
  i32.const 6
  i32.shl
  i32.add
  local.set $1
  local.get $0
  i32.load offset=36
  local.tee $4
  i32.eqz
  if
   i32.const 1
   return
  end
  local.get $1
  i32.load offset=12
  local.set $6
  local.get $0
  i32.load offset=52
  local.set $5
  local.get $2
  local.get $2
  local.get $1
  i32.load offset=4
  local.get $1
  i32.load offset=8
  local.get $4
  i32.eq
  if (result i32)
   i32.const 6
  else
   i32.const 3
   i32.const 0
   local.get $5
   local.get $6
   i32.eq
   if (result i32)
    i32.const 1
   else
    local.get $0
    i32.load offset=56
    local.set $1
    block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_inSupplementaryGroup$28 (result i32)
     loop $while-continue|0
      local.get $1
      local.get $3
      i32.gt_u
      if
       i32.const 1
       local.get $6
       local.get $0
       i32.const -64
       i32.sub
       local.get $3
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.eq
       br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_inSupplementaryGroup$28
       drop
       local.get $3
       i32.const 1
       i32.add
       local.set $3
       br $while-continue|0
      end
     end
     i32.const 0
    end
   end
   select
  end
  i32.shr_u
  i32.and
  i32.eq
 )
 (func $build/teto-generated/teto/tetoVfsUid (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.eqz
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3236
   i32.load
   i32.ge_u
  end
  if (result i32)
   i32.const 0
  else
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load
  end
  if (result i32)
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load offset=8
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsRoot (param $0 i32) (result i32)
  i32.const 3272
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 3268
   i32.load
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsNlink (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.eqz
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3236
   i32.load
   i32.ge_u
  end
  if (result i32)
   i32.const 0
  else
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load
  end
  if (result i32)
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load offset=16
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsMode (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.eqz
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3236
   i32.load
   i32.ge_u
  end
  if (result i32)
   i32.const 0
  else
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load
  end
  if (result i32)
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load offset=4
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsLookup (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 3272
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
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
    local.tee $4
    i32.sub
    local.tee $0
    i32.const 132
    i32.load
    local.tee $5
    i32.le_u
    local.get $2
    local.get $4
    i32.ge_u
    i32.and
    local.get $3
    local.get $5
    local.get $0
    i32.sub
    i32.le_u
    i32.and
   end
  else
   i32.const 0
  end
  if (result i32)
   block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$2 (result i32)
    i32.const 0
    local.set $0
    i32.const 0
    local.get $3
    i32.eqz
    local.get $3
    i32.const 255
    i32.gt_u
    i32.or
    br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$2
    drop
    loop $while-continue|0
     local.get $0
     local.get $3
     i32.lt_u
     if
      i32.const 0
      local.get $0
      local.get $2
      i32.add
      i32.load8_u
      local.tee $4
      i32.eqz
      local.get $4
      i32.const 47
      i32.eq
      i32.or
      br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$2
      drop
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|0
     end
    end
    i32.const 0
    local.get $3
    i32.const 1
    i32.eq
    if (result i32)
     local.get $2
     i32.load8_u
     i32.const 46
     i32.eq
    else
     i32.const 0
    end
    br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$2
    drop
    i32.const 0
    local.get $3
    i32.const 2
    i32.eq
    if (result i32)
     local.get $2
     i32.load8_u
     i32.const 46
     i32.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $2
     i32.load8_u offset=1
     i32.const 46
     i32.eq
    else
     i32.const 0
    end
    br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$2
    drop
    i32.const 1
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.eqz
   i32.const 3272
   i32.load
   i32.const 1
   i32.ne
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $1
    i32.const 3236
    i32.load
    i32.ge_u
   end
   if (result i32)
    i32.const 0
   else
    i32.const 3232
    i32.load
    local.get $1
    i32.const 6
    i32.shl
    i32.add
    i32.load
   end
   i32.const 2
   i32.ne
  else
   i32.const 1
  end
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $2
  local.get $3
  call $build/teto-generated/teto/__bq_12aa20f2_findChild
 )
 (func $build/teto-generated/teto/tetoVfsLoaded (param $0 i32) (result i32)
  i32.const 3272
  i32.load
  i32.const 1
  i32.eq
 )
 (func $build/teto-generated/teto/tetoVfsKind (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.eqz
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3236
   i32.load
   i32.ge_u
  end
  if
   i32.const 0
   return
  end
  i32.const 3232
  i32.load
  local.get $1
  i32.const 6
  i32.shl
  i32.add
  i32.load
 )
 (func $build/teto-generated/teto/tetoVfsInodeCount (param $0 i32) (result i32)
  i32.const 3272
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 3260
   i32.load
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsGid (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.eqz
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3236
   i32.load
   i32.ge_u
  end
  if (result i32)
   i32.const 0
  else
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load
  end
  if (result i32)
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load offset=12
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsFileSize (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.eqz
  i32.const 3272
  i32.load
  i32.const 1
  i32.ne
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 3236
   i32.load
   i32.ge_u
  end
  if (result i32)
   i32.const 0
  else
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i32.load
  end
  if (result i64)
   i32.const 3232
   i32.load
   local.get $1
   i32.const 6
   i32.shl
   i32.add
   i64.load offset=24
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoVfsDentryCount (param $0 i32) (result i32)
  i32.const 3272
  i32.load
  i32.const 1
  i32.eq
  if (result i32)
   i32.const 3264
   i32.load
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoLoadVfs (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  i32.const 128
  i32.load
  i32.const 1
  i32.ne
  if (result i32)
   i32.const 0
  else
   local.get $1
   i32.const 124
   i32.load
   local.tee $0
   i32.sub
   local.tee $5
   i32.const 132
   i32.load
   local.tee $6
   i32.le_u
   local.get $0
   local.get $1
   i32.le_u
   i32.and
   local.get $2
   local.get $6
   local.get $5
   i32.sub
   i32.le_u
   i32.and
  end
  i32.eqz
  local.get $2
  i32.const 32
  i32.lt_u
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load
   i32.const 827541078
   i32.ne
  end
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.load offset=4
   i32.const 1
   i32.ne
  end
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $1
   i32.load offset=20
   i32.ne
  end
  if
   i32.const 1
   return
  end
  i32.const 3252
  i32.load
  i32.const 3248
  i32.load
  i32.sub
  local.set $10
  local.get $1
  i32.load offset=16
  local.tee $6
  i32.eqz
  local.get $1
  i32.load offset=8
  local.tee $7
  i32.eqz
  local.get $7
  i32.const 3236
  i32.load
  local.tee $8
  i32.ge_u
  i32.or
  local.get $1
  i32.load offset=12
  local.tee $11
  i32.const 3244
  i32.load
  local.tee $5
  i32.gt_u
  i32.or
  i32.or
  local.get $6
  local.get $8
  i32.ge_u
  i32.or
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 32
  i32.add
  local.set $9
  local.get $2
  i32.const 32
  i32.sub
  local.set $12
  i32.const -2128831035
  local.set $0
  loop $while-continue|0
   local.get $3
   local.get $12
   i32.lt_u
   if
    local.get $0
    local.get $3
    local.get $9
    i32.add
    i32.load8_u
    i32.xor
    i32.const 16777619
    i32.mul
    local.set $0
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  local.get $1
  i32.load offset=24
  local.get $0
  i32.ne
  if
   i32.const 3
   return
  end
  i32.const 3240
  i32.load
  i32.const 3248
  i32.load
  local.set $3
  i32.const 3256
  i32.load
  local.set $9
  i32.const 3232
  i32.load
  i32.const 0
  local.get $8
  i32.const 6
  i32.shl
  memory.fill
  i32.const 0
  local.get $5
  i32.const 24
  i32.mul
  memory.fill
  local.get $3
  local.get $9
  i32.lt_u
  if
   local.get $3
   i32.const 0
   local.get $9
   local.get $3
   i32.sub
   memory.fill
  end
  i32.const 3256
  local.get $3
  i64.extend_i32_u
  i64.store32
  i32.const 3272
  i64.const 0
  i64.store32
  local.get $1
  i32.const 32
  i32.add
  local.get $1
  local.get $2
  i32.add
  local.tee $0
  local.get $7
  local.get $8
  local.get $10
  call $build/teto-generated/teto/__bq_12aa20f2_loadInodes
  local.tee $4
  i64.const 0
  i64.lt_s
  if
   i64.const 0
   local.get $4
   i64.sub
   i32.wrap_i64
   return
  end
  i32.const 3232
  i32.load
  local.get $6
  i32.const 6
  i32.shl
  i32.add
  i32.load
  i32.const 2
  i32.ne
  if
   i32.const 2
   return
  end
  local.get $4
  i32.wrap_i64
  local.get $0
  local.get $11
  local.get $8
  call $build/teto-generated/teto/__bq_12aa20f2_loadDentries
  local.tee $4
  i64.const 0
  i64.lt_s
  if
   i64.const 0
   local.get $4
   i64.sub
   i32.wrap_i64
   return
  end
  local.get $4
  local.get $0
  i64.extend_i32_u
  i64.ne
  if
   i32.const 2
   return
  end
  i32.const 3260
  local.get $7
  i64.extend_i32_u
  i64.store32
  i32.const 3264
  local.get $11
  i64.extend_i32_u
  i64.store32
  i32.const 3268
  local.get $6
  i64.extend_i32_u
  i64.store32
  i32.const 60
  i32.load
  local.set $1
  i32.const 64
  i32.load
  local.set $2
  i32.const 0
  local.set $0
  loop $while-continue|01
   local.get $0
   local.get $2
   i32.lt_u
   if
    local.get $1
    local.get $0
    i32.const 352
    i32.mul
    i32.add
    local.tee $3
    i32.load offset=4
    if (result i32)
     local.get $3
     i32.load offset=312
    else
     i32.const 1
    end
    i32.eqz
    if
     local.get $3
     local.get $6
     i64.extend_i32_u
     i64.store32 offset=312
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|01
   end
  end
  i32.const 3276
  i64.const 0
  i64.store32
  i32.const 3280
  i32.const 3280
  i64.load
  i64.const 1
  i64.add
  i64.store
  i32.const 3272
  i64.const 1
  i64.store32
  i32.const 0
 )
 (func $build/teto-generated/teto/__bq_12aa20f2_loadInodes (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  loop $while-continue|0
   local.get $2
   local.get $5
   i32.gt_u
   if
    local.get $1
    local.get $0
    i32.sub
    i32.const 56
    i32.lt_u
    local.get $0
    local.get $1
    i32.gt_u
    i32.or
    if
     i64.const -2
     return
    end
    local.get $0
    i32.load offset=4
    local.set $9
    local.get $0
    i32.load offset=24
    local.tee $10
    local.get $1
    local.get $0
    i32.const 56
    i32.add
    local.tee $7
    i32.sub
    i32.gt_u
    local.get $1
    local.get $7
    i32.lt_u
    local.set $7
    local.get $0
    i32.load
    local.tee $8
    i32.eqz
    local.get $3
    local.get $8
    i32.le_u
    i32.or
    if (result i32)
     i32.const 1
    else
     local.get $9
     i32.const 2
     i32.ne
     local.get $9
     i32.const 1
     i32.ne
     i32.and
     local.get $9
     i32.const 3
     i32.ne
     i32.and
    end
    if (result i32)
     i32.const 0
    else
     local.get $0
     i32.load offset=20
    end
    i32.eqz
    local.get $4
    local.get $10
    i32.lt_u
    i32.or
    if (result i32)
     i32.const 1
    else
     local.get $9
     i32.const 2
     i32.eq
     local.get $10
     i32.const 0
     i32.ne
     i32.and
    end
    local.get $7
    i32.or
    i32.or
    if
     i64.const -2
     return
    end
    i32.const 3232
    i32.load
    local.get $8
    i32.const 6
    i32.shl
    i32.add
    local.tee $11
    i32.load
    if
     i64.const -5
     return
    end
    block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$19 (result i32)
     i32.const 0
     local.get $10
     i32.eqz
     br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$19
     drop
     i32.const -1
     local.get $10
     i32.const 3
     i32.add
     i32.const -4
     i32.and
     local.tee $7
     local.get $10
     i32.lt_u
     br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$19
     drop
     i32.const -1
     local.get $7
     i32.const 3252
     i32.load
     local.tee $12
     i32.const 3256
     i32.load
     local.tee $8
     i32.sub
     i32.gt_u
     local.get $8
     local.get $12
     i32.gt_u
     i32.or
     br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$19
     drop
     i32.const 3256
     local.get $7
     local.get $8
     i32.add
     i64.extend_i32_u
     i64.store32
     local.get $8
    end
    local.tee $7
    i32.const -1
    i32.eq
    if
     i64.const -4
     return
    end
    local.get $10
    if
     local.get $7
     local.get $0
     i32.const 56
     i32.add
     local.get $10
     memory.copy
    end
    local.get $11
    local.get $9
    i64.extend_i32_u
    i64.store32
    local.get $11
    local.get $0
    i32.load offset=8
    i32.const 4095
    i32.and
    i64.extend_i32_u
    i64.store32 offset=4
    local.get $11
    local.get $0
    i64.load32_u offset=12
    i64.store32 offset=8
    local.get $11
    local.get $0
    i64.load32_u offset=16
    i64.store32 offset=12
    local.get $11
    local.get $0
    i64.load32_u offset=20
    i64.store32 offset=16
    local.get $11
    i64.const 0
    i64.store32 offset=20
    local.get $11
    local.get $10
    i64.extend_i32_u
    local.tee $6
    i64.store offset=24
    local.get $11
    local.get $7
    i64.extend_i32_u
    i64.store32 offset=32
    local.get $11
    local.get $6
    i64.store32 offset=36
    local.get $11
    local.get $0
    i64.load offset=32
    i64.store offset=40
    local.get $11
    local.get $0
    i64.load offset=40
    i64.store offset=48
    local.get $11
    local.get $0
    i64.load offset=48
    i64.store offset=56
    local.get $10
    i32.const 56
    i32.add
    local.tee $7
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee $8
    local.get $1
    local.get $0
    i32.sub
    i32.gt_u
    local.get $7
    local.get $8
    i32.gt_u
    i32.or
    if
     i64.const -2
     return
    end
    local.get $0
    local.get $8
    i32.add
    local.set $0
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|0
   end
  end
  local.get $0
  i64.extend_i32_u
 )
 (func $build/teto-generated/teto/__bq_12aa20f2_loadDentries (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  loop $while-continue|0
   local.get $2
   local.get $6
   i32.gt_u
   if
    local.get $1
    local.get $0
    i32.sub
    i32.const 16
    i32.lt_u
    local.get $0
    local.get $1
    i32.gt_u
    i32.or
    if
     i64.const -2
     return
    end
    local.get $0
    i32.load offset=8
    local.set $10
    local.get $0
    i32.const 16
    i32.add
    local.set $11
    local.get $0
    i32.load offset=4
    local.tee $9
    i32.eqz
    local.get $0
    i32.load
    local.tee $7
    i32.eqz
    i32.or
    local.get $3
    local.get $7
    i32.le_u
    i32.or
    local.get $3
    local.get $9
    i32.le_u
    i32.or
    if (result i32)
     i32.const 1
    else
     i32.const 3232
     i32.load
     local.get $7
     i32.const 6
     i32.shl
     i32.add
     i32.load
     i32.const 2
     i32.ne
    end
    if (result i32)
     i32.const 0
    else
     i32.const 3232
     i32.load
     local.get $9
     i32.const 6
     i32.shl
     i32.add
     i32.load
    end
    i32.eqz
    local.get $10
    local.get $1
    local.get $11
    i32.sub
    i32.gt_u
    i32.or
    if (result i32)
     i32.const 0
    else
     block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$4 (result i32)
      i32.const 0
      local.set $4
      i32.const 0
      local.get $10
      i32.eqz
      local.get $10
      i32.const 255
      i32.gt_u
      i32.or
      br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$4
      drop
      loop $while-continue|00
       local.get $4
       local.get $10
       i32.lt_u
       if
        i32.const 0
        local.get $4
        local.get $11
        i32.add
        i32.load8_u
        local.tee $5
        i32.eqz
        local.get $5
        i32.const 47
        i32.eq
        i32.or
        br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$4
        drop
        local.get $4
        i32.const 1
        i32.add
        local.set $4
        br $while-continue|00
       end
      end
      i32.const 0
      local.get $10
      i32.const 1
      i32.eq
      if (result i32)
       local.get $11
       i32.load8_u
       i32.const 46
       i32.eq
      else
       i32.const 0
      end
      br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$4
      drop
      i32.const 0
      local.get $10
      i32.const 2
      i32.eq
      if (result i32)
       local.get $11
       i32.load8_u
       i32.const 46
       i32.eq
      else
       i32.const 0
      end
      if (result i32)
       local.get $11
       i32.load8_u offset=1
       i32.const 46
       i32.eq
      else
       i32.const 0
      end
      br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_validName$4
      drop
      i32.const 1
     end
    end
    i32.eqz
    if
     i64.const -2
     return
    end
    i32.const -2128831035
    local.set $8
    i32.const 0
    local.set $5
    loop $while-continue|02
     local.get $5
     local.get $10
     i32.lt_u
     if
      local.get $8
      local.get $5
      local.get $11
      i32.add
      i32.load8_u
      i32.xor
      i32.const 16777619
      i32.mul
      local.set $8
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $while-continue|02
     end
    end
    i32.const 0
    local.set $5
    loop $while-continue|1
     local.get $5
     local.get $6
     i32.lt_u
     if
      local.get $7
      i32.const 3240
      i32.load
      local.get $5
      i32.const 24
      i32.mul
      i32.add
      local.tee $4
      i32.load
      i32.eq
      if (result i32)
       block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_sameName$20 (result i32)
        i32.const 0
        local.get $10
        local.get $4
        i32.load offset=12
        i32.ne
        if (result i32)
         i32.const 1
        else
         local.get $8
         local.get $4
         i32.load offset=16
         i32.ne
        end
        br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_sameName$20
        drop
        local.get $4
        i32.load offset=8
        local.set $12
        i32.const 0
        local.set $4
        loop $while-continue|001
         local.get $4
         local.get $10
         i32.lt_u
         if
          i32.const 0
          local.get $4
          local.get $12
          i32.add
          i32.load8_u
          local.get $4
          local.get $11
          i32.add
          i32.load8_u
          i32.ne
          br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_sameName$20
          drop
          local.get $4
          i32.const 1
          i32.add
          local.set $4
          br $while-continue|001
         end
        end
        i32.const 1
       end
      else
       i32.const 0
      end
      if
       i64.const -5
       return
      end
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $while-continue|1
     end
    end
    block $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$21 (result i32)
     i32.const 0
     local.get $10
     i32.eqz
     br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$21
     drop
     i32.const -1
     local.get $10
     i32.const 3
     i32.add
     i32.const -4
     i32.and
     local.tee $4
     local.get $10
     i32.lt_u
     br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$21
     drop
     i32.const -1
     local.get $4
     i32.const 3252
     i32.load
     local.tee $5
     i32.const 3256
     i32.load
     local.tee $12
     i32.sub
     i32.gt_u
     local.get $5
     local.get $12
     i32.lt_u
     i32.or
     br_if $__inlined_func$build/teto-generated/teto/__bq_12aa20f2_allocateData$21
     drop
     i32.const 3256
     local.get $4
     local.get $12
     i32.add
     i64.extend_i32_u
     i64.store32
     local.get $12
    end
    local.tee $4
    i32.const -1
    i32.eq
    if
     i64.const -4
     return
    end
    local.get $4
    local.get $11
    local.get $10
    memory.copy
    i32.const 3240
    i32.load
    local.get $6
    i32.const 24
    i32.mul
    i32.add
    local.tee $5
    local.get $7
    i64.extend_i32_u
    i64.store32
    local.get $5
    local.get $9
    i64.extend_i32_u
    i64.store32 offset=4
    local.get $5
    local.get $4
    i64.extend_i32_u
    i64.store32 offset=8
    local.get $5
    local.get $10
    i64.extend_i32_u
    i64.store32 offset=12
    local.get $5
    local.get $8
    i64.extend_i32_u
    i64.store32 offset=16
    local.get $5
    i64.const 0
    i64.store32 offset=20
    local.get $10
    i32.const 16
    i32.add
    local.tee $4
    i32.const 3
    i32.add
    i32.const -4
    i32.and
    local.tee $5
    local.get $1
    local.get $0
    i32.sub
    i32.gt_u
    local.get $4
    local.get $5
    i32.gt_u
    i32.or
    if
     i64.const -2
     return
    end
    local.get $0
    local.get $5
    i32.add
    local.set $0
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $while-continue|0
   end
  end
  local.get $0
  i64.extend_i32_u
 )
