
 (func $build/teto-generated/teto/rv64RemainderUnsigned (param $0 i64) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  i64.extend_i32_u
  local.get $0
  local.get $2
  i32.const 32
  i32.eq
  local.tee $3
  select
  local.set $0
  local.get $1
  i32.wrap_i64
  i64.extend_i32_u
  local.get $1
  local.get $3
  select
  local.tee $1
  i64.eqz
  if
   local.get $0
   return
  end
  local.get $2
  i32.const 32
  i32.eq
  if (result i64)
   local.get $0
   local.get $1
   i64.rem_u
   i32.wrap_i64
   i64.extend_i32_u
  else
   local.get $0
   local.get $1
   i64.rem_u
  end
 )
 (func $build/teto-generated/teto/rv64RemainderSigned (param $0 i64) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i64)
  local.get $0
  i32.const 64
  local.get $2
  i32.sub
  i64.extend_i32_s
  local.tee $0
  i64.shl
  local.get $0
  i64.shr_s
  local.set $3
  local.get $1
  local.get $0
  i64.shl
  local.get $0
  i64.shr_s
  local.tee $0
  i64.eqz
  if
   local.get $3
   return
  end
  local.get $0
  i64.const -1
  i64.eq
  local.get $3
  i64.const -2147483648
  i64.const -9223372036854775808
  local.get $2
  i32.const 32
  i32.eq
  select
  i64.eq
  i32.and
  if
   i64.const 0
   return
  end
  local.get $3
  local.get $0
  i64.rem_s
  i32.const 64
  local.get $2
  i32.sub
  i64.extend_i32_s
  local.tee $0
  i64.shl
  local.get $0
  i64.shr_s
 )
 (func $build/teto-generated/teto/rv64MulHighUnsigned (param $0 i64) (param $1 i64) (result i64)
  (local $2 i64)
  (local $3 i64)
  local.get $1
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $0
  i64.const 32
  i64.shr_u
  local.tee $3
  i64.mul
  local.get $2
  local.get $0
  i64.const 4294967295
  i64.and
  local.tee $0
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $2
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $1
  local.get $3
  i64.mul
  local.get $2
  i64.const 32
  i64.shr_u
  i64.add
  local.get $0
  local.get $1
  i64.mul
  local.get $2
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
 )
 (func $build/teto-generated/teto/rv64MulHighSignedUnsigned (param $0 i64) (param $1 i64) (result i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $1
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $0
  i64.const 32
  i64.shr_u
  local.tee $3
  i64.mul
  local.get $2
  local.get $0
  i64.const 4294967295
  i64.and
  local.tee $4
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $2
  local.get $3
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $3
  i64.mul
  local.get $2
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  local.get $4
  i64.mul
  local.get $2
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $2
  local.get $1
  i64.sub
  local.get $2
  local.get $0
  i64.const 0
  i64.lt_s
  select
 )
 (func $build/teto-generated/teto/rv64MulHighSigned (param $0 i64) (param $1 i64) (result i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $1
  i64.const 4294967295
  i64.and
  local.tee $2
  local.get $0
  i64.const 32
  i64.shr_u
  local.tee $3
  i64.mul
  local.get $2
  local.get $0
  i64.const 4294967295
  i64.and
  local.tee $4
  i64.mul
  i64.const 32
  i64.shr_u
  i64.add
  local.set $2
  local.get $3
  local.get $1
  i64.const 32
  i64.shr_u
  local.tee $3
  i64.mul
  local.get $2
  i64.const 32
  i64.shr_u
  i64.add
  local.get $3
  local.get $4
  i64.mul
  local.get $2
  i64.const 4294967295
  i64.and
  i64.add
  i64.const 32
  i64.shr_u
  i64.add
  local.tee $2
  local.get $1
  i64.sub
  local.get $2
  local.get $0
  i64.const 0
  i64.lt_s
  select
  local.tee $2
  local.get $0
  i64.sub
  local.get $2
  local.get $1
  i64.const 0
  i64.lt_s
  select
 )
 (func $build/teto-generated/teto/rv64DivideUnsigned (param $0 i64) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i32)
  local.get $0
  i32.wrap_i64
  i64.extend_i32_u
  local.get $0
  local.get $2
  i32.const 32
  i32.eq
  local.tee $3
  select
  local.set $0
  local.get $1
  i32.wrap_i64
  i64.extend_i32_u
  local.get $1
  local.get $3
  select
  local.tee $1
  i64.eqz
  if
   i64.const 4294967295
   i64.const -1
   local.get $3
   select
   return
  end
  local.get $2
  i32.const 32
  i32.eq
  if (result i64)
   local.get $0
   local.get $1
   i64.div_u
   i32.wrap_i64
   i64.extend_i32_u
  else
   local.get $0
   local.get $1
   i64.div_u
  end
 )
 (func $build/teto-generated/teto/rv64DivideSigned (param $0 i64) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i64)
  local.get $0
  i32.const 64
  local.get $2
  i32.sub
  i64.extend_i32_s
  local.tee $0
  i64.shl
  local.get $0
  i64.shr_s
  local.set $3
  local.get $1
  local.get $0
  i64.shl
  local.get $0
  i64.shr_s
  local.tee $0
  i64.eqz
  if
   i64.const -1
   return
  end
  local.get $0
  i64.const -1
  i64.eq
  local.get $3
  i64.const -2147483648
  i64.const -9223372036854775808
  local.get $2
  i32.const 32
  i32.eq
  select
  i64.eq
  i32.and
  if
   local.get $3
   return
  end
  local.get $3
  local.get $0
  i64.div_s
  i32.const 64
  local.get $2
  i32.sub
  i64.extend_i32_s
  local.tee $0
  i64.shl
  local.get $0
  i64.shr_s
 )
