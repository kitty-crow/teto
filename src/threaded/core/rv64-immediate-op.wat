
 (func $build/teto-generated/teto-threads/rv64ImmediateOpValue (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  local.get $1
  i32.const 20
  i32.shr_u
  local.tee $4
  i32.const 4096
  i32.sub
  local.get $4
  local.get $4
  i32.const 2048
  i32.and
  select
  i64.extend_i32_s
  local.set $3
  local.get $0
  i32.eqz
  if
   local.get $2
   local.get $3
   i64.add
   return
  end
  local.get $4
  i32.const 63
  i32.and
  i64.extend_i32_u
  local.set $5
  local.get $0
  i32.const 1
  i32.eq
  if
   local.get $2
   local.get $5
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
   local.get $5
   i64.shr_s
   local.get $2
   local.get $5
   i64.shr_u
   local.get $1
   i32.const 26
   i32.shr_u
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
 (func $build/teto-generated/teto-threads/rv64ImmediateOpValid (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.const 7
  i32.gt_u
  if
   i32.const 0
   return
  end
  local.get $1
  i32.const 26
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
   i32.const 16
   i32.eq
   i32.or
   return
  end
  i32.const 1
 )
