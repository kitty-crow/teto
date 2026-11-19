
 (func $build/teto-generated/teto-threads/rv64RegisterValue (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.eqz
   if
    local.get $2
    local.get $3
    i64.mul
    return
   end
   local.get $0
   i32.const 1
   i32.eq
   if
    local.get $3
    i64.const 4294967295
    i64.and
    local.tee $4
    local.get $2
    i64.const 32
    i64.shr_u
    local.tee $5
    i64.mul
    local.get $4
    local.get $2
    i64.const 4294967295
    i64.and
    local.tee $4
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $6
    local.get $5
    local.get $3
    i64.const 32
    i64.shr_u
    local.tee $5
    i64.mul
    local.get $6
    i64.const 32
    i64.shr_u
    i64.add
    local.get $4
    local.get $5
    i64.mul
    local.get $6
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    local.tee $4
    local.get $3
    i64.sub
    local.get $4
    local.get $2
    i64.const 0
    i64.lt_s
    select
    local.tee $4
    local.get $2
    i64.sub
    local.get $4
    local.get $3
    i64.const 0
    i64.lt_s
    select
    return
   end
   local.get $0
   i32.const 2
   i32.eq
   if
    local.get $3
    i64.const 4294967295
    i64.and
    local.tee $4
    local.get $2
    i64.const 32
    i64.shr_u
    local.tee $5
    i64.mul
    local.get $4
    local.get $2
    i64.const 4294967295
    i64.and
    local.tee $4
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $6
    local.get $5
    local.get $3
    i64.const 32
    i64.shr_u
    local.tee $5
    i64.mul
    local.get $6
    i64.const 32
    i64.shr_u
    i64.add
    local.get $4
    local.get $5
    i64.mul
    local.get $6
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    local.tee $4
    local.get $3
    i64.sub
    local.get $4
    local.get $2
    i64.const 0
    i64.lt_s
    select
    return
   end
   local.get $0
   i32.const 3
   i32.eq
   if
    local.get $3
    i64.const 4294967295
    i64.and
    local.tee $4
    local.get $2
    i64.const 32
    i64.shr_u
    local.tee $5
    i64.mul
    local.get $2
    i64.const 4294967295
    i64.and
    local.tee $2
    local.get $4
    i64.mul
    i64.const 32
    i64.shr_u
    i64.add
    local.set $4
    local.get $3
    i64.const 32
    i64.shr_u
    local.tee $3
    local.get $5
    i64.mul
    local.get $4
    i64.const 32
    i64.shr_u
    i64.add
    local.get $2
    local.get $3
    i64.mul
    local.get $4
    i64.const 4294967295
    i64.and
    i64.add
    i64.const 32
    i64.shr_u
    i64.add
    return
   end
   local.get $0
   i32.const 4
   i32.eq
   if
    block $__inlined_func$build/teto-generated/teto-threads/rv64DivideSigned$4 (result i64)
     i64.const -1
     local.get $3
     i64.eqz
     br_if $__inlined_func$build/teto-generated/teto-threads/rv64DivideSigned$4
     drop
     local.get $2
     local.get $3
     i64.const -1
     i64.eq
     local.get $2
     i64.const -9223372036854775808
     i64.eq
     i32.and
     br_if $__inlined_func$build/teto-generated/teto-threads/rv64DivideSigned$4
     drop
     local.get $2
     local.get $3
     i64.div_s
    end
    return
   end
   local.get $0
   i32.const 5
   i32.eq
   if
    local.get $3
    i64.eqz
    if (result i64)
     i64.const -1
    else
     local.get $2
     local.get $3
     i64.div_u
    end
    return
   end
   local.get $0
   i32.const 6
   i32.eq
   if
    block $__inlined_func$build/teto-generated/teto-threads/rv64RemainderSigned$5 (result i64)
     local.get $2
     local.get $3
     i64.eqz
     br_if $__inlined_func$build/teto-generated/teto-threads/rv64RemainderSigned$5
     drop
     i64.const 0
     local.get $3
     i64.const -1
     i64.eq
     local.get $2
     i64.const -9223372036854775808
     i64.eq
     i32.and
     br_if $__inlined_func$build/teto-generated/teto-threads/rv64RemainderSigned$5
     drop
     local.get $2
     local.get $3
     i64.rem_s
    end
    return
   end
   local.get $0
   i32.const 7
   i32.eq
   if
    local.get $3
    i64.const 0
    i64.ne
    if (result i64)
     local.get $2
     local.get $3
     i64.rem_u
    else
     local.get $2
    end
    return
   end
   i64.const 0
   return
  end
  local.get $0
  i32.eqz
  if
   local.get $2
   local.get $3
   i64.sub
   local.get $2
   local.get $3
   i64.add
   local.get $1
   select
   return
  end
  local.get $3
  i64.const 63
  i64.and
  local.set $4
  local.get $0
  i32.const 1
  i32.eq
  if
   local.get $2
   local.get $4
   i64.shl
   return
  end
  local.get $0
  i32.const 2
  i32.eq
  if
   local.get $2
   local.get $3
   i64.lt_s
   i64.extend_i32_u
   return
  end
  local.get $0
  i32.const 3
  i32.eq
  if
   local.get $2
   local.get $3
   i64.lt_u
   i64.extend_i32_u
   return
  end
  local.get $0
  i32.const 4
  i32.eq
  if
   local.get $2
   local.get $3
   i64.xor
   return
  end
  local.get $0
  i32.const 5
  i32.eq
  if
   local.get $2
   local.get $4
   i64.shr_s
   local.get $2
   local.get $4
   i64.shr_u
   local.get $1
   select
   return
  end
  local.get $0
  i32.const 6
  i32.eq
  if
   local.get $2
   local.get $3
   i64.or
   return
  end
  local.get $0
  i32.const 7
  i32.eq
  if
   local.get $2
   local.get $3
   i64.and
   return
  end
  i64.const 0
 )
 (func $build/teto-generated/teto-threads/rv64RegisterValid (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 7
  i32.gt_u
  if
   i32.const 0
   return
  end
  local.get $1
  i32.eqz
  local.get $1
  i32.const 1
  i32.eq
  i32.or
  if
   i32.const 1
   return
  end
  local.get $0
  i32.eqz
  local.get $0
  i32.const 5
  i32.eq
  i32.or
  local.get $1
  i32.const 32
  i32.eq
  i32.and
 )
