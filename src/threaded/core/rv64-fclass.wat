
 (func $build/teto-generated/teto-threads/rv64FloatClass (param $0 i64) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  local.get $0
  i64.const 8
  i64.const 11
  local.get $1
  i32.const 32
  i32.eq
  local.tee $1
  select
  local.tee $5
  i64.const 23
  i64.const 52
  local.get $1
  select
  local.tee $3
  i64.add
  i64.shr_u
  i64.const 1
  i64.and
  local.set $2
  local.get $0
  i64.const 1
  local.get $3
  i64.shl
  i64.const 1
  i64.sub
  i64.and
  local.tee $4
  i64.eqz
  i64.const 1
  local.get $5
  i64.shl
  i64.const 1
  i64.sub
  local.tee $5
  local.get $0
  local.get $3
  i64.shr_u
  i64.and
  local.tee $0
  local.get $5
  i64.eq
  i32.and
  if
   i64.const 1
   i64.const 128
   local.get $2
   i32.wrap_i64
   select
   return
  end
  local.get $0
  local.get $5
  i64.eq
  if
   i64.const 512
   i64.const 256
   local.get $4
   i64.const 1
   local.get $3
   i64.const 1
   i64.sub
   i64.shl
   i64.and
   i64.const 0
   i64.ne
   select
   return
  end
  local.get $0
  local.get $4
  i64.or
  i64.eqz
  if
   i64.const 8
   i64.const 16
   local.get $2
   i32.wrap_i64
   select
   return
  end
  local.get $0
  i64.eqz
  if
   i64.const 4
   i64.const 32
   local.get $2
   i32.wrap_i64
   select
   return
  end
  i64.const 2
  i64.const 64
  local.get $2
  i32.wrap_i64
  select
 )
