
 (func $build/teto-generated/teto-threads/rv64ImmediateU (param $0 i32) (result i32)
  local.get $0
  i32.const -4096
  i32.and
 )
 (func $build/teto-generated/teto-threads/rv64ImmediateS (param $0 i32) (result i32)
  local.get $0
  i32.const 7
  i32.shr_u
  i32.const 31
  i32.and
  local.get $0
  i32.const 25
  i32.shr_u
  i32.const 5
  i32.shl
  i32.or
  local.tee $0
  i32.const 4096
  i32.sub
  local.get $0
  local.get $0
  i32.const 2048
  i32.and
  select
 )
 (func $build/teto-generated/teto-threads/rv64ImmediateJ (param $0 i32) (result i32)
  local.get $0
  i32.const 31
  i32.shr_u
  i32.const 20
  i32.shl
  local.get $0
  i32.const 12
  i32.shr_u
  i32.const 255
  i32.and
  i32.const 12
  i32.shl
  i32.or
  local.get $0
  i32.const 20
  i32.shr_u
  i32.const 1
  i32.and
  i32.const 11
  i32.shl
  i32.or
  local.get $0
  i32.const 21
  i32.shr_u
  i32.const 1023
  i32.and
  i32.const 1
  i32.shl
  i32.or
  local.tee $0
  i32.const 2097152
  i32.sub
  local.get $0
  local.get $0
  i32.const 1048576
  i32.and
  select
 )
 (func $build/teto-generated/teto-threads/rv64ImmediateI (param $0 i32) (result i32)
  local.get $0
  i32.const 20
  i32.shr_u
  local.tee $0
  i32.const 4096
  i32.sub
  local.get $0
  local.get $0
  i32.const 2048
  i32.and
  select
 )
 (func $build/teto-generated/teto-threads/rv64ImmediateB (param $0 i32) (result i32)
  local.get $0
  i32.const 31
  i32.shr_u
  i32.const 12
  i32.shl
  local.get $0
  i32.const 7
  i32.shr_u
  i32.const 1
  i32.and
  i32.const 11
  i32.shl
  i32.or
  local.get $0
  i32.const 25
  i32.shr_u
  i32.const 63
  i32.and
  i32.const 5
  i32.shl
  i32.or
  local.get $0
  i32.const 8
  i32.shr_u
  i32.const 15
  i32.and
  i32.const 1
  i32.shl
  i32.or
  local.tee $0
  i32.const -8192
  i32.add
  local.get $0
  local.get $0
  i32.const 4096
  i32.and
  select
 )
 (func $build/teto-generated/teto-threads/rv64CompressedJump (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 2
  i32.shr_u
  i32.const 14
  i32.and
  local.get $0
  i32.const 7
  i32.shr_u
  i32.const 16
  i32.and
  local.get $0
  i32.const 3
  i32.shl
  i32.const 32
  i32.and
  local.get $0
  i32.const 1
  i32.shr_u
  local.tee $1
  i32.const 64
  i32.and
  local.get $0
  i32.const 1
  i32.shl
  i32.const 128
  i32.and
  local.get $1
  i32.const 768
  i32.and
  local.get $1
  i32.const 2048
  i32.and
  local.get $0
  i32.const 2
  i32.shl
  i32.const 1024
  i32.and
  i32.or
  i32.or
  i32.or
  i32.or
  i32.or
  i32.or
  i32.or
  local.tee $0
  i32.const 4096
  i32.sub
  local.get $0
  local.get $0
  i32.const 2048
  i32.and
  select
 )
