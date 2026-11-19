
 (func $build/teto-generated/teto-threads/rv64RegisterWordValue (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i64)
  (local $5 i64)
  local.get $1
  i32.const 1
  i32.eq
  if
   block $__inlined_func$build/teto-generated/teto-threads/__bq_7101a4ae_rv64MultiplyDivideWord (result i64)
    local.get $2
    i64.extend32_s
    local.tee $4
    local.get $3
    i64.extend32_s
    local.tee $5
    i64.mul
    i64.extend32_s
    local.get $0
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto-threads/__bq_7101a4ae_rv64MultiplyDivideWord
    drop
    local.get $0
    i32.const 4
    i32.eq
    if
     i64.const -1
     local.set $2
     block $__inlined_func$build/teto-generated/teto-threads/rv64DivideSigned
      local.get $5
      i64.eqz
      br_if $__inlined_func$build/teto-generated/teto-threads/rv64DivideSigned
      local.get $5
      i64.const -1
      i64.eq
      local.get $4
      local.tee $2
      i64.const -2147483648
      i64.eq
      i32.and
      br_if $__inlined_func$build/teto-generated/teto-threads/rv64DivideSigned
      local.get $2
      local.get $5
      i64.div_s
      i64.extend32_s
      local.set $2
     end
     local.get $2
     i64.extend32_s
     br $__inlined_func$build/teto-generated/teto-threads/__bq_7101a4ae_rv64MultiplyDivideWord
    end
    local.get $0
    i32.const 5
    i32.eq
    if
     local.get $2
     i32.wrap_i64
     i64.extend_i32_u
     local.set $2
     local.get $3
     i32.wrap_i64
     i64.extend_i32_u
     local.tee $3
     i64.eqz
     if (result i64)
      i64.const 4294967295
     else
      local.get $2
      local.get $3
      i64.div_u
     end
     i64.extend32_s
     br $__inlined_func$build/teto-generated/teto-threads/__bq_7101a4ae_rv64MultiplyDivideWord
    end
    local.get $0
    i32.const 6
    i32.eq
    if
     block $__inlined_func$build/teto-generated/teto-threads/rv64RemainderSigned$1 (result i64)
      local.get $2
      i64.extend32_s
      local.tee $2
      local.get $3
      i64.extend32_s
      local.tee $3
      i64.eqz
      br_if $__inlined_func$build/teto-generated/teto-threads/rv64RemainderSigned$1
      drop
      i64.const 0
      local.get $3
      i64.const -1
      i64.eq
      local.get $2
      i64.const -2147483648
      i64.eq
      i32.and
      br_if $__inlined_func$build/teto-generated/teto-threads/rv64RemainderSigned$1
      drop
      local.get $2
      local.get $3
      i64.rem_s
      i64.extend32_s
     end
     i64.extend32_s
     br $__inlined_func$build/teto-generated/teto-threads/__bq_7101a4ae_rv64MultiplyDivideWord
    end
    local.get $0
    i32.const 7
    i32.eq
    if
     block $__inlined_func$build/teto-generated/teto-threads/rv64RemainderUnsigned$8 (result i64)
      local.get $2
      i32.wrap_i64
      i64.extend_i32_u
      local.tee $2
      local.get $3
      i32.wrap_i64
      i64.extend_i32_u
      local.tee $3
      i64.eqz
      br_if $__inlined_func$build/teto-generated/teto-threads/rv64RemainderUnsigned$8
      drop
      local.get $2
      local.get $3
      i64.rem_u
      i32.wrap_i64
      i64.extend_i32_u
     end
     i64.extend32_s
     br $__inlined_func$build/teto-generated/teto-threads/__bq_7101a4ae_rv64MultiplyDivideWord
    end
    i64.const 0
   end
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
   i64.extend32_s
   return
  end
  local.get $3
  i64.const 31
  i64.and
  local.set $3
  local.get $0
  i32.const 1
  i32.eq
  if
   local.get $2
   i64.extend32_s
   local.get $3
   i64.shl
   i64.extend32_s
   return
  end
  local.get $0
  i32.const 5
  i32.eq
  if
   local.get $2
   i64.extend32_s
   local.get $3
   i64.shr_s
   local.get $2
   i32.wrap_i64
   i64.extend_i32_u
   local.get $3
   i64.shr_u
   local.get $1
   select
   i64.extend32_s
   return
  end
  i64.const 0
 )
 (func $build/teto-generated/teto-threads/rv64RegisterWordValid (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.eqz
   local.get $0
   i32.const 4
   i32.eq
   i32.or
   local.get $0
   i32.const 5
   i32.eq
   i32.or
   local.get $0
   i32.const 6
   i32.eq
   i32.or
   local.get $0
   i32.const 7
   i32.eq
   i32.or
   return
  end
  block $folding-inner0
   local.get $0
   i32.eqz
   br_if $folding-inner0
   local.get $0
   i32.const 1
   i32.eq
   if
    local.get $1
    i32.eqz
    return
   end
   local.get $0
   i32.const 5
   i32.eq
   br_if $folding-inner0
   i32.const 0
   return
  end
  local.get $1
  i32.eqz
  local.get $1
  i32.const 32
  i32.eq
  i32.or
 )
 (func $build/teto-generated/teto-threads/rv64ImmediateWordValue (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i64)
  local.get $1
  i32.const 20
  i32.shr_u
  local.tee $3
  i32.const 31
  i32.and
  i64.extend_i32_u
  local.set $4
  local.get $0
  i32.eqz
  if
   local.get $2
   local.get $3
   i32.const 4096
   i32.sub
   local.get $3
   local.get $3
   i32.const 2048
   i32.and
   select
   i64.extend_i32_s
   i64.add
   i64.extend32_s
   return
  end
  local.get $0
  i32.const 1
  i32.eq
  if
   local.get $2
   i64.extend32_s
   local.get $4
   i64.shl
   i64.extend32_s
   return
  end
  local.get $0
  i32.const 5
  i32.eq
  if
   local.get $2
   i64.extend32_s
   local.get $4
   i64.shr_s
   local.get $2
   i32.wrap_i64
   i64.extend_i32_u
   local.get $4
   i64.shr_u
   local.get $1
   i32.const 25
   i32.shr_u
   select
   i64.extend32_s
   return
  end
  i64.const 0
 )
 (func $build/teto-generated/teto-threads/rv64ImmediateWordValid (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 1
   return
  end
  local.get $1
  i32.const 25
  i32.shr_u
  local.set $1
  local.get $0
  i32.const 1
  i32.eq
  if
   local.get $1
   i32.eqz
   return
  end
  local.get $0
  i32.const 5
  i32.eq
  if
   local.get $1
   i32.eqz
   local.get $1
   i32.const 32
   i32.eq
   i32.or
   return
  end
  i32.const 0
 )
