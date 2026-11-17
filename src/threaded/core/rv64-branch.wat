
 (func $build/teto-generated/teto-threads/rv64Branch (param $0 i32) (param $1 i64) (param $2 i64) (result i32)
  (local $3 i32)
  local.get $0
  i32.eqz
  if
   local.get $1
   local.get $2
   i64.eq
   return
  end
  local.get $0
  i32.const 1
  i32.eq
  if
   local.get $1
   local.get $2
   i64.ne
   return
  end
  local.get $0
  i32.const 4
  i32.eq
  if
   local.get $1
   local.get $2
   i64.lt_s
   return
  end
  local.get $0
  i32.const 5
  i32.eq
  if
   local.get $1
   local.get $2
   i64.ge_s
   return
  end
  local.get $0
  i32.const 6
  i32.eq
  local.tee $3
  local.get $0
  i32.const 7
  i32.eq
  i32.or
  if
   local.get $1
   local.get $2
   i64.lt_s
   local.get $1
   i64.const 0
   i64.lt_s
   local.tee $0
   i32.eqz
   local.get $0
   local.get $2
   i64.const 0
   i64.lt_s
   i32.eq
   select
   local.tee $0
   local.get $0
   i32.eqz
   local.get $3
   select
   i32.const 0
   i32.ne
   return
  end
  i32.const -1
 )
