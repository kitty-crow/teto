
 (func $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64 (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $5
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $5
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $5
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $3
   i64.extend_i32_u
   local.get $5
   i64.load offset=208
   local.tee $6
   local.get $1
   i64.sub
   i64.le_u
   local.get $1
   local.get $6
   i64.lt_u
   i32.and
  end
  i32.eqz
  if
   i32.const 0
   return
  end
  block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_traceNodePointerWrite$27
   i32.const 112
   i32.load
   i32.const 32
   i32.gt_u
   br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_traceNodePointerWrite$27
   local.get $0
   i32.const 10
   i32.shl
   local.tee $5
   i32.const 4112
   i32.add
   i64.load
   local.tee $6
   i64.const 65536
   i64.lt_u
   local.get $1
   local.get $6
   i64.const 65536
   i64.sub
   i64.lt_u
   i32.or
   local.get $1
   local.get $6
   i64.ge_u
   i32.or
   br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_traceNodePointerWrite$27
   local.get $3
   i32.const 4
   i32.eq
   local.get $1
   i64.const 7
   i64.and
   i64.const 4
   i64.eq
   i32.and
   local.get $2
   i64.const 4294967295
   i64.and
   local.tee $6
   i64.const 0
   i64.ne
   i32.and
   local.get $6
   i64.const 16
   i64.le_u
   i32.and
   local.get $6
   i64.eqz
   local.get $3
   i32.const 8
   i32.eq
   i32.and
   local.get $2
   i64.const 32
   i64.shr_u
   local.tee $6
   i64.const 0
   i64.ne
   i32.and
   local.get $6
   i64.const 16
   i64.le_u
   i32.and
   i32.or
   i32.eqz
   br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_traceNodePointerWrite$27
   i32.const 1000
   i32.load
   local.tee $7
   i32.const 48
   i32.rem_u
   i32.const 40
   i32.mul
   i32.const 1024
   i32.add
   local.tee $8
   i64.const 1398034258
   i64.store32
   local.get $8
   local.get $3
   i64.extend_i32_u
   local.tee $6
   i64.store32 offset=4
   local.get $8
   local.get $1
   i64.store offset=8
   local.get $8
   local.get $6
   i64.store offset=16
   local.get $8
   local.get $2
   i64.store offset=24
   local.get $8
   local.get $5
   i32.const 4120
   i32.add
   i64.load
   i64.store offset=32
   i32.const 1000
   local.get $7
   i32.const 1
   i32.add
   i64.extend_i32_u
   i64.store32
  end
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.gt_u
   if
    local.get $0
    local.get $1
    local.get $4
    i64.extend_i32_u
    i64.add
    i32.const 1
    i32.const 1
    call $build/teto-generated/teto/__bq_248d3b0e_guestPointer
    local.tee $5
    i32.const -2
    i32.eq
    local.get $5
    i32.const -1
    i32.eq
    i32.or
    if
     i32.const 0
     return
    end
    local.get $5
    local.get $2
    local.get $4
    i32.const 3
    i32.shl
    i64.extend_i32_u
    i64.shr_u
    i64.store8
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  i32.const 1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_guestAllowed (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $4
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $4
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $4
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $2
   i64.extend_i32_u
   local.get $4
   i64.load offset=208
   local.tee $5
   local.get $1
   i64.sub
   i64.le_u
   local.get $1
   local.get $5
   i64.lt_u
   i32.and
  end
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $0
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $0
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $4
  i32.const -1
  i32.eq
  if
   i32.const 0
   return
  end
  local.get $1
  local.get $2
  i64.extend_i32_u
  i64.add
  local.set $5
  local.get $4
  i32.load offset=220
  local.set $6
  local.get $4
  i32.load offset=216
  local.set $7
  i32.const 0
  local.set $2
  loop $while-continue|0
   local.get $2
   local.get $6
   i32.lt_u
   if
    local.get $1
    local.get $7
    local.get $2
    i32.const 5
    i32.shl
    i32.add
    local.tee $0
    i64.load
    i64.ge_u
    if (result i32)
     local.get $5
     local.get $0
     i64.load offset=8
     i64.le_u
    else
     i32.const 0
    end
    if
     local.get $3
     local.get $0
     i32.load offset=16
     i32.and
     local.get $3
     i32.eq
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|0
   end
  end
  local.get $3
  i32.const 4
  i32.and
  i32.const 0
  i32.ne
  local.set $0
  local.get $4
  i64.load offset=256
  local.tee $8
  i64.const 0
  i64.ne
  local.get $1
  local.get $8
  i64.ge_u
  i32.and
  if (result i32)
   local.get $5
   local.get $4
   i64.load offset=208
   i64.le_u
  else
   i32.const 0
  end
  if
   local.get $0
   i32.eqz
   return
  end
  local.get $4
  i64.load offset=288
  local.tee $8
  i64.const 0
  i64.ne
  local.get $1
  local.get $8
  i64.ge_u
  i32.and
  if (result i32)
   local.get $5
   local.get $4
   i64.load offset=296
   i64.le_u
  else
   i32.const 0
  end
  if
   local.get $0
   i32.eqz
   return
  end
  local.get $4
  i32.load offset=276
  local.set $0
  local.get $4
  i32.load offset=272
  local.set $4
  i32.const 0
  local.set $2
  loop $while-continue|1
   local.get $0
   local.get $2
   i32.gt_u
   if
    local.get $1
    local.get $4
    local.get $2
    i32.const 48
    i32.mul
    i32.add
    local.tee $6
    i64.load
    i64.ge_u
    if (result i32)
     local.get $5
     local.get $6
     i64.load offset=8
     i64.le_u
    else
     i32.const 0
    end
    if
     local.get $3
     local.get $6
     i32.load offset=16
     i32.and
     local.get $3
     i32.eq
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $while-continue|1
   end
  end
  i32.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_guestWritable (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $4
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $4
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $4
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $2
   i64.extend_i32_u
   local.get $4
   i64.load offset=208
   local.tee $5
   local.get $1
   i64.sub
   i64.le_u
   local.get $1
   local.get $5
   i64.lt_u
   i32.and
  end
  i32.eqz
  if
   i32.const 0
   return
  end
  loop $while-continue|0
   local.get $2
   local.get $3
   i32.gt_u
   if
    local.get $0
    local.get $1
    local.get $3
    i64.extend_i32_u
    i64.add
    local.tee $5
    i32.const 1
    call $build/teto-generated/teto/__bq_248d3b0e_guestPage
    local.tee $4
    i32.const -2
    i32.eq
    local.get $4
    i32.const -1
    i32.eq
    i32.or
    if
     i32.const 0
     return
    end
    local.get $3
    i32.const 65536
    local.get $5
    i64.const 65535
    i64.and
    i32.wrap_i64
    i32.sub
    local.tee $4
    local.get $2
    local.get $3
    i32.sub
    local.tee $3
    local.get $3
    local.get $4
    i32.gt_u
    select
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  i32.const 1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_guestPage (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $4
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $4
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $4
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $1
   local.get $4
   i64.load offset=208
   local.tee $9
   i64.ne
   local.get $1
   local.get $9
   i64.lt_u
   i32.and
  end
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $0
  i32.const 10
  i32.shl
  local.tee $0
  i32.const 4096
  i32.add
  local.set $5
  local.get $0
  i32.const 4964
  i32.add
  i32.load
  local.tee $0
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $0
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $10
  i32.const -1
  i32.eq
  if
   i32.const -1
   return
  end
  local.get $10
  i64.load32_s offset=192
  i32.wrap_i64
  local.set $6
  local.get $1
  i64.const 16
  i64.shr_u
  local.tee $1
  i64.const 1
  i64.add
  local.set $9
  local.get $1
  local.get $1
  i64.const 32
  i64.shr_u
  i64.xor
  i64.const 2654435761
  i64.mul
  i32.wrap_i64
  local.get $10
  i64.load32_s offset=196
  i32.wrap_i64
  local.tee $4
  i32.const 1
  i32.sub
  i32.and
  local.set $0
  loop $while-continue|0
   local.get $3
   local.get $4
   i32.lt_u
   if
    local.get $6
    local.get $0
    i32.const 4
    i32.shl
    i32.add
    local.tee $8
    i64.load
    local.tee $1
    local.get $9
    i64.eq
    if
     local.get $8
     i32.load offset=8
     return
    end
    local.get $1
    i64.eqz
    if
     local.get $2
     i32.eqz
     if
      i32.const -2
      return
     end
     i32.const 40
     i32.load
     local.tee $7
     i32.eqz
     if
      i32.const 40
      i32.const 1
      i32.store
     end
     local.get $7
     if
      i32.const -1
      return
     end
     local.get $8
     i64.load
     local.tee $1
     local.get $9
     i64.eq
     if
      local.get $8
      i32.load offset=8
      i32.const 40
      i32.const 0
      i32.store
      return
     end
     local.get $1
     i64.const 0
     i64.ne
     if
      i32.const 40
      i32.const 0
      i32.store
      local.get $0
      i32.const 1
      i32.add
      local.get $4
      i32.const 1
      i32.sub
      i32.and
      local.set $0
      local.get $3
      i32.const 1
      i32.add
      local.set $3
      br $while-continue|0
     end
     i32.const 124
     i32.load
     local.tee $0
     i32.const 52
     i32.load
     local.tee $2
     i32.sub
     i32.const 65536
     i32.lt_u
     local.get $0
     local.get $2
     i32.lt_u
     i32.or
     if
      i32.const 40
      i32.const 0
      i32.store
      i32.const -1
      return
     end
     local.get $2
     i32.const 0
     i32.const 65536
     memory.fill
     local.get $8
     local.get $2
     i64.extend_i32_u
     i64.store32 offset=8
     local.get $8
     i64.const 0
     i64.store32 offset=12
     i32.const 52
     local.get $2
     i32.const 65536
     i32.add
     i64.extend_i32_u
     i64.store32
     local.get $10
     local.get $10
     i64.load32_s offset=200
     i32.wrap_i64
     i32.const 1
     i32.add
     local.tee $0
     i32.store offset=200
     local.get $5
     local.get $0
     i64.extend_i32_u
     i64.store32 offset=112
     local.get $8
     local.get $9
     i64.store
     i32.const 40
     i32.const 0
     i32.store
     local.get $2
     return
    end
    local.get $0
    i32.const 1
    i32.add
    local.get $4
    i32.const 1
    i32.sub
    i32.and
    local.set $0
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $while-continue|0
   end
  end
  i32.const -1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_guestLoadU64 (param $0 i32) (param $1 i64) (param $2 i32) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  loop $while-continue|0
   local.get $2
   local.get $4
   i32.gt_u
   if
    local.get $1
    local.get $4
    i64.extend_i32_u
    i64.add
    local.set $5
    i32.const -1
    local.set $3
    block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_guestLoadU8$231
     local.get $0
     i32.const 10
     i32.shl
     i32.const 4964
     i32.add
     i32.load
     local.tee $8
     i32.const 64
     i32.load
     i32.lt_u
     if (result i32)
      i32.const 60
      i32.load
      local.get $8
      i32.const 352
      i32.mul
      i32.add
     else
      i32.const -1
     end
     local.tee $8
     i32.const -1
     i32.eq
     if (result i32)
      i32.const 0
     else
      local.get $5
      local.get $8
      i64.load offset=208
      local.tee $7
      i64.ne
      local.get $5
      local.get $7
      i64.lt_u
      i32.and
     end
     i32.eqz
     br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_guestLoadU8$231
     local.get $0
     local.get $5
     i32.const 1
     i32.const 0
     call $build/teto-generated/teto/__bq_248d3b0e_guestPointer
     local.tee $8
     i32.const -1
     i32.eq
     br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_guestLoadU8$231
     local.get $8
     i32.const -2
     i32.eq
     if (result i32)
      i32.const 0
     else
      local.get $8
      i32.load8_u
     end
     local.set $3
    end
    local.get $3
    i32.const 0
    i32.lt_s
    if
     i64.const 0
     return
    end
    local.get $6
    local.get $3
    i64.extend_i32_s
    local.get $4
    i32.const 3
    i32.shl
    i64.extend_i32_u
    i64.shl
    i64.or
    local.set $6
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $6
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_storeInteger (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  local.get $1
  if (result i32)
   local.get $1
   i32.const 1
   i32.eq
   if (result i32)
    i32.const 2
   else
    local.get $1
    i32.const 2
    i32.eq
    if (result i32)
     i32.const 4
    else
     i32.const 8
     i32.const 0
     local.get $1
     i32.const 3
     i32.eq
     select
    end
   end
  else
   i32.const 1
  end
  local.tee $1
  if (result i32)
   local.get $0
   local.get $2
   local.get $1
   i32.const 2
   call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $2
   local.get $3
   local.get $1
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_loadInteger (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  local.get $2
  i32.eqz
  local.get $2
  i32.const 4
  i32.eq
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $2
   i32.const 5
   i32.eq
   local.get $2
   i32.const 1
   i32.eq
   i32.or
   if (result i32)
    i32.const 2
   else
    local.get $2
    i32.const 6
    i32.eq
    local.get $2
    i32.const 2
    i32.eq
    i32.or
    if (result i32)
     i32.const 4
    else
     i32.const 8
     i32.const 0
     local.get $2
     i32.const 3
     i32.eq
     select
    end
   end
  end
  local.tee $4
  if (result i32)
   local.get $0
   local.get $3
   local.get $4
   i32.const 1
   call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $3
  local.get $4
  call $build/teto-generated/teto/__bq_248d3b0e_guestLoadU64
  local.set $3
  local.get $1
  if
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4224
   i32.add
   local.get $1
   i32.const 3
   i32.shl
   i32.add
   local.get $2
   if (result i64)
    local.get $3
    i64.extend16_s
    local.get $3
    i64.extend32_s
    local.get $3
    local.get $2
    i32.const 2
    i32.eq
    select
    local.get $2
    i32.const 1
    i32.eq
    select
   else
    local.get $3
    i64.extend8_s
   end
   i64.store
  end
  i32.const 1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_clearMappedRange (param $0 i32) (param $1 i64) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  local.get $0
  i32.load offset=192
  local.set $3
  local.get $0
  i32.load offset=196
  local.set $4
  i32.const 0
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $3
    local.get $0
    i32.const 4
    i32.shl
    i32.add
    local.tee $5
    i64.load
    local.tee $6
    i64.const 0
    i64.ne
    if
     local.get $6
     i64.const 1
     i64.sub
     i64.const 16
     i64.shl
     local.tee $7
     i64.const 65536
     i64.add
     local.tee $8
     local.get $1
     i64.gt_u
     local.get $2
     local.get $7
     i64.gt_u
     i32.and
     if
      local.get $5
      i32.load offset=8
      local.get $1
      local.get $7
      local.get $1
      local.get $7
      i64.gt_u
      select
      local.tee $6
      local.get $7
      i64.sub
      i32.wrap_i64
      i32.add
      i32.const 0
      local.get $2
      local.get $8
      local.get $2
      local.get $8
      i64.lt_u
      select
      local.get $6
      i64.sub
      i32.wrap_i64
      memory.fill
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
 )
 (func $build/teto-generated/teto/tetoStackCopy (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
   local.tee $0
   i32.sub
   local.tee $5
   i32.const 132
   i32.load
   local.tee $7
   i32.le_u
   local.get $0
   local.get $3
   i32.le_u
   i32.and
   local.get $4
   local.get $7
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
  local.get $4
  if (result i32)
   local.get $1
   local.get $2
   local.get $4
   call $build/teto-generated/teto/__bq_248d3b0e_guestWritable
  else
   i32.const 1
  end
  i32.eqz
  if
   i32.const 3
   return
  end
  i32.const 0
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if
    local.get $1
    local.get $2
    local.get $0
    i64.extend_i32_u
    i64.add
    local.tee $6
    i32.const 0
    call $build/teto-generated/teto/__bq_248d3b0e_guestPage
    local.tee $7
    i32.const -2
    i32.eq
    local.get $7
    i32.const -1
    i32.eq
    i32.or
    if
     i32.const 3
     return
    end
    i32.const 65536
    local.get $6
    i64.const 65535
    i64.and
    i32.wrap_i64
    local.tee $8
    i32.sub
    local.tee $5
    local.get $4
    local.get $0
    i32.sub
    local.tee $9
    local.get $5
    local.get $9
    i32.lt_u
    select
    local.set $9
    i32.const 0
    local.set $5
    loop $while-continue|1
     local.get $5
     local.get $9
     i32.lt_u
     if
      local.get $7
      local.get $8
      i32.add
      local.get $5
      i32.add
      local.get $0
      local.get $3
      i32.add
      local.get $5
      i32.add
      i64.load8_u
      i64.store8
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $while-continue|1
     end
    end
    local.get $0
    local.get $9
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  i32.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_anonymousUnmap (param $0 i32) (param $1 i64) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  local.get $2
  i64.eqz
  local.get $1
  i64.const 4095
  i64.and
  i64.const 0
  i64.ne
  i32.or
  local.get $0
  i64.load offset=208
  local.tee $8
  local.get $1
  i64.le_u
  i32.or
  local.get $2
  local.get $8
  local.get $1
  i64.sub
  i64.gt_u
  i32.or
  if
   i64.const -22
   return
  end
  local.get $2
  i64.const 4095
  i64.add
  i64.const -4096
  i64.and
  local.tee $2
  i64.eqz
  local.get $2
  local.get $8
  local.get $1
  i64.sub
  i64.gt_u
  i32.or
  if
   i64.const -22
   return
  end
  local.get $1
  local.get $2
  i64.add
  local.set $2
  local.get $0
  i32.load offset=276
  local.set $6
  local.get $0
  i32.load offset=280
  local.set $9
  loop $while-continue|0
   local.get $5
   local.get $6
   i32.lt_u
   if
    local.get $0
    i32.load offset=272
    local.get $5
    i32.const 48
    i32.mul
    i32.add
    local.tee $7
    i64.load
    local.set $8
    local.get $7
    i64.load offset=8
    local.tee $10
    local.get $1
    i64.gt_u
    local.get $2
    local.get $8
    i64.gt_u
    i32.and
    if
     i32.const 1
     local.set $4
     local.get $3
     i32.const 1
     i32.add
     local.get $3
     local.get $2
     local.get $10
     i64.lt_u
     local.get $1
     local.get $8
     i64.gt_u
     i32.and
     select
     local.set $3
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|0
   end
  end
  local.get $4
  i32.eqz
  if
   i64.const -4096
   return
  end
  local.get $3
  local.get $9
  local.get $6
  i32.sub
  i32.gt_u
  if
   i64.const -12
   return
  end
  i32.const 0
  local.set $5
  loop $while-continue|1
   local.get $5
   local.get $6
   i32.lt_u
   if
    local.get $0
    i32.load offset=272
    local.get $5
    i32.const 48
    i32.mul
    i32.add
    local.tee $3
    i64.load
    local.tee $8
    local.get $2
    i64.ge_u
    local.get $3
    i64.load offset=8
    local.tee $10
    local.get $1
    i64.le_u
    i32.or
    if
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $while-continue|1
    end
    local.get $0
    local.get $1
    local.get $8
    local.get $1
    local.get $8
    i64.gt_u
    select
    local.get $2
    local.get $10
    local.get $2
    local.get $10
    i64.lt_u
    select
    call $build/teto-generated/teto/__bq_248d3b0e_clearMappedRange
    local.get $1
    local.get $8
    i64.le_u
    local.get $2
    local.get $10
    i64.ge_u
    i32.and
    if
     local.get $5
     local.set $3
     loop $while-continue|2
      local.get $3
      i32.const 1
      i32.add
      local.tee $4
      local.get $6
      i32.lt_u
      if
       local.get $3
       i32.const 48
       i32.mul
       local.get $0
       i32.load offset=272
       local.tee $3
       i32.add
       local.tee $7
       local.get $3
       local.get $4
       i32.const 48
       i32.mul
       i32.add
       local.tee $3
       i64.load
       i64.store
       local.get $7
       local.get $3
       i64.load offset=8
       i64.store offset=8
       local.get $7
       local.get $3
       i64.load32_u offset=16
       i64.store32 offset=16
       local.get $7
       local.get $3
       i64.load32_u offset=20
       i64.store32 offset=20
       local.get $7
       local.get $3
       i32.load offset=24
       i32.store offset=24
       local.get $7
       local.get $3
       i64.load offset=32
       i64.store offset=32
       local.get $7
       local.get $3
       i64.load32_u offset=40
       i64.store32 offset=40
       local.get $7
       i64.const 0
       i64.store32 offset=44
       local.get $4
       local.set $3
       br $while-continue|2
      end
     end
     local.get $0
     i32.load offset=272
     local.get $6
     i32.const 1
     i32.sub
     local.tee $6
     i32.const 48
     i32.mul
     i32.add
     i32.const 0
     i32.const 48
     memory.fill
     br $while-continue|1
    end
    local.get $1
    local.get $8
    i64.le_u
    if
     local.get $3
     local.get $2
     i64.store
     local.get $3
     local.get $2
     local.get $3
     i64.load offset=32
     i64.add
     local.get $8
     i64.sub
     i64.store offset=32
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $while-continue|1
    end
    local.get $2
    local.get $10
    i64.ge_u
    if
     local.get $3
     local.get $1
     i64.store offset=8
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $while-continue|1
    end
    local.get $0
    i32.load offset=272
    local.get $6
    i32.const 48
    i32.mul
    i32.add
    local.tee $4
    local.get $3
    i64.load
    i64.store
    local.get $4
    local.get $3
    i64.load offset=8
    i64.store offset=8
    local.get $4
    local.get $3
    i64.load32_u offset=16
    i64.store32 offset=16
    local.get $4
    local.get $3
    i64.load32_u offset=20
    i64.store32 offset=20
    local.get $4
    local.get $3
    i32.load offset=24
    i32.store offset=24
    local.get $4
    local.get $3
    i64.load offset=32
    i64.store offset=32
    local.get $4
    local.get $3
    i64.load32_u offset=40
    i64.store32 offset=40
    local.get $4
    i64.const 0
    i64.store32 offset=44
    local.get $3
    local.get $1
    i64.store offset=8
    local.get $4
    local.get $2
    i64.store
    local.get $4
    local.get $2
    local.get $3
    i64.load offset=32
    i64.add
    local.get $8
    i64.sub
    i64.store offset=32
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|1
   end
  end
  local.get $0
  local.get $6
  i32.store offset=276
  i64.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_traceMappingOperation (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i32) (param $4 i64) (param $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  i32.const 112
  i32.load
  i32.const 32
  i32.gt_u
  if
   return
  end
  local.get $5
  local.get $1
  local.get $0
  i32.const 222
  i32.eq
  local.get $5
  i64.const 0
  i64.ge_s
  i32.and
  select
  local.tee $7
  i64.const 21474836480
  i64.lt_u
  local.get $2
  local.get $7
  i64.add
  i64.const 17179869184
  i64.gt_u
  i32.and
  local.get $1
  i64.const 21474836480
  i64.lt_u
  local.get $1
  local.get $2
  i64.add
  i64.const 17179869184
  i64.gt_u
  i32.and
  i32.or
  i32.eqz
  if
   return
  end
  i32.const 1000
  i32.load
  local.tee $8
  i32.const 48
  i32.rem_u
  i32.const 40
  i32.mul
  i32.const 1024
  i32.add
  local.tee $6
  local.get $0
  i64.extend_i32_u
  i64.store32
  local.get $6
  local.get $3
  i64.extend_i32_u
  i64.store32 offset=4
  local.get $6
  local.get $1
  i64.store offset=8
  local.get $6
  local.get $2
  i64.store offset=16
  local.get $6
  local.get $5
  i64.store offset=24
  local.get $6
  local.get $4
  i64.store offset=32
  i32.const 1000
  local.get $8
  i32.const 1
  i32.add
  i64.extend_i32_u
  i64.store32
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_storeFloating (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  local.get $2
  i32.const 2
  i32.eq
  if (result i32)
   i32.const 4
  else
   i32.const 8
   i32.const 0
   local.get $2
   i32.const 3
   i32.eq
   select
  end
  local.tee $2
  if (result i32)
   local.get $0
   local.get $3
   local.get $2
   i32.const 2
   call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $3
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4480
   i32.add
   local.get $1
   i32.const 3
   i32.shl
   i32.add
   i64.load
   local.get $2
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_loadFloating (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  (local $4 i32)
  local.get $2
  i32.const 2
  i32.eq
  if (result i32)
   i32.const 4
  else
   i32.const 8
   i32.const 0
   local.get $2
   i32.const 3
   i32.eq
   select
  end
  local.tee $4
  if (result i32)
   local.get $0
   local.get $3
   local.get $4
   i32.const 1
   call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $3
  local.get $4
  call $build/teto-generated/teto/__bq_248d3b0e_guestLoadU64
  local.set $3
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4480
   i32.add
   local.get $1
   i32.const 3
   i32.shl
   i32.add
   local.get $3
   i32.wrap_i64
   i64.extend_i32_u
   i64.const -4294967296
   i64.or
   i64.store
  else
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4480
   i32.add
   local.get $1
   i32.const 3
   i32.shl
   i32.add
   local.get $3
   i64.store
  end
  i32.const 1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_guestPointer (param $0 i32) (param $1 i64) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i64)
  (local $5 i32)
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $5
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $5
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $5
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $2
   i64.extend_i32_u
   local.get $5
   i64.load offset=208
   local.tee $4
   local.get $1
   i64.sub
   i64.le_u
   local.get $1
   local.get $4
   i64.lt_u
   i32.and
  end
  i32.eqz
  if
   i32.const -1
   return
  end
  local.get $2
  i32.const 65536
  local.get $1
  i64.const 65535
  i64.and
  i32.wrap_i64
  local.tee $2
  i32.sub
  i32.gt_u
  if
   i32.const -1
   return
  end
  local.get $0
  local.get $1
  local.get $3
  call $build/teto-generated/teto/__bq_248d3b0e_guestPage
  local.tee $0
  i32.const -2
  i32.eq
  local.get $0
  i32.const -1
  i32.eq
  i32.or
  if
   local.get $0
   return
  end
  local.get $0
  local.get $2
  i32.add
 )
 (func $build/teto-generated/teto/tetoStackPrepare (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $6
  i32.const -1
  i32.eq
  if
   i32.const 3
   return
  end
  local.get $6
  i64.load offset=208
  local.tee $8
  local.get $3
  i64.le_u
  local.get $2
  local.get $3
  i64.ge_u
  i32.or
  local.get $8
  local.get $3
  i64.sub
  i64.const 2147483647
  i64.gt_u
  i32.or
  if
   i32.const 1
   return
  end
  local.get $1
  local.get $3
  local.get $8
  local.get $3
  i64.sub
  i32.wrap_i64
  local.tee $9
  call $build/teto-generated/teto/__bq_248d3b0e_guestWritable
  i32.eqz
  if
   i32.const 3
   return
  end
  loop $while-continue|0
   local.get $4
   local.get $9
   i32.lt_u
   if
    local.get $1
    local.get $3
    local.get $4
    i64.extend_i32_u
    i64.add
    local.tee $8
    i32.const 0
    call $build/teto-generated/teto/__bq_248d3b0e_guestPage
    local.tee $0
    i32.const -2
    i32.eq
    local.get $0
    i32.const -1
    i32.eq
    i32.or
    if
     i32.const 3
     return
    end
    i32.const 65536
    local.get $8
    i64.const 65535
    i64.and
    i32.wrap_i64
    local.tee $5
    i32.sub
    local.tee $7
    local.get $9
    local.get $4
    i32.sub
    local.tee $10
    local.get $7
    local.get $10
    i32.lt_u
    select
    local.set $7
    local.get $0
    local.get $5
    i32.add
    i32.const 0
    local.get $7
    memory.fill
    local.get $4
    local.get $7
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  local.get $6
  local.get $2
  i64.store offset=256
  local.get $6
  local.get $3
  i64.store offset=264
  local.get $1
  i32.const 10
  i32.shl
  local.tee $0
  i32.const 4992
  i32.add
  local.get $2
  i64.store
  local.get $0
  i32.const 5000
  i32.add
  local.get $3
  i64.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoStackAux (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64) (result i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  block $folding-inner0
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 10
    i32.shl
    i32.const 4964
    i32.add
    i32.load
    local.tee $0
    i32.const 64
    i32.load
    i32.lt_u
    if (result i32)
     i32.const 60
     i32.load
     local.get $0
     i32.const 352
     i32.mul
     i32.add
    else
     i32.const -1
    end
   else
    i32.const -1
   end
   local.tee $0
   i32.const -1
   i32.eq
   br_if $folding-inner0
   local.get $0
   i64.load32_s offset=40
   i32.wrap_i64
   i64.extend_i32_u
   local.tee $5
   local.get $0
   i64.load32_s offset=44
   i32.wrap_i64
   i64.extend_i32_u
   local.tee $6
   i64.ne
   local.get $0
   i64.load32_s offset=24
   i32.wrap_i64
   i64.extend_i32_u
   local.tee $7
   local.get $0
   i64.load32_s offset=28
   i32.wrap_i64
   i64.extend_i32_u
   local.tee $8
   i64.ne
   i32.or
   local.set $9
   local.get $1
   local.get $2
   i64.const 3
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $0
    i64.load offset=240
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 4
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $0
    i64.load32_s offset=248
    i32.wrap_i64
    i64.extend_i32_u
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 5
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $0
    i64.load32_s offset=252
    i32.wrap_i64
    i64.extend_i32_u
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 6
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    i64.const 4096
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 7
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    i64.const 0
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 8
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    i64.const 0
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 9
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $0
    i64.load offset=232
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 11
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $7
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 12
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $8
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 13
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $5
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 14
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $6
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 23
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $9
    i64.extend_i32_u
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 25
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $3
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 31
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    local.get $4
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   local.get $1
   local.get $2
   i64.const 16
   i64.add
   local.tee $2
   i64.const 0
   i32.const 8
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   if (result i32)
    local.get $1
    local.get $2
    i64.const 8
    i64.add
    i64.const 0
    i32.const 8
    call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
   else
    i32.const 0
   end
   i32.eqz
   br_if $folding-inner0
   i32.const 0
   return
  end
  i32.const 3
 )
 (func $build/teto-generated/teto/tetoImageSegment (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i64) (param $6 i32) (param $7 i32) (param $8 i32) (result i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i64)
  (local $15 i32)
  (local $16 i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $12
  i32.const -1
  i32.eq
  local.get $8
  i64.extend_i32_u
  local.get $5
  i64.gt_u
  i32.or
  local.get $6
  i32.const 7
  i32.gt_u
  i32.or
  if (result i32)
   i32.const 0
  else
   i32.const 128
   i32.load
   i32.const 1
   i32.ne
   if (result i32)
    i32.const 0
   else
    local.get $7
    i32.const 124
    i32.load
    local.tee $0
    i32.sub
    local.tee $10
    i32.const 132
    i32.load
    local.tee $11
    i32.le_u
    local.get $0
    local.get $7
    i32.le_u
    i32.and
    local.get $8
    local.get $11
    local.get $10
    i32.sub
    i32.le_u
    i32.and
   end
  end
  i32.eqz
  if
   i32.const 8
   return
  end
  local.get $4
  i64.const 65536
  i64.lt_u
  local.get $4
  local.get $5
  i64.add
  local.tee $5
  local.get $4
  i64.lt_u
  i32.or
  local.get $5
  local.get $12
  i64.load offset=208
  i64.gt_u
  i32.or
  if
   i32.const 8
   return
  end
  local.get $12
  i32.load offset=220
  local.tee $11
  i32.const 120
  i32.load
  i32.ge_u
  if
   i32.const 8
   return
  end
  local.get $12
  i32.load offset=216
  local.set $13
  loop $while-continue|0
   local.get $9
   local.get $11
   i32.lt_u
   if
    local.get $13
    local.get $9
    i32.const 5
    i32.shl
    i32.add
    local.tee $0
    i64.load offset=8
    local.get $4
    i64.gt_u
    local.get $0
    i64.load
    local.get $5
    i64.lt_u
    i32.and
    if
     i32.const 8
     return
    end
    local.get $2
    local.get $0
    i32.load offset=20
    i32.eq
    if (result i32)
     local.get $3
     local.get $0
     i32.load offset=24
     i32.eq
    else
     i32.const 0
    end
    if
     i32.const 8
     return
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $while-continue|0
   end
  end
  local.get $8
  if (result i32)
   local.get $1
   local.get $4
   local.get $8
   call $build/teto-generated/teto/__bq_248d3b0e_guestWritable
  else
   i32.const 1
  end
  i32.eqz
  if
   i32.const 9
   return
  end
  i32.const 0
  local.set $9
  loop $while-continue|1
   local.get $8
   local.get $9
   i32.gt_u
   if
    local.get $1
    local.get $4
    local.get $9
    i64.extend_i32_u
    i64.add
    local.tee $14
    i32.const 0
    call $build/teto-generated/teto/__bq_248d3b0e_guestPage
    local.tee $15
    i32.const -2
    i32.eq
    local.get $15
    i32.const -1
    i32.eq
    i32.or
    if
     i32.const 9
     return
    end
    i32.const 65536
    local.get $14
    i64.const 65535
    i64.and
    i32.wrap_i64
    local.tee $10
    i32.sub
    local.tee $0
    local.get $8
    local.get $9
    i32.sub
    local.tee $16
    local.get $0
    local.get $16
    i32.lt_u
    select
    local.set $16
    i32.const 0
    local.set $0
    loop $while-continue|2
     local.get $0
     local.get $16
     i32.lt_u
     if
      local.get $10
      local.get $15
      i32.add
      local.get $0
      i32.add
      local.get $7
      local.get $9
      i32.add
      local.get $0
      i32.add
      i64.load8_u
      i64.store8
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $while-continue|2
     end
    end
    local.get $9
    local.get $16
    i32.add
    local.set $9
    br $while-continue|1
   end
  end
  local.get $13
  local.get $11
  i32.const 5
  i32.shl
  i32.add
  local.tee $0
  local.get $4
  i64.store
  local.get $0
  local.get $5
  i64.store offset=8
  local.get $0
  local.get $6
  i64.extend_i32_u
  i64.store32 offset=16
  local.get $0
  local.get $2
  i64.extend_i32_u
  i64.store32 offset=20
  local.get $0
  local.get $3
  i64.extend_i32_u
  i64.store32 offset=24
  local.get $12
  local.get $11
  i32.const 1
  i32.add
  i32.store offset=220
  local.get $12
  i32.const 224
  i32.add
  i64.load
  local.get $5
  i64.lt_u
  if
   local.get $12
   local.get $5
   i64.store offset=224
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4968
   i32.add
   local.get $5
   i64.store
  end
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoImageFinish (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $6
  i32.const -1
  i32.eq
  if
   i32.const 9
   return
  end
  local.get $6
  i32.load offset=220
  local.set $7
  local.get $6
  i32.load offset=216
  local.set $0
  local.get $6
  i64.load offset=232
  local.set $4
  loop $while-continue|0
   local.get $5
   local.get $7
   i32.lt_u
   if
    i32.const 1
    local.get $3
    local.get $0
    local.get $5
    i32.const 5
    i32.shl
    i32.add
    local.tee $3
    i32.load offset=16
    i32.const 4
    i32.and
    if (result i32)
     local.get $4
     local.get $3
     i64.load
     i64.ge_u
    else
     i32.const 0
    end
    if (result i32)
     local.get $4
     local.get $3
     i64.load offset=8
     i64.lt_u
    else
     i32.const 0
    end
    select
    local.set $3
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $while-continue|0
   end
  end
  local.get $3
  i32.eqz
  if
   i32.const 8
   return
  end
  local.get $6
  local.get $6
  i64.load offset=224
  local.tee $4
  i64.store offset=288
  local.get $6
  local.get $4
  i64.const 4095
  i64.add
  i64.const -4096
  i64.and
  i64.store offset=296
  local.get $1
  i32.const 10
  i32.shl
  local.tee $0
  i32.const 4976
  i32.add
  local.tee $1
  local.get $1
  i64.load
  i64.const 1
  i64.add
  i64.store
  local.get $0
  i32.const 4984
  i32.add
  local.tee $0
  local.get $0
  i64.load
  local.get $2
  i64.extend_i32_u
  i64.add
  i64.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoImageBegin (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i32) (param $6 i32) (result i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $4
  i64.const 0
  i64.ne
  local.get $2
  local.get $4
  i64.le_u
  i32.and
  local.get $1
  i32.const 12
  i32.load
  i32.ge_u
  local.get $2
  i64.const 1048576
  i64.lt_u
  i32.or
  local.get $2
  i64.const 281474976710655
  i64.gt_u
  i32.or
  local.get $3
  i64.const 65536
  i64.lt_u
  i32.or
  local.get $2
  local.get $3
  i64.le_u
  i32.or
  i32.or
  if
   i32.const 9
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $0
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $0
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $9
  i32.const -1
  i32.eq
  if
   i32.const 9
   return
  end
  local.get $9
  i32.load offset=216
  i32.const 120
  i32.load
  local.set $0
  local.get $9
  i32.load offset=272
  local.set $7
  local.get $9
  i32.load offset=280
  local.set $8
  local.get $9
  i32.load offset=192
  i32.const 0
  local.get $9
  i32.load offset=196
  i32.const 4
  i32.shl
  memory.fill
  i32.const 0
  local.get $0
  i32.const 5
  i32.shl
  memory.fill
  local.get $7
  i32.const 0
  local.get $8
  i32.const 48
  i32.mul
  memory.fill
  local.get $9
  i32.const 0
  i32.store offset=200
  local.get $9
  i32.const 0
  i32.store offset=220
  local.get $9
  i32.const 0
  i32.store offset=276
  local.get $9
  i64.const 274877906944
  i64.store offset=304
  local.get $9
  local.get $2
  i64.store offset=208
  local.get $9
  i64.const 0
  i64.store offset=224
  local.get $9
  local.get $3
  i64.store offset=232
  local.get $9
  i64.const 0
  i64.store offset=288
  local.get $9
  i64.const 0
  i64.store offset=296
  local.get $9
  local.get $4
  i64.store offset=240
  local.get $9
  local.get $5
  i32.store offset=248
  local.get $9
  local.get $6
  i32.store offset=252
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  local.get $2
  i64.store offset=16
  local.get $0
  local.get $3
  i64.store offset=24
  local.get $0
  i64.const 0
  i64.store offset=872
  local.get $0
  i64.const 0
  i64.store32 offset=112
  local.get $0
  i64.const -1
  i64.store offset=32
  i32.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_runHartLocked (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.tee $4
  local.get $4
  i64.load offset=56
  i64.const 1
  i64.add
  i64.store offset=56
  local.get $4
  i32.load offset=96
  local.tee $7
  local.get $3
  i32.ne
  local.get $7
  i32.const 0
  i32.ge_s
  i32.and
  if
   local.get $4
   local.get $4
   i64.load offset=88
   i64.const 1
   i64.add
   i64.store offset=88
  end
  local.get $4
  local.get $3
  i32.store offset=96
  i32.const 16
  i32.const 16
  i32.load
  i32.const 1
  i32.add
  i32.store
  local.get $4
  i32.load offset=4
  local.tee $7
  i32.const 3
  i32.eq
  if
   i32.const 3
   local.set $5
  else
   local.get $7
   i32.const 4
   i32.eq
   if
    i32.const 4
    local.set $5
   else
    local.get $7
    i32.const 1
    i32.ne
    if
     i32.const 5
     local.set $5
    else
     loop $while-continue|0
      local.get $5
      i32.eqz
      local.get $1
      local.get $6
      i32.gt_u
      i32.and
      if
       local.get $0
       local.get $2
       call $build/teto-generated/teto/__bq_248d3b0e_step
       local.set $5
       local.get $4
       local.get $4
       i64.load offset=48
       i64.const 1
       i64.add
       i64.store offset=48
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $while-continue|0
      end
     end
    end
   end
  end
  local.get $5
  i32.const 6
  i32.eq
  if
   local.get $4
   local.get $4
   i64.load offset=72
   i64.const 1
   i64.add
   i64.store offset=72
  end
  i32.const 16
  i32.const 16
  i32.load
  i32.const 1
  i32.sub
  i32.store
  local.get $4
  i32.const -64
  i32.sub
  local.tee $0
  local.get $0
  i64.load
  i64.const 1
  i64.add
  i64.store
  local.get $3
  i32.const 0
  i32.ge_s
  if (result i32)
   i32.const 112
   i32.load
   local.get $3
   i32.gt_u
  else
   i32.const 0
  end
  if
   local.get $3
   i32.const 24
   i32.mul
   local.tee $0
   local.get $0
   i64.load offset=160
   i64.const 1
   i64.add
   i64.store offset=160
   local.get $0
   local.get $0
   i64.load offset=168
   local.get $6
   i64.extend_i32_u
   i64.add
   i64.store offset=168
  end
  local.get $4
  i32.const 0
  i32.store
  local.get $5
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_getResId (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  local.get $0
  i32.const 10
  i32.shl
  local.tee $6
  i32.const 4304
  i32.add
  i64.load
  local.set $3
  local.get $6
  i32.const 4320
  i32.add
  i64.load
  local.tee $4
  i64.eqz
  local.get $6
  i32.const 4312
  i32.add
  i64.load
  local.tee $5
  i64.eqz
  local.get $3
  i64.eqz
  i32.or
  i32.or
  if (result i32)
   i32.const 0
  else
   local.get $0
   local.get $3
   i32.const 4
   i32.const 2
   call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  end
  if (result i32)
   local.get $0
   local.get $5
   i32.const 4
   i32.const 2
   call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $4
   i32.const 4
   i32.const 2
   call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $3
   i32.const 4
   call $build/teto-generated/teto/__bq_248d3b0e_guestWritable
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $5
   i32.const 4
   call $build/teto-generated/teto/__bq_248d3b0e_guestWritable
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $4
   i32.const 4
   call $build/teto-generated/teto/__bq_248d3b0e_guestWritable
  else
   i32.const 0
  end
  i32.eqz
  if
   i64.const -14
   return
  end
  i32.const 44
  i32.const 28
  local.get $2
  select
  local.get $1
  i32.add
  i64.load32_s
  i32.wrap_i64
  i64.extend_i32_u
  local.set $7
  i32.const 48
  i32.const 32
  local.get $2
  select
  local.get $1
  i32.add
  i64.load32_s
  i32.wrap_i64
  i64.extend_i32_u
  local.set $8
  local.get $0
  local.get $3
  i32.const 40
  i32.const 24
  local.get $2
  select
  local.get $1
  i32.add
  i64.load32_s
  i32.wrap_i64
  i64.extend_i32_u
  i32.const 4
  call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
  if (result i32)
   local.get $0
   local.get $5
   local.get $7
   i32.const 4
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
  else
   i32.const 0
  end
  if (result i32)
   local.get $0
   local.get $4
   local.get $8
   i32.const 4
   call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
  else
   i32.const 0
  end
  i32.eqz
  if
   i64.const -12
   return
  end
  i64.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_anonymousMap (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (param $4 i64) (result i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i64)
  local.get $2
  i64.eqz
  local.get $0
  i64.load offset=208
  local.tee $8
  local.get $2
  i64.lt_u
  i32.or
  local.get $3
  i64.const 7
  i64.gt_u
  i32.or
  local.get $4
  i64.const 2147483647
  i64.gt_u
  i32.or
  if
   i64.const -22
   return
  end
  local.get $4
  i32.wrap_i64
  local.tee $7
  i32.const 3
  i32.and
  local.set $9
  i32.const 1
  local.get $7
  i32.const -1065012
  i32.and
  local.get $7
  i32.const 32
  i32.and
  if (result i32)
   local.get $9
   i32.const 2
   i32.ne
   local.get $9
   i32.const 1
   i32.ne
   i32.and
  else
   i32.const 1
  end
  select
  if
   i64.const -22
   return
  end
  block $folding-inner0
   local.get $2
   i64.const 4095
   i64.add
   i64.const -4096
   i64.and
   local.tee $2
   i64.eqz
   local.get $2
   local.get $8
   i64.gt_u
   i32.or
   br_if $folding-inner0
   local.get $7
   i32.const 1048592
   i32.and
   if
    local.get $7
    i32.const 1048576
    i32.and
    i32.const 1
    local.get $7
    i32.const 16
    i32.and
    select
    i32.eqz
    local.get $1
    i64.const 4095
    i64.and
    i64.const 0
    i64.ne
    local.get $1
    local.get $8
    i64.gt_u
    i32.or
    local.get $2
    local.get $8
    local.get $1
    i64.sub
    i64.gt_u
    i32.or
    br_if $folding-inner0
    local.get $1
    local.get $2
    i64.add
    local.set $4
    if
     local.get $1
     local.get $0
     i64.load offset=296
     i64.const 1052671
     i64.add
     i64.const -4096
     i64.and
     i64.lt_u
     local.get $0
     i64.load offset=256
     local.tee $8
     i64.const 1048576
     i64.le_u
     i32.or
     local.get $4
     local.get $8
     i64.const -1048576
     i64.add
     i64.ge_u
     i32.or
     br_if $folding-inner0
     local.get $0
     i32.load offset=280
     local.set $9
     local.get $0
     i32.load offset=276
     local.tee $10
     i32.const 1
     i32.add
     local.set $5
     loop $while-continue|0
      local.get $6
      local.get $10
      i32.lt_u
      if
       local.get $0
       i32.load offset=272
       local.get $6
       i32.const 48
       i32.mul
       i32.add
       local.tee $11
       i64.load
       local.set $8
       local.get $11
       i64.load offset=8
       local.tee $12
       local.get $1
       i64.gt_u
       local.get $4
       local.get $8
       i64.gt_u
       i32.and
       if
        local.get $1
        local.get $8
        i64.le_u
        local.get $4
        local.get $12
        i64.ge_u
        i32.and
        if (result i32)
         local.get $5
         i32.const 1
         i32.sub
        else
         local.get $5
         i32.const 1
         i32.add
         local.get $5
         local.get $4
         local.get $12
         i64.lt_u
         local.get $1
         local.get $8
         i64.gt_u
         i32.and
         select
        end
        local.set $5
       end
       local.get $6
       i32.const 1
       i32.add
       local.set $6
       br $while-continue|0
      end
     end
     local.get $5
     local.get $9
     i32.gt_u
     br_if $folding-inner0
     local.get $0
     local.get $1
     local.get $2
     call $build/teto-generated/teto/__bq_248d3b0e_anonymousUnmap
     local.tee $4
     i64.const -4096
     i64.ne
     local.get $4
     i64.const 0
     i64.ne
     i32.and
     if
      local.get $4
      return
     end
    else
     block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$3 (result i32)
      i32.const 1
      local.get $1
      local.get $0
      i64.load offset=296
      i64.const 1052671
      i64.add
      i64.const -4096
      i64.and
      i64.lt_u
      local.get $1
      local.get $4
      i64.ge_u
      i32.or
      local.get $0
      i64.load offset=208
      local.get $4
      i64.lt_u
      i32.or
      local.get $0
      i64.load offset=256
      local.tee $8
      i64.const 1048576
      i64.le_u
      i32.or
      local.get $4
      local.get $8
      i64.const -1048576
      i64.add
      i64.ge_u
      i32.or
      br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$3
      drop
      local.get $0
      i32.load offset=276
      local.set $5
      loop $while-continue|00
       local.get $5
       local.get $6
       i32.gt_u
       if
        i32.const 1
        local.get $1
        local.get $0
        i32.load offset=272
        local.get $6
        i32.const 48
        i32.mul
        i32.add
        local.tee $9
        i64.load offset=8
        i64.lt_u
        if (result i32)
         local.get $4
         local.get $9
         i64.load
         i64.gt_u
        else
         i32.const 0
        end
        br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$3
        drop
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $while-continue|00
       end
      end
      i32.const 0
     end
     if
      i64.const -17
      i64.const -12
      local.get $7
      i32.const 1048576
      i32.and
      select
      return
     end
    end
   else
    local.get $1
    i64.const 0
    i64.ne
    if
     local.get $1
     i64.const 4095
     i64.add
     i64.const -4096
     i64.and
     i64.const 0
     local.get $1
     local.get $8
     i64.const 4095
     i64.sub
     i64.le_u
     select
     local.set $1
    end
    local.get $1
    i64.eqz
    local.get $1
    local.get $8
    i64.gt_u
    i32.or
    local.get $2
    local.get $8
    local.get $1
    i64.sub
    i64.gt_u
    i32.or
    if (result i32)
     i32.const 1
    else
     block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$4 (result i32)
      i32.const 1
      local.get $1
      local.get $0
      i64.load offset=296
      i64.const 1052671
      i64.add
      i64.const -4096
      i64.and
      i64.lt_u
      local.get $1
      local.get $2
      i64.add
      local.tee $4
      local.get $1
      i64.le_u
      i32.or
      local.get $0
      i64.load offset=208
      local.get $4
      i64.lt_u
      i32.or
      local.get $0
      i64.load offset=256
      local.tee $12
      i64.const 1048576
      i64.le_u
      i32.or
      local.get $4
      local.get $12
      i64.const -1048576
      i64.add
      i64.ge_u
      i32.or
      br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$4
      drop
      local.get $0
      i32.load offset=276
      local.set $9
      loop $while-continue|01
       local.get $6
       local.get $9
       i32.lt_u
       if
        i32.const 1
        local.get $1
        local.get $0
        i32.load offset=272
        local.get $6
        i32.const 48
        i32.mul
        i32.add
        local.tee $10
        i64.load offset=8
        i64.lt_u
        if (result i32)
         local.get $4
         local.get $10
         i64.load
         i64.gt_u
        else
         i32.const 0
        end
        br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$4
        drop
        local.get $6
        i32.const 1
        i32.add
        local.set $6
        br $while-continue|01
       end
      end
      i32.const 0
     end
    end
    if
     local.get $0
     i64.load offset=304
     local.tee $4
     local.get $0
     i64.load offset=296
     i64.const 16781311
     i64.add
     i64.const -4096
     i64.and
     local.tee $1
     i64.lt_u
     local.get $4
     local.get $8
     i64.gt_u
     i32.or
     local.get $2
     local.get $8
     local.get $4
     i64.sub
     i64.gt_u
     i32.or
     i32.eqz
     if
      local.get $4
      local.set $1
     end
     local.get $0
     i32.load offset=280
     local.set $9
     loop $while-continue|1
      local.get $5
      local.get $9
      i32.le_u
      if (result i32)
       local.get $2
       local.get $8
       local.get $1
       i64.sub
       i64.gt_u
       local.get $1
       local.get $8
       i64.gt_u
       i32.or
       if (result i32)
        i32.const 1
       else
        block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$5 (result i32)
         i32.const 0
         local.set $6
         i32.const 1
         local.get $1
         local.get $0
         i64.load offset=296
         i64.const 1052671
         i64.add
         i64.const -4096
         i64.and
         i64.lt_u
         local.get $1
         local.get $2
         i64.add
         local.tee $4
         local.get $1
         i64.le_u
         i32.or
         local.get $0
         i64.load offset=208
         local.get $4
         i64.lt_u
         i32.or
         local.get $0
         i64.load offset=256
         local.tee $12
         i64.const 1048576
         i64.le_u
         i32.or
         local.get $4
         local.get $12
         i64.const -1048576
         i64.add
         i64.ge_u
         i32.or
         br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$5
         drop
         local.get $0
         i32.load offset=276
         local.set $10
         loop $while-continue|02
          local.get $6
          local.get $10
          i32.lt_u
          if
           i32.const 1
           local.get $1
           local.get $0
           i32.load offset=272
           local.get $6
           i32.const 48
           i32.mul
           i32.add
           local.tee $11
           i64.load offset=8
           i64.lt_u
           if (result i32)
            local.get $4
            local.get $11
            i64.load
            i64.gt_u
           else
            i32.const 0
           end
           br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$5
           drop
           local.get $6
           i32.const 1
           i32.add
           local.set $6
           br $while-continue|02
          end
         end
         i32.const 0
        end
       end
      else
       i32.const 0
      end
      if
       local.get $1
       local.get $8
       i64.const 16777216
       i64.sub
       i64.gt_u
       br_if $folding-inner0
       local.get $1
       i64.const 16781311
       i64.add
       i64.const -4096
       i64.and
       local.set $1
       local.get $5
       i32.const 1
       i32.add
       local.set $5
       br $while-continue|1
      end
     end
     local.get $2
     local.get $8
     local.get $1
     i64.sub
     i64.gt_u
     local.get $1
     local.get $8
     i64.gt_u
     i32.or
     if (result i32)
      i32.const 1
     else
      block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$6 (result i32)
       i32.const 0
       local.set $6
       i32.const 1
       local.get $1
       local.get $0
       i64.load offset=296
       i64.const 1052671
       i64.add
       i64.const -4096
       i64.and
       i64.lt_u
       local.get $1
       local.get $2
       i64.add
       local.tee $4
       local.get $1
       i64.le_u
       i32.or
       local.get $0
       i64.load offset=208
       local.get $4
       i64.lt_u
       i32.or
       local.get $0
       i64.load offset=256
       local.tee $8
       i64.const 1048576
       i64.le_u
       i32.or
       local.get $4
       local.get $8
       i64.const -1048576
       i64.add
       i64.ge_u
       i32.or
       br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$6
       drop
       local.get $0
       i32.load offset=276
       local.set $5
       loop $while-continue|03
        local.get $5
        local.get $6
        i32.gt_u
        if
         i32.const 1
         local.get $1
         local.get $0
         i32.load offset=272
         local.get $6
         i32.const 48
         i32.mul
         i32.add
         local.tee $9
         i64.load offset=8
         i64.lt_u
         if (result i32)
          local.get $4
          local.get $9
          i64.load
          i64.gt_u
         else
          i32.const 0
         end
         br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflict$6
         drop
         local.get $6
         i32.const 1
         i32.add
         local.set $6
         br $while-continue|03
        end
       end
       i32.const 0
      end
     end
     br_if $folding-inner0
    end
   end
   local.get $0
   i32.load offset=276
   local.tee $5
   local.get $0
   i32.load offset=280
   i32.ge_u
   br_if $folding-inner0
   local.get $0
   local.get $1
   local.get $1
   local.get $2
   i64.add
   local.tee $2
   call $build/teto-generated/teto/__bq_248d3b0e_clearMappedRange
   local.get $0
   i32.load offset=272
   local.get $5
   i32.const 48
   i32.mul
   i32.add
   local.tee $6
   i32.const 0
   i32.const 48
   memory.fill
   local.get $6
   local.get $1
   i64.store
   local.get $6
   local.get $2
   i64.store offset=8
   local.get $6
   local.get $3
   i32.wrap_i64
   i64.extend_i32_u
   i64.store32 offset=16
   local.get $6
   local.get $7
   i64.extend_i32_u
   i64.store32 offset=20
   local.get $6
   i32.const -1
   i32.store offset=24
   local.get $6
   i64.const 0
   i64.store32 offset=40
   local.get $0
   local.get $5
   i32.const 1
   i32.add
   i32.store offset=276
   local.get $2
   i64.const 4095
   i64.add
   i64.const -4096
   i64.and
   local.tee $2
   local.get $0
   i64.load offset=304
   i64.gt_u
   if
    local.get $0
    local.get $2
    i64.store offset=304
   end
   local.get $1
   return
  end
  i64.const -12
 )
 (func $build/teto-generated/teto/tetoWorkerMetric (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  local.get $2
  i32.const 8
  i32.add
  i32.const 24
  i32.gt_u
  local.set $0
  i32.const 1
  local.get $2
  i32.const 7
  i32.and
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 112
   i32.load
   i32.ge_u
  else
   i32.const 1
  end
  local.get $0
  i32.or
  select
  if
   i64.const 0
   return
  end
  local.get $2
  local.get $1
  i32.const 24
  i32.mul
  i32.const 160
  i32.add
  i32.add
  i64.load
 )
 (func $build/teto-generated/teto/tetoStackStoreU64 (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  i32.const 0
  i32.const 3
  local.get $1
  local.get $2
  local.get $3
  i32.const 8
  call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
  select
 )
 (func $build/teto-generated/teto/tetoStackFinish (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i64.load offset=264
   i64.ne
  end
  if
   i32.const 3
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  local.tee $0
  i32.const 4240
  i32.add
  local.get $2
  i64.store
  local.get $0
  i32.const 5008
  i32.add
  local.tee $0
  local.get $0
  i64.load
  i64.const 1
  i64.add
  i64.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoSeekDescriptor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i32) (result i64)
  (local $5 i64)
  (local $6 i64)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  local.get $4
  i32.const 2
  i32.gt_u
  i32.or
  if
   i64.const -22
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $0
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $0
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=324
   i32.ge_u
  end
  if
   i64.const -9
   return
  end
  local.get $0
  i32.load
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store
  end
  local.get $1
  if
   i64.const -11
   return
  end
  i32.const 32
  i32.load
  local.tee $1
  i32.eqz
  if
   i32.const 32
   i32.const 1
   i32.store
  end
  local.get $1
  if
   local.get $0
   i32.const 0
   i32.store
   i64.const -11
   return
  end
  local.get $0
  i32.load offset=320
  local.get $2
  i32.const 5
  i32.shl
  i32.add
  local.tee $1
  i32.load
  local.tee $2
  i32.const 3
  i32.ne
  local.get $2
  i32.const 2
  i32.ne
  i32.and
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store
   i64.const -9
   return
  end
  local.get $4
  i32.const 1
  i32.eq
  if (result i64)
   local.get $1
   i64.load offset=16
  else
   local.get $4
   i32.const 2
   i32.eq
   if (result i64)
    local.get $1
    i32.load offset=8
    local.tee $2
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
    if (result i64)
     i32.const 3232
     i32.load
     local.get $2
     i32.const 6
     i32.shl
     i32.add
     i64.load offset=24
    else
     i64.const 0
    end
   else
    i64.const 0
   end
  end
  local.tee $6
  local.get $3
  i64.add
  local.tee $5
  local.get $6
  i64.lt_s
  local.get $3
  i64.const 0
  i64.gt_s
  i32.and
  local.get $5
  i64.const 0
  i64.lt_s
  i32.or
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store
   i64.const -22
   return
  end
  local.get $1
  local.get $5
  i64.store offset=16
  i32.const 32
  i32.const 0
  i32.store
  local.get $0
  i32.const 0
  i32.store
  local.get $5
 )
 (func $build/teto-generated/teto/tetoRunSchedulerBatch (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.eqz
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  i32.or
  local.get $3
  i32.const 0
  i32.lt_s
  i32.or
  if
   i32.const 4
   return
  end
  local.get $3
  i32.const 112
  i32.load
  i32.ge_u
  if
   i32.const 4
   return
  end
  i32.const 24
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 24
   i32.const 1
   i32.store
  end
  local.get $0
  if
   i32.const 104
   i32.const 104
   i64.load
   i64.const 1
   i64.add
   i64.store
   i32.const 6
   return
  end
  i32.const 76
  i32.load
  i32.const 12
  i32.load
  local.tee $7
  i32.rem_u
  local.set $5
  loop $while-continue|0
   local.get $4
   local.get $7
   i32.lt_u
   if
    local.get $4
    local.get $5
    i32.add
    local.get $7
    i32.rem_u
    local.tee $0
    i32.const 10
    i32.shl
    i32.const 4096
    i32.add
    local.tee $8
    i32.load offset=4
    i32.const 1
    i32.eq
    if
     local.get $8
     i32.load
     local.tee $6
     i32.eqz
     if
      local.get $8
      i32.const 1
      i32.store
     end
     local.get $6
     i32.eqz
     if
      i32.const 76
      local.get $0
      i32.const 1
      i32.add
      local.tee $4
      local.get $7
      i32.rem_u
      i64.extend_i32_u
      i64.store32
      i32.const 24
      i32.const 0
      i32.store
      i32.const 80
      i32.const 80
      i64.load
      i64.const 1
      i64.add
      i64.store
      i32.const 96
      i32.const 96
      i64.load
      i64.const 1
      i64.add
      i64.store
      local.get $0
      local.get $1
      local.get $2
      local.get $3
      call $build/teto-generated/teto/__bq_248d3b0e_runHartLocked
      i32.const 255
      i32.and
      local.get $4
      i32.const 8
      i32.shl
      i32.add
      return
     end
     local.get $8
     i32.const 80
     i32.add
     local.get $8
     i64.load offset=80
     i64.const 1
     i64.add
     i64.store
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $while-continue|0
   end
  end
  i32.const 24
  i32.const 0
  i32.store
  i32.const 88
  i32.const 88
  i64.load
  i64.const 1
  i64.add
  i64.store
  local.get $3
  i32.const 24
  i32.mul
  local.tee $0
  i32.const 176
  i32.add
  local.get $0
  i64.load offset=176
  i64.const 1
  i64.add
  i64.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoRunRv64Batch (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (param $4 i32) (result i32)
  (local $5 i32)
  local.get $2
  i32.eqz
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  i32.or
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.tee $5
  i32.load
  local.tee $0
  i32.eqz
  if
   local.get $5
   i32.const 1
   i32.store
  end
  local.get $0
  if
   local.get $5
   i32.const 80
   i32.add
   local.get $5
   i64.load offset=80
   i64.const 1
   i64.add
   i64.store
   i32.const 5
   return
  end
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  call $build/teto-generated/teto/__bq_248d3b0e_runHartLocked
 )
 (func $build/teto-generated/teto/tetoResumeSyscall (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  i32.load
  local.tee $3
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store
  end
  local.get $3
  if
   i32.const 5
   return
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.ne
  end
  if
   local.get $0
   i32.const 0
   i32.store
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  local.tee $1
  i32.const 4304
  i32.add
  local.get $2
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $1
  i32.const 4964
  i32.add
  i32.load
  local.tee $1
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $1
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $1
  i32.const -1
  i32.ne
  if
   local.get $1
   i32.const 1
   i32.store offset=4
  end
  local.get $0
  i32.const 0
  i32.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoResumeHost (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  i32.load
  local.tee $3
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store
  end
  local.get $3
  if
   i32.const 5
   return
  end
  local.get $0
  i32.load offset=4
  i32.const 2
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.ne
  end
  if
   local.get $0
   i32.const 0
   i32.store
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  local.tee $1
  i32.const 4304
  i32.add
  local.get $2
  i64.store
  local.get $0
  i32.const 0
  i32.store offset=640
  local.get $0
  i32.const -1
  i32.store offset=644
  local.get $0
  i64.const 0
  i64.store offset=648
  local.get $0
  i64.const 0
  i64.store32 offset=656
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 1
  i32.store offset=4
  local.get $1
  i32.const 4964
  i32.add
  i32.load
  local.tee $1
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $1
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $1
  i32.const -1
  i32.ne
  if
   local.get $1
   i32.const 1
   i32.store offset=4
  end
  local.get $0
  i32.const 0
  i32.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoResolvePath (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const -22
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $1
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $1
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $1
  i32.const -1
  i32.eq
  if
   i32.const -3
   return
  end
  i32.const 32
  i32.load
  local.tee $6
  i32.eqz
  if
   i32.const 32
   i32.const 1
   i32.store
  end
  local.get $6
  if
   i32.const -11
   return
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  local.get $4
  local.get $5
  call $build/teto-generated/teto/tetoVfsResolve
  i32.const 32
  i32.const 0
  i32.store
 )
 (func $build/teto-generated/teto/tetoReadDescriptor (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  local.get $4
  i32.const 1048576
  i32.gt_u
  i32.or
  if
   i32.const -22
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $1
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $1
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $1
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $1
   i32.load offset=324
   i32.ge_u
  end
  if
   i32.const -9
   return
  end
  local.get $1
  i32.load
  local.tee $5
  i32.eqz
  if
   local.get $1
   i32.const 1
   i32.store
  end
  local.get $5
  if
   i32.const -11
   return
  end
  i32.const 32
  i32.load
  local.tee $5
  i32.eqz
  if
   i32.const 32
   i32.const 1
   i32.store
  end
  local.get $5
  if
   local.get $1
   i32.const 0
   i32.store
   i32.const -11
   return
  end
  local.get $1
  i32.load offset=320
  local.get $2
  i32.const 5
  i32.shl
  i32.add
  local.tee $2
  i32.load
  local.tee $5
  i32.const 3
  i32.eq
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   i32.const -21
   return
  end
  local.get $5
  i32.const 2
  i32.ne
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.load offset=4
   i32.const 1
   i32.and
  end
  i32.eqz
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   i32.const -9
   return
  end
  local.get $4
  i32.eqz
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   i32.const 0
   return
  end
  local.get $0
  local.get $2
  i32.load offset=8
  local.get $2
  i32.const 16
  i32.add
  i64.load
  local.get $3
  local.get $4
  call $build/teto-generated/teto/tetoVfsReadData
  local.tee $0
  i32.const 0
  i32.gt_s
  if
   local.get $2
   local.get $2
   i64.load offset=16
   local.get $0
   i64.extend_i32_s
   i64.add
   i64.store offset=16
  end
  i32.const 32
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store
  local.get $0
 )
 (func $build/teto-generated/teto/tetoProcessSetGroup (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  local.get $2
  i32.const 32
  i32.ge_u
  i32.or
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $0
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $0
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if
   i32.const 4
   return
  end
  i32.const 36
  i32.load
  local.tee $1
  i32.eqz
  if
   i32.const 36
   i32.const 1
   i32.store
  end
  local.get $1
  if
   i32.const 6
   return
  end
  local.get $0
  i32.load offset=56
  local.tee $1
  local.get $2
  i32.lt_u
  if
   i32.const 36
   i32.const 0
   i32.store
   i32.const 4
   return
  end
  local.get $0
  i32.const -64
  i32.sub
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  local.get $3
  i32.store
  local.get $1
  local.get $2
  i32.eq
  if
   local.get $0
   local.get $1
   i32.const 1
   i32.add
   i32.store offset=56
  end
  i32.const 36
  i32.const 0
  i32.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoProcessSegmentCount (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load offset=220
  end
 )
 (func $build/teto-generated/teto/tetoProcessMapProtection (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=276
   i32.ge_u
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=272
  local.get $2
  i32.const 48
  i32.mul
  i32.add
  i32.load offset=16
 )
 (func $build/teto-generated/teto/tetoProcessMapEnd (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=276
   i32.ge_u
  end
  if
   i64.const 0
   return
  end
  local.get $0
  i32.load offset=272
  local.get $2
  i32.const 48
  i32.mul
  i32.add
  i64.load offset=8
 )
 (func $build/teto-generated/teto/tetoProcessMapCount (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 0
  else
   local.get $0
   i32.load offset=276
  end
 )
 (func $build/teto-generated/teto/tetoProcessMapAddress (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=276
   i32.ge_u
  end
  if
   i64.const 0
   return
  end
  local.get $0
  i32.load offset=272
  local.get $2
  i32.const 48
  i32.mul
  i32.add
  i64.load
 )
 (func $build/teto-generated/teto/tetoProcessInit (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (param $6 i32) (param $7 i32) (param $8 i32) (param $9 i32) (result i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  local.get $2
  i32.eqz
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  i32.or
  if
   i32.const 4
   return
  end
  i32.const 28
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 28
   i32.const 1
   i32.store
  end
  local.get $0
  if
   i32.const 6
   return
  end
  i32.const 64
  i32.load
  local.set $12
  i32.const -1
  local.set $0
  loop $while-continue|0
   local.get $10
   local.get $12
   i32.lt_u
   if
    i32.const 60
    i32.load
    local.get $10
    i32.const 352
    i32.mul
    i32.add
    local.tee $13
    i32.load offset=4
    local.tee $14
    if (result i32)
     local.get $2
     local.get $13
     i32.load offset=8
     i32.eq
    else
     i32.const 0
    end
    if
     i32.const 28
     i32.const 0
     i32.store
     i32.const 4
     return
    end
    local.get $10
    local.get $0
    local.get $14
    i32.eqz
    local.get $0
    i32.const -1
    i32.eq
    i32.and
    select
    local.set $0
    local.get $10
    i32.const 1
    i32.add
    local.set $10
    br $while-continue|0
   end
  end
  local.get $0
  i32.const -1
  i32.eq
  if
   i32.const 28
   i32.const 0
   i32.store
   i32.const 1
   return
  end
  i32.const 44
  i32.load
  i32.const 48
  i32.load
  local.tee $16
  local.get $0
  i32.mul
  i32.const 4
  i32.shl
  i32.add
  local.set $17
  i32.const 116
  i32.load
  i32.const 120
  i32.load
  local.tee $10
  local.get $0
  i32.mul
  i32.const 5
  i32.shl
  i32.add
  local.set $15
  i32.const 136
  i32.load
  i32.const 140
  i32.load
  local.tee $18
  local.get $0
  i32.mul
  i32.const 48
  i32.mul
  i32.add
  local.set $14
  i32.const 3292
  i32.load
  i32.const 3296
  i32.load
  local.tee $13
  local.get $0
  i32.mul
  i32.const 5
  i32.shl
  i32.add
  local.set $12
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4112
  i32.add
  i64.load
  local.set $11
  i32.const 60
  i32.load
  local.get $0
  i32.const 352
  i32.mul
  i32.add
  local.tee $19
  i32.const 0
  i32.const 352
  memory.fill
  local.get $17
  i32.const 0
  local.get $16
  i32.const 4
  i32.shl
  memory.fill
  local.get $15
  i32.const 0
  local.get $10
  i32.const 5
  i32.shl
  memory.fill
  local.get $14
  i32.const 0
  local.get $18
  i32.const 48
  i32.mul
  memory.fill
  local.get $12
  i32.const 0
  local.get $13
  i32.const 5
  i32.shl
  memory.fill
  local.get $19
  local.get $2
  i32.store offset=8
  local.get $19
  local.get $3
  i32.store offset=12
  local.get $19
  local.get $2
  i32.store offset=16
  local.get $19
  local.get $4
  i32.store offset=24
  local.get $19
  local.get $5
  i32.store offset=28
  local.get $19
  local.get $6
  i32.store offset=32
  local.get $19
  local.get $5
  i32.store offset=36
  local.get $19
  local.get $7
  i32.store offset=40
  local.get $19
  local.get $8
  i32.store offset=44
  local.get $19
  local.get $9
  i32.store offset=48
  local.get $19
  local.get $8
  i32.store offset=52
  local.get $19
  local.get $17
  i32.store offset=192
  local.get $19
  local.get $16
  i32.store offset=196
  local.get $19
  i32.const 0
  i32.store offset=200
  local.get $19
  local.get $11
  i64.store offset=208
  local.get $19
  local.get $15
  i32.store offset=216
  local.get $19
  i32.const 0
  i32.store offset=220
  local.get $19
  local.get $14
  i32.store offset=272
  local.get $19
  i32.const 0
  i32.store offset=276
  local.get $19
  local.get $18
  i32.store offset=280
  local.get $19
  i64.const 274877906944
  i64.store offset=304
  local.get $19
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
  i32.store offset=312
  local.get $19
  i32.const 18
  i32.store offset=316
  local.get $19
  i32.const 320
  i32.add
  local.get $12
  i32.store
  local.get $19
  local.get $13
  i32.store offset=324
  local.get $19
  i32.load offset=320
  i64.const 1
  i64.store32
  local.get $19
  i32.load offset=320
  i64.const 1
  i64.store32 offset=4
  local.get $19
  i32.load offset=320
  i64.const 1
  i64.store32 offset=32
  local.get $19
  i32.load offset=320
  i64.const 2
  i64.store32 offset=36
  local.get $19
  i32.load offset=320
  i32.const -64
  i32.sub
  i64.const 1
  i64.store32
  local.get $19
  i32.load offset=320
  i64.const 2
  i64.store32 offset=68
  local.get $19
  i32.const 1
  i32.store offset=4
  local.get $1
  i32.const 10
  i32.shl
  local.tee $1
  i32.const 4964
  i32.add
  local.get $0
  i64.extend_i32_u
  i64.store32
  local.get $1
  i32.const 4200
  i32.add
  local.get $17
  i64.extend_i32_u
  i64.store32
  local.get $1
  i32.const 4204
  i32.add
  local.get $16
  i64.extend_i32_u
  i64.store32
  local.get $1
  i32.const 4208
  i32.add
  i64.const 0
  i64.store32
  i32.const 68
  i32.const 68
  i32.load
  i32.const 1
  i32.add
  i64.extend_i32_u
  i64.store32
  local.get $2
  i32.const 72
  i32.load
  i32.ge_u
  if
   i32.const 72
   local.get $2
   i32.const 1
   i32.add
   i64.extend_i32_u
   i64.store32
  end
  i32.const 28
  i32.const 0
  i32.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoProcessCount (param $0 i32) (result i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   i32.const 68
   i32.load
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoOpenPath (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  local.get $5
  i32.const 3
  i32.and
  i32.or
  if
   i32.const -30
   return
  end
  local.get $5
  i32.const -589825
  i32.and
  if
   i32.const -22
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $1
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $1
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $1
  i32.const -1
  i32.eq
  if
   i32.const -3
   return
  end
  local.get $1
  i32.load
  local.tee $6
  i32.eqz
  if
   local.get $1
   i32.const 1
   i32.store
  end
  local.get $6
  if
   i32.const -11
   return
  end
  i32.const 32
  i32.load
  local.tee $6
  i32.eqz
  if
   i32.const 32
   i32.const 1
   i32.store
  end
  local.get $6
  if
   local.get $1
   i32.const 0
   i32.store
   i32.const -11
   return
  end
  local.get $0
  local.get $1
  local.get $2
  if (result i32)
   local.get $2
  else
   local.get $1
   i32.load offset=312
  end
  local.get $3
  local.get $4
  i32.const 1
  call $build/teto-generated/teto/tetoVfsResolve
  local.tee $2
  i32.const 0
  i32.lt_s
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   local.get $2
   return
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
  local.tee $3
  i32.const 2
  i32.ne
  i32.const 0
  local.get $5
  i32.const 65536
  i32.and
  select
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   i32.const -20
   return
  end
  local.get $3
  i32.const 2
  i32.ne
  local.get $3
  i32.const 1
  i32.ne
  i32.and
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   i32.const -22
   return
  end
  local.get $0
  local.get $1
  local.get $2
  i32.const 5
  i32.const 4
  local.get $3
  i32.const 2
  i32.eq
  select
  call $build/teto-generated/teto/tetoVfsAccess
  i32.eqz
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   i32.const -13
   return
  end
  local.get $1
  i32.load offset=324
  local.set $4
  i32.const 3
  local.set $0
  loop $while-continue|0
   local.get $0
   local.get $4
   i32.lt_u
   if (result i32)
    local.get $1
    i32.load offset=320
    local.get $0
    i32.const 5
    i32.shl
    i32.add
    i32.load
   else
    i32.const 0
   end
   if
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $while-continue|0
   end
  end
  local.get $0
  local.get $4
  i32.eq
  if
   i32.const 32
   i32.const 0
   i32.store
   local.get $1
   i32.const 0
   i32.store
   i32.const -24
   return
  end
  local.get $1
  i32.load offset=320
  local.get $0
  i32.const 5
  i32.shl
  i32.add
  local.tee $4
  i32.const 0
  i32.const 32
  memory.fill
  local.get $4
  i64.const 3
  i64.const 2
  local.get $3
  i32.const 2
  i32.eq
  select
  i64.store32
  local.get $4
  i64.const 9
  i64.const 1
  local.get $5
  i32.const 524288
  i32.and
  select
  i64.store32 offset=4
  local.get $4
  local.get $2
  i64.extend_i32_u
  i64.store32 offset=8
  local.get $4
  i64.const 0
  i64.store offset=16
  local.get $4
  i64.const 0
  i64.store32 offset=24
  i32.const 32
  i32.const 0
  i32.store
  local.get $1
  i32.const 0
  i32.store
  local.get $0
 )
 (func $build/teto-generated/teto/tetoKernelValid (param $0 i32) (result i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoKernelInit (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  local.get $1
  i32.eqz
  local.get $1
  i32.const 1024
  i32.gt_u
  i32.or
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 69631
  i32.add
  i32.const -65536
  i32.and
  local.tee $5
  i32.const 256
  local.get $1
  i32.const 3
  i32.shl
  local.get $1
  i32.const 32
  i32.gt_u
  select
  local.tee $0
  i32.const 17
  i32.shl
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  local.set $6
  local.get $5
  local.get $6
  local.get $0
  i32.const 12
  i32.shl
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  local.tee $9
  local.get $0
  i32.const 12288
  i32.mul
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  local.tee $10
  i32.const 69631
  i32.add
  i32.const -65536
  i32.and
  local.tee $11
  i32.const 327679
  i32.add
  i32.const -65536
  i32.and
  local.tee $12
  i32.const 262143
  i32.add
  i32.const -65536
  i32.and
  local.tee $13
  local.get $0
  i32.const 11
  i32.shl
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  local.tee $14
  local.get $0
  i32.const 352
  i32.mul
  i32.add
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  local.tee $7
  i32.const 16842751
  i32.add
  i32.const -65536
  i32.and
  local.tee $3
  i32.gt_u
  memory.size
  i32.const 16
  i32.shl
  local.tee $8
  local.get $3
  i32.lt_u
  i32.or
  local.get $8
  local.get $3
  i32.sub
  i32.const 65536
  i32.lt_u
  i32.or
  if
   i32.const 1
   return
  end
  i32.const 0
  i32.const 0
  local.get $3
  memory.fill
  i32.const 0
  i64.const 1330922836
  i64.store32
  i32.const 4
  i64.const 10
  i64.store32
  i32.const 8
  local.get $2
  i32.const 0
  i32.ne
  i64.extend_i32_u
  i64.store32
  i32.const 12
  local.get $1
  i64.extend_i32_u
  local.tee $4
  i64.store32
  i32.const 44
  local.get $5
  i64.extend_i32_u
  i64.store32
  i32.const 48
  i64.const 8192
  i64.store32
  i32.const 116
  local.get $6
  i64.extend_i32_u
  i64.store32
  i32.const 120
  i64.const 128
  i64.store32
  i32.const 136
  local.get $9
  i64.extend_i32_u
  i64.store32
  i32.const 140
  i64.const 256
  i64.store32
  i32.const 3288
  local.get $10
  i64.extend_i32_u
  i64.store32
  i32.const 3232
  local.get $11
  i64.extend_i32_u
  i64.store32
  i32.const 3236
  i64.const 4096
  i64.store32
  i32.const 3240
  local.get $12
  i64.extend_i32_u
  i64.store32
  i32.const 3244
  i64.const 8192
  i64.store32
  i32.const 3248
  local.get $7
  i64.extend_i32_u
  local.tee $15
  i64.store32
  i32.const 3252
  local.get $7
  i32.const 16777216
  i32.add
  i64.extend_i32_u
  i64.store32
  i32.const 3256
  local.get $15
  i64.store32
  i32.const 3260
  i64.const 0
  i64.store32
  i32.const 3264
  i64.const 0
  i64.store32
  i32.const 3268
  i64.const 0
  i64.store32
  i32.const 3272
  i64.const 0
  i64.store32
  i32.const 3276
  i64.const 0
  i64.store32
  i32.const 3280
  i64.const 0
  i64.store
  i32.const 3292
  local.get $13
  i64.extend_i32_u
  i64.store32
  i32.const 3296
  i64.const 64
  i64.store32
  i32.const 52
  local.get $3
  i64.extend_i32_u
  i64.store32
  i32.const 56
  local.get $8
  i64.extend_i32_u
  local.tee $15
  i64.store32
  i32.const 124
  local.get $15
  i64.store32
  i32.const 132
  i64.const 0
  i64.store32
  i32.const 60
  local.get $14
  i64.extend_i32_u
  i64.store32
  i32.const 64
  local.get $0
  i64.extend_i32_u
  i64.store32
  i32.const 68
  i64.const 0
  i64.store32
  i32.const 72
  i64.const 2
  i64.store32
  i32.const 76
  i64.const 0
  i64.store32
  i32.const 112
  i64.const 128
  local.get $4
  local.get $1
  i32.const 128
  i32.gt_u
  select
  i64.store32
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoImageReserve (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.eqz
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  i32.or
  local.get $1
  i32.const 2147483632
  i32.gt_u
  i32.or
  if
   i32.const -1
   return
  end
  i32.const 128
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 128
   i32.const 1
   i32.store
  end
  local.get $0
  if
   i32.const -1
   return
  end
  i32.const 40
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 40
   i32.const 1
   i32.store
  end
  local.get $0
  if
   i32.const 128
   i32.const 0
   i32.store
   i32.const -1
   return
  end
  local.get $1
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 56
  i32.load
  local.tee $2
  i32.gt_u
  local.get $0
  local.get $1
  i32.lt_u
  i32.or
  i32.const 52
  i32.load
  local.get $2
  local.get $0
  i32.sub
  i32.gt_u
  i32.or
  if
   i32.const 40
   i32.const 0
   i32.store
   i32.const 128
   i32.const 0
   i32.store
   i32.const -1
   return
  end
  i32.const 124
  local.get $2
  local.get $0
  i32.sub
  local.tee $1
  i64.extend_i32_u
  i64.store32
  i32.const 132
  local.get $0
  i64.extend_i32_u
  i64.store32
  i32.const 40
  i32.const 0
  i32.store
  local.get $1
 )
 (func $build/teto-generated/teto/tetoImageRelease (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  i32.eqz
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  i32.eqz
  i32.or
  local.get $2
  i32.const 2147483632
  i32.gt_u
  i32.or
  if
   i32.const 2
   return
  end
  local.get $2
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.set $0
  i32.const 128
  i32.load
  i32.const 1
  i32.ne
  if (result i32)
   i32.const 1
  else
   local.get $1
   i32.const 124
   i32.load
   i32.ne
  end
  if (result i32)
   i32.const 1
  else
   local.get $0
   i32.const 132
   i32.load
   i32.ne
  end
  if
   i32.const 2
   return
  end
  i32.const 40
  i32.load
  local.tee $0
  i32.eqz
  if
   i32.const 40
   i32.const 1
   i32.store
  end
  local.get $0
  if
   i32.const 1
   return
  end
  i32.const 124
  i32.const 56
  i64.load32_u
  i64.store32
  i32.const 132
  i64.const 0
  i64.store32
  i32.const 40
  i32.const 0
  i32.store
  i32.const 128
  i32.const 0
  i32.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoHostOperation (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4736
   i32.add
   i32.load
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHostLength (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4752
   i32.add
   i32.load
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHostDescriptor (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4740
   i32.add
   i32.load
  else
   i32.const -1
  end
 )
 (func $build/teto-generated/teto/tetoHostAddress (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4744
   i32.add
   i64.load
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartVirtualTop (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4112
   i32.add
   i64.load
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartStatus (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4100
   i32.add
   i32.load
  else
   i32.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartStackPointer (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 5000
   i32.add
   i64.load
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartStackBottom (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4992
   i32.add
   i64.load
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartSetX (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  local.get $2
  i32.const 31
  i32.gt_u
  i32.or
  if
   i32.const 4
   return
  end
  local.get $2
  if
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4224
   i32.add
   local.get $2
   i32.const 3
   i32.shl
   i32.add
   local.get $3
   i64.store
  end
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoHartSetPc (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $2
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4112
   i32.add
   i64.load
   i64.ge_u
  else
   i32.const 1
  end
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4120
  i32.add
  local.get $2
  i64.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoHartSetF (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i64) (result i32)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  local.get $2
  i32.const 31
  i32.gt_u
  i32.or
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4480
  i32.add
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  local.get $3
  i64.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoHartPc (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4120
   i32.add
   i64.load
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartMetric (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  local.get $2
  i32.const 7
  i32.and
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  local.get $2
  i32.const 8
  i32.add
  i32.const 1024
  i32.gt_u
  i32.or
  i32.or
  if
   i64.const 0
   return
  end
  local.get $2
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  i32.add
  i64.load
 )
 (func $build/teto-generated/teto/tetoHartInit (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (result i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const 4
   return
  end
  local.get $2
  i64.const 1048576
  i64.lt_u
  local.get $2
  i64.const 281474976710655
  i64.gt_u
  i32.or
  local.get $2
  local.get $3
  i64.le_u
  i32.or
  if
   i32.const 1
   return
  end
  i32.const 48
  i32.load
  local.set $0
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.tee $1
  i32.const 0
  i32.const 1024
  memory.fill
  local.get $1
  local.get $2
  i64.store offset=16
  local.get $1
  i64.const 4294967295
  i64.store32 offset=104
  local.get $1
  local.get $0
  i64.extend_i32_u
  i64.store32 offset=108
  local.get $1
  i64.const 0
  i64.store32 offset=112
  local.get $1
  local.get $3
  i64.store offset=24
  local.get $1
  i64.const -1
  i64.store offset=32
  local.get $1
  i32.const -1
  i32.store offset=96
  local.get $1
  i64.const 4294967295
  i64.store32 offset=868
  local.get $1
  i32.const 1
  i32.store offset=4
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoHartImageFloor (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i64)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4968
   i32.add
   i64.load
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartGetX (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  local.get $2
  i32.const 31
  i32.gt_u
  i32.or
  if
   i64.const 0
   return
  end
  local.get $2
  if (result i64)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4224
   i32.add
   local.get $2
   i32.const 3
   i32.shl
   i32.add
   i64.load
  else
   i64.const 0
  end
 )
 (func $build/teto-generated/teto/tetoHartGetF (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  local.get $2
  i32.const 31
  i32.gt_u
  i32.or
  if
   i64.const 0
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4480
  i32.add
  local.get $2
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $build/teto-generated/teto/tetoHartExitCode (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4756
   i32.add
   i32.load
  else
   i32.const -1
  end
 )
 (func $build/teto-generated/teto/tetoHartBreak (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i64)
   i64.const 0
  else
   local.get $0
   i64.load offset=296
  end
 )
 (func $build/teto-generated/teto/tetoGuestPage (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   local.get $2
   local.get $3
   call $build/teto-generated/teto/__bq_248d3b0e_guestPage
  else
   i32.const -1
  end
 )
 (func $build/teto-generated/teto/tetoExitHart (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  i32.const 12
  i32.load
  local.get $1
  i32.le_u
  if
   i32.const 4
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.tee $0
  i32.load
  local.tee $3
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store
  end
  local.get $3
  if
   i32.const 5
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  local.tee $3
  i32.const 4304
  i32.add
  local.get $2
  i64.extend_i32_s
  i64.store
  local.get $3
  i32.const 4964
  i32.add
  i32.load
  local.tee $3
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $3
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $3
  i32.const -1
  i32.ne
  if (result i32)
   local.get $1
   if (result i32)
    local.get $1
    i32.const 10
    i32.shl
    i32.const 4964
    i32.add
    i32.load
    local.tee $1
    i32.const -1
    i32.ne
    if (result i32)
     local.get $1
     i32.const 4964
     i32.load
     i32.eq
    else
     i32.const 0
    end
   else
    i32.const 0
   end
  else
   i32.const 1
  end
  i32.eqz
  if
   local.get $3
   local.get $2
   i32.store offset=20
   local.get $3
   i32.const 3
   i32.store offset=4
  end
  local.get $0
  i32.const 0
  i32.store offset=8
  local.get $0
  i32.const 3
  i32.store offset=4
  local.get $0
  i32.const 0
  i32.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoDescriptorOffset (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=324
   i32.ge_u
  end
  if
   i64.const 0
   return
  end
  local.get $0
  i32.load offset=320
  local.get $2
  i32.const 5
  i32.shl
  i32.add
  i64.load offset=16
 )
 (func $build/teto-generated/teto/tetoDescriptorKind (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=324
   i32.ge_u
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=320
  local.get $2
  i32.const 5
  i32.shl
  i32.add
  i32.load
 )
 (func $build/teto-generated/teto/tetoDescriptorInode (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 12
  i32.load
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 10
   i32.shl
   i32.const 4964
   i32.add
   i32.load
   local.tee $0
   i32.const 64
   i32.load
   i32.lt_u
   if (result i32)
    i32.const 60
    i32.load
    local.get $0
    i32.const 352
    i32.mul
    i32.add
   else
    i32.const -1
   end
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=324
   i32.ge_u
  end
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=320
  local.get $2
  i32.const 5
  i32.shl
  i32.add
  i32.load offset=8
 )
 (func $build/teto-generated/teto/tetoCloseDescriptor (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const -22
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $0
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $0
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $0
  i32.const -1
  i32.eq
  if (result i32)
   i32.const 1
  else
   local.get $2
   local.get $0
   i32.load offset=324
   i32.ge_u
  end
  if
   i32.const -9
   return
  end
  local.get $0
  i32.load
  local.tee $1
  i32.eqz
  if
   local.get $0
   i32.const 1
   i32.store
  end
  local.get $1
  if
   i32.const -11
   return
  end
  local.get $0
  i32.load offset=320
  local.get $2
  i32.const 5
  i32.shl
  i32.add
  local.tee $1
  i32.load
  i32.eqz
  if
   local.get $0
   i32.const 0
   i32.store
   i32.const -9
   return
  end
  local.get $1
  i32.const 0
  i32.const 32
  memory.fill
  local.get $0
  i32.const 0
  i32.store
  i32.const 0
 )
 (func $build/teto-generated/teto/tetoAccessInode (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 0
  i32.load
  i32.const 1330922836
  i32.eq
  if (result i32)
   i32.const 4
   i32.load
   i32.const 10
   i32.eq
  else
   i32.const 0
  end
  if (result i32)
   local.get $1
   i32.const 12
   i32.load
   i32.lt_u
  else
   i32.const 0
  end
  i32.eqz
  if
   i32.const -22
   return
  end
  local.get $1
  i32.const 10
  i32.shl
  i32.const 4964
  i32.add
  i32.load
  local.tee $1
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $1
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.tee $1
  i32.const -1
  i32.eq
  if
   i32.const -3
   return
  end
  i32.const 32
  i32.load
  local.tee $4
  i32.eqz
  if
   i32.const 32
   i32.const 1
   i32.store
  end
  local.get $4
  if
   i32.const -11
   return
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $build/teto-generated/teto/tetoVfsAccess
  i32.const 0
  i32.ne
  i32.const 32
  i32.const 0
  i32.store
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_step (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 f64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  block $folding-inner4
   block $folding-inner3
    block $folding-inner2
     block $folding-inner1
      block $folding-inner0
       local.get $0
       local.get $0
       i32.const 10
       i32.shl
       local.tee $2
       i32.const 4096
       i32.add
       local.tee $4
       i64.load offset=24
       local.tee $10
       i32.const 2
       i32.const 4
       call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
       i32.eqz
       br_if $folding-inner0
       local.get $0
       local.get $10
       i32.const 2
       call $build/teto-generated/teto/__bq_248d3b0e_guestLoadU64
       i32.wrap_i64
       local.tee $5
       i32.const 3
       i32.and
       i32.const 3
       i32.ne
       if
        local.get $2
        i32.const 4120
        i32.add
        local.get $10
        i64.const 2
        i64.add
        i64.store
        local.get $0
        local.get $5
        local.get $10
        call $build/teto-generated/teto/__bq_248d3b0e_compressedStep
        return
       end
       local.get $0
       local.get $10
       i32.const 4
       i32.const 4
       call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
       i32.eqz
       br_if $folding-inner0
       local.get $4
       local.get $0
       local.get $10
       i32.const 4
       call $build/teto-generated/teto/__bq_248d3b0e_guestLoadU64
       i32.wrap_i64
       local.tee $11
       i64.extend_i32_u
       i64.store32 offset=44
       local.get $0
       i32.const 10
       i32.shl
       local.tee $2
       i32.const 4120
       i32.add
       local.get $10
       i64.const 4
       i64.add
       i64.store
       local.get $11
       i32.const 127
       i32.and
       local.set $12
       local.get $11
       i32.const 7
       i32.shr_u
       i32.const 31
       i32.and
       local.set $4
       local.get $11
       i32.const 12
       i32.shr_u
       i32.const 7
       i32.and
       local.set $8
       local.get $11
       i32.const 20
       i32.shr_u
       i32.const 31
       i32.and
       local.set $13
       local.get $11
       i32.const 15
       i32.shr_u
       i32.const 31
       i32.and
       local.tee $5
       if (result i64)
        local.get $2
        i32.const 4224
        i32.add
        local.get $5
        i32.const 3
        i32.shl
        i32.add
        i64.load
       else
        i64.const 0
       end
       local.set $6
       local.get $13
       if (result i64)
        local.get $0
        i32.const 10
        i32.shl
        i32.const 4224
        i32.add
        local.get $13
        i32.const 3
        i32.shl
        i32.add
        i64.load
       else
        i64.const 0
       end
       local.set $7
       local.get $12
       i32.const 3
       i32.eq
       if
        local.get $0
        local.get $4
        local.get $8
        local.get $6
        local.get $11
        i32.const 20
        i32.shr_u
        local.tee $2
        i32.const 4096
        i32.sub
        local.get $2
        local.get $2
        i32.const 2048
        i32.and
        select
        i64.extend_i32_s
        i64.add
        call $build/teto-generated/teto/__bq_248d3b0e_loadInteger
        i32.eqz
        br_if $folding-inner1
       else
        local.get $11
        i32.const 25
        i32.shr_u
        local.set $2
        local.get $12
        i32.const 7
        i32.eq
        if
         local.get $0
         local.get $4
         local.get $8
         local.get $6
         local.get $11
         i32.const 20
         i32.shr_u
         local.tee $2
         i32.const 4096
         i32.sub
         local.get $2
         local.get $2
         i32.const 2048
         i32.and
         select
         i64.extend_i32_s
         i64.add
         call $build/teto-generated/teto/__bq_248d3b0e_loadFloating
         i32.eqz
         br_if $folding-inner1
        else
         local.get $12
         i32.const 15
         i32.eq
         if
          i32.const 0
          return
         else
          local.get $12
          i32.const 19
          i32.eq
          if
           block $__inlined_func$build/teto-generated/teto/rv64ImmediateOpValid$235 (result i32)
            i32.const 0
            local.get $8
            i32.const 7
            i32.gt_u
            br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateOpValid$235
            drop
            local.get $11
            i32.const 26
            i32.shr_u
            local.tee $2
            i32.eqz
            local.tee $5
            local.get $8
            i32.const 1
            i32.eq
            br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateOpValid$235
            drop
            local.get $5
            local.get $2
            i32.const 16
            i32.eq
            i32.or
            local.get $8
            i32.const 5
            i32.eq
            br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateOpValid$235
            drop
            i32.const 1
           end
           if (result i32)
            local.get $4
            if
             local.get $0
             i32.const 10
             i32.shl
             i32.const 4224
             i32.add
             local.get $4
             i32.const 3
             i32.shl
             i32.add
             local.get $8
             local.get $11
             local.get $6
             call $build/teto-generated/teto/rv64ImmediateOpValue
             i64.store
            end
            i32.const 1
           else
            i32.const 0
           end
           i32.eqz
           br_if $folding-inner2
          else
           local.get $12
           i32.const 23
           i32.eq
           if
            local.get $4
            if
             local.get $0
             i32.const 10
             i32.shl
             i32.const 4224
             i32.add
             local.get $4
             i32.const 3
             i32.shl
             i32.add
             local.get $10
             local.get $11
             i32.const -4096
             i32.and
             i64.extend_i32_s
             i64.add
             i64.store
            end
           else
            local.get $12
            i32.const 27
            i32.eq
            if
             local.get $11
             i32.const 25
             i32.shr_u
             local.set $2
             block $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValid$237 (result i32)
              i32.const 1
              local.get $8
              i32.eqz
              br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValid$237
              drop
              local.get $2
              i32.eqz
              local.tee $5
              local.get $8
              i32.const 1
              i32.eq
              br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValid$237
              drop
              local.get $5
              local.get $2
              i32.const 32
              i32.eq
              i32.or
              local.get $8
              i32.const 5
              i32.eq
              br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValid$237
              drop
              i32.const 0
             end
             if (result i32)
              block $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValue$85 (result i64)
               local.get $11
               i32.const 20
               i32.shr_u
               local.tee $2
               i32.const 31
               i32.and
               i64.extend_i32_u
               local.set $1
               local.get $6
               local.get $2
               i32.const 4096
               i32.sub
               local.get $2
               local.get $2
               i32.const 2048
               i32.and
               select
               i64.extend_i32_s
               i64.add
               i64.extend32_s
               local.get $8
               i32.eqz
               br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValue$85
               drop
               local.get $6
               i64.extend32_s
               local.tee $7
               local.get $1
               i64.shl
               i64.extend32_s
               local.get $8
               i32.const 1
               i32.eq
               br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValue$85
               drop
               local.get $7
               local.get $1
               i64.shr_s
               local.get $6
               i32.wrap_i64
               i64.extend_i32_u
               local.get $1
               i64.shr_u
               local.get $11
               i32.const 25
               i32.shr_u
               select
               i64.extend32_s
               local.get $8
               i32.const 5
               i32.eq
               br_if $__inlined_func$build/teto-generated/teto/rv64ImmediateWordValue$85
               drop
               i64.const 0
              end
              local.set $1
              local.get $4
              if
               local.get $0
               i32.const 10
               i32.shl
               i32.const 4224
               i32.add
               local.get $4
               i32.const 3
               i32.shl
               i32.add
               local.get $1
               i64.store
              end
              i32.const 1
             else
              i32.const 0
             end
             i32.eqz
             br_if $folding-inner2
            else
             local.get $12
             i32.const 35
             i32.eq
             if
              local.get $0
              local.get $8
              local.get $6
              local.get $11
              i32.const 7
              i32.shr_u
              i32.const 31
              i32.and
              local.get $11
              i32.const 25
              i32.shr_u
              i32.const 5
              i32.shl
              i32.or
              local.tee $2
              i32.const 4096
              i32.sub
              local.get $2
              local.get $2
              i32.const 2048
              i32.and
              select
              i64.extend_i32_s
              i64.add
              local.get $7
              call $build/teto-generated/teto/__bq_248d3b0e_storeInteger
              i32.eqz
              br_if $folding-inner1
             else
              local.get $12
              i32.const 39
              i32.eq
              if
               local.get $0
               local.get $13
               local.get $8
               local.get $6
               local.get $11
               i32.const 7
               i32.shr_u
               i32.const 31
               i32.and
               local.get $11
               i32.const 25
               i32.shr_u
               i32.const 5
               i32.shl
               i32.or
               local.tee $2
               i32.const 4096
               i32.sub
               local.get $2
               local.get $2
               i32.const 2048
               i32.and
               select
               i64.extend_i32_s
               i64.add
               call $build/teto-generated/teto/__bq_248d3b0e_storeFloating
               i32.eqz
               br_if $folding-inner1
              else
               local.get $12
               i32.const 47
               i32.eq
               if
                local.get $0
                local.get $4
                local.get $8
                local.get $11
                local.get $6
                local.get $7
                call $build/teto-generated/teto/__bq_248d3b0e_atomicInstruction
                local.tee $2
                i32.const 6
                i32.eq
                if
                 local.get $0
                 i32.const 10
                 i32.shl
                 i32.const 4120
                 i32.add
                 local.get $10
                 i64.store
                 local.get $2
                 return
                end
                local.get $2
                i32.const 4
                i32.eq
                br_if $folding-inner2
               else
                local.get $12
                i32.const 51
                i32.eq
                if
                 block $__inlined_func$build/teto-generated/teto/rv64RegisterValid$245 (result i32)
                  i32.const 0
                  local.get $8
                  i32.const 7
                  i32.gt_u
                  br_if $__inlined_func$build/teto-generated/teto/rv64RegisterValid$245
                  drop
                  i32.const 1
                  local.get $2
                  i32.eqz
                  local.get $2
                  i32.const 1
                  i32.eq
                  i32.or
                  br_if $__inlined_func$build/teto-generated/teto/rv64RegisterValid$245
                  drop
                  local.get $8
                  i32.eqz
                  local.get $8
                  i32.const 5
                  i32.eq
                  i32.or
                  local.get $2
                  i32.const 32
                  i32.eq
                  i32.and
                 end
                 if (result i32)
                  local.get $8
                  local.get $2
                  local.get $6
                  local.get $7
                  call $build/teto-generated/teto/rv64RegisterValue
                  local.set $1
                  local.get $4
                  if
                   local.get $0
                   i32.const 10
                   i32.shl
                   i32.const 4224
                   i32.add
                   local.get $4
                   i32.const 3
                   i32.shl
                   i32.add
                   local.get $1
                   i64.store
                  end
                  i32.const 1
                 else
                  i32.const 0
                 end
                 i32.eqz
                 br_if $folding-inner2
                else
                 local.get $12
                 i32.const 55
                 i32.eq
                 if
                  local.get $4
                  if
                   local.get $0
                   i32.const 10
                   i32.shl
                   i32.const 4224
                   i32.add
                   local.get $4
                   i32.const 3
                   i32.shl
                   i32.add
                   local.get $11
                   i32.const -4096
                   i32.and
                   i64.extend_i32_s
                   i64.store
                  end
                 else
                  local.get $12
                  i32.const 59
                  i32.eq
                  if
                   block $__inlined_func$build/teto-generated/teto/rv64RegisterWordValid$86 (result i32)
                    local.get $8
                    i32.const 5
                    i32.eq
                    local.tee $5
                    local.get $8
                    i32.eqz
                    local.tee $12
                    local.get $8
                    i32.const 4
                    i32.eq
                    i32.or
                    i32.or
                    local.get $8
                    i32.const 6
                    i32.eq
                    i32.or
                    local.get $8
                    i32.const 7
                    i32.eq
                    i32.or
                    local.get $2
                    i32.const 1
                    i32.eq
                    br_if $__inlined_func$build/teto-generated/teto/rv64RegisterWordValid$86
                    drop
                    block $folding-inner00
                     local.get $12
                     br_if $folding-inner00
                     local.get $2
                     i32.eqz
                     local.get $8
                     i32.const 1
                     i32.eq
                     br_if $__inlined_func$build/teto-generated/teto/rv64RegisterWordValid$86
                     drop
                     local.get $5
                     br_if $folding-inner00
                     i32.const 0
                     br $__inlined_func$build/teto-generated/teto/rv64RegisterWordValid$86
                    end
                    local.get $2
                    i32.eqz
                    local.get $2
                    i32.const 32
                    i32.eq
                    i32.or
                   end
                   if (result i32)
                    local.get $8
                    local.get $2
                    local.get $6
                    local.get $7
                    call $build/teto-generated/teto/rv64RegisterWordValue
                    local.set $1
                    local.get $4
                    if
                     local.get $0
                     i32.const 10
                     i32.shl
                     i32.const 4224
                     i32.add
                     local.get $4
                     i32.const 3
                     i32.shl
                     i32.add
                     local.get $1
                     i64.store
                    end
                    i32.const 1
                   else
                    i32.const 0
                   end
                   i32.eqz
                   br_if $folding-inner2
                  else
                   local.get $12
                   i32.const 71
                   i32.eq
                   local.get $12
                   i32.const 67
                   i32.eq
                   i32.or
                   local.get $12
                   i32.const 75
                   i32.eq
                   i32.or
                   local.get $12
                   i32.const 79
                   i32.eq
                   i32.or
                   if
                    local.get $11
                    i32.const 27
                    i32.shr_u
                    local.set $14
                    block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_floatingMultiplyAdd$400 (result i32)
                     i32.const 0
                     local.get $11
                     i32.const 25
                     i32.shr_u
                     i32.const 3
                     i32.and
                     local.tee $2
                     i32.eqz
                     local.tee $8
                     i32.eqz
                     local.get $2
                     i32.const 1
                     i32.ne
                     i32.and
                     br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_floatingMultiplyAdd$400
                     drop
                     local.get $11
                     i32.const 12
                     i32.shr_u
                     i32.const 7
                     i32.and
                     local.tee $2
                     i32.const 7
                     i32.eq
                     if
                      local.get $0
                      i32.const 10
                      i32.shl
                      i32.const 4136
                      i32.add
                      i32.load
                      i32.const 5
                      i32.shr_u
                      i32.const 7
                      i32.and
                      local.set $2
                     end
                     i32.const 0
                     i32.const -1
                     local.get $2
                     local.get $2
                     i32.const 4
                     i32.gt_u
                     select
                     i32.const 0
                     i32.lt_s
                     br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_floatingMultiplyAdd$400
                     drop
                     i64.const 2143289344
                     local.get $0
                     i32.const 10
                     i32.shl
                     local.tee $2
                     i32.const 4480
                     i32.add
                     local.get $5
                     i32.const 3
                     i32.shl
                     i32.add
                     i64.load
                     local.tee $1
                     i64.const 4294967295
                     i64.and
                     local.get $1
                     i64.const 32
                     i64.shr_u
                     i64.const 4294967295
                     i64.ne
                     select
                     local.get $1
                     local.get $8
                     select
                     local.set $1
                     local.get $2
                     i32.const 5016
                     i32.add
                     local.set $2
                     local.get $8
                     if (result f64)
                      local.get $2
                      local.get $1
                      i64.store32
                      local.get $2
                      f32.load
                      f64.promote_f32
                     else
                      local.get $2
                      local.get $1
                      i64.store
                      local.get $2
                      f64.load
                     end
                     local.set $3
                     i64.const 2143289344
                     local.get $0
                     i32.const 10
                     i32.shl
                     local.tee $2
                     i32.const 4480
                     i32.add
                     local.get $13
                     i32.const 3
                     i32.shl
                     i32.add
                     i64.load
                     local.tee $1
                     i64.const 4294967295
                     i64.and
                     local.get $1
                     i64.const 32
                     i64.shr_u
                     i64.const 4294967295
                     i64.ne
                     select
                     local.get $1
                     local.get $8
                     select
                     local.set $1
                     local.get $2
                     i32.const 5016
                     i32.add
                     local.set $2
                     local.get $8
                     if (result f64)
                      local.get $2
                      local.get $1
                      i64.store32
                      local.get $2
                      f32.load
                      f64.promote_f32
                     else
                      local.get $2
                      local.get $1
                      i64.store
                      local.get $2
                      f64.load
                     end
                     local.set $15
                     i64.const 2143289344
                     local.get $0
                     i32.const 10
                     i32.shl
                     local.tee $2
                     i32.const 4480
                     i32.add
                     local.get $14
                     i32.const 3
                     i32.shl
                     i32.add
                     i64.load
                     local.tee $1
                     i64.const 4294967295
                     i64.and
                     local.get $1
                     i64.const 32
                     i64.shr_u
                     i64.const 4294967295
                     i64.ne
                     select
                     local.get $1
                     local.get $8
                     select
                     local.set $1
                     local.get $2
                     i32.const 5016
                     i32.add
                     local.set $2
                     local.get $8
                     if (result f64)
                      local.get $2
                      local.get $1
                      i64.store32
                      local.get $2
                      f32.load
                      f64.promote_f32
                     else
                      local.get $2
                      local.get $1
                      i64.store
                      local.get $2
                      f64.load
                     end
                     local.set $9
                     local.get $12
                     i32.const 67
                     i32.eq
                     if (result f64)
                      local.get $3
                      local.get $15
                      f64.mul
                      local.get $9
                      f64.add
                     else
                      local.get $12
                      i32.const 71
                      i32.eq
                      if (result f64)
                       local.get $3
                       local.get $15
                       f64.mul
                       local.get $9
                       f64.sub
                      else
                       local.get $3
                       f64.neg
                       local.get $15
                       f64.mul
                       local.tee $3
                       local.get $9
                       f64.add
                       local.get $3
                       local.get $9
                       f64.sub
                       local.get $12
                       i32.const 75
                       i32.eq
                       select
                      end
                     end
                     local.set $3
                     local.get $0
                     i32.const 10
                     i32.shl
                     local.tee $2
                     i32.const 5016
                     i32.add
                     local.set $5
                     local.get $2
                     i32.const 4480
                     i32.add
                     local.get $4
                     i32.const 3
                     i32.shl
                     i32.add
                     local.get $8
                     if (result i64)
                      local.get $5
                      local.get $3
                      f32.demote_f64
                      f64.promote_f32
                      f32.demote_f64
                      f32.store
                      local.get $5
                      i64.load32_u
                     else
                      local.get $5
                      local.get $3
                      f64.store
                      local.get $5
                      i64.load
                     end
                     local.tee $1
                     i32.wrap_i64
                     i64.extend_i32_u
                     i64.const -4294967296
                     i64.or
                     local.get $1
                     local.get $8
                     select
                     i64.store
                     i32.const 1
                    end
                    i32.eqz
                    br_if $folding-inner2
                   else
                    local.get $12
                    i32.const 83
                    i32.eq
                    if
                     local.get $0
                     local.get $4
                     local.get $8
                     local.get $2
                     local.get $5
                     local.get $13
                     call $build/teto-generated/teto/__bq_248d3b0e_floatingOperation
                     i32.eqz
                     br_if $folding-inner2
                    else
                     local.get $12
                     i32.const 99
                     i32.eq
                     if
                      block $__inlined_func$build/teto-generated/teto/rv64Branch$91 (result i32)
                       local.get $6
                       local.get $7
                       i64.eq
                       local.get $8
                       i32.eqz
                       br_if $__inlined_func$build/teto-generated/teto/rv64Branch$91
                       drop
                       local.get $6
                       local.get $7
                       i64.ne
                       local.get $8
                       i32.const 1
                       i32.eq
                       br_if $__inlined_func$build/teto-generated/teto/rv64Branch$91
                       drop
                       local.get $6
                       local.get $7
                       i64.lt_s
                       local.tee $2
                       local.get $8
                       i32.const 4
                       i32.eq
                       br_if $__inlined_func$build/teto-generated/teto/rv64Branch$91
                       drop
                       local.get $6
                       local.get $7
                       i64.ge_s
                       local.get $8
                       i32.const 5
                       i32.eq
                       br_if $__inlined_func$build/teto-generated/teto/rv64Branch$91
                       drop
                       local.get $8
                       i32.const 6
                       i32.eq
                       local.tee $4
                       local.get $8
                       i32.const 7
                       i32.eq
                       i32.or
                       if
                        local.get $2
                        local.get $6
                        i64.const 0
                        i64.lt_s
                        local.tee $2
                        i32.eqz
                        local.get $2
                        local.get $7
                        i64.const 0
                        i64.lt_s
                        i32.eq
                        select
                        local.tee $2
                        local.get $2
                        i32.eqz
                        local.get $4
                        select
                        i32.const 0
                        i32.ne
                        br $__inlined_func$build/teto-generated/teto/rv64Branch$91
                       end
                       i32.const -1
                      end
                      local.tee $2
                      i32.const 0
                      i32.lt_s
                      br_if $folding-inner2
                      local.get $2
                      if
                       local.get $0
                       i32.const 10
                       i32.shl
                       i32.const 4120
                       i32.add
                       local.get $10
                       local.get $11
                       i32.const 31
                       i32.shr_u
                       i32.const 12
                       i32.shl
                       local.get $11
                       i32.const 7
                       i32.shr_u
                       i32.const 1
                       i32.and
                       i32.const 11
                       i32.shl
                       i32.or
                       local.get $11
                       i32.const 25
                       i32.shr_u
                       i32.const 63
                       i32.and
                       i32.const 5
                       i32.shl
                       i32.or
                       local.get $11
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
                       i64.extend_i32_s
                       i64.add
                       i64.store
                      end
                     else
                      local.get $12
                      i32.const 103
                      i32.eq
                      if
                       local.get $8
                       br_if $folding-inner2
                       local.get $6
                       local.get $11
                       i32.const 20
                       i32.shr_u
                       local.tee $2
                       i32.const 4096
                       i32.sub
                       local.get $2
                       local.get $2
                       i32.const 2048
                       i32.and
                       select
                       i64.extend_i32_s
                       i64.add
                       i64.const -2
                       i64.and
                       local.set $1
                       local.get $4
                       if
                        local.get $0
                        i32.const 10
                        i32.shl
                        i32.const 4224
                        i32.add
                        local.get $4
                        i32.const 3
                        i32.shl
                        i32.add
                        local.get $10
                        i64.const 4
                        i64.add
                        i64.store
                       end
                       local.get $0
                       i32.const 10
                       i32.shl
                       i32.const 4120
                       i32.add
                       local.get $1
                       i64.store
                      else
                       local.get $12
                       i32.const 111
                       i32.eq
                       if
                        local.get $4
                        if
                         local.get $0
                         i32.const 10
                         i32.shl
                         i32.const 4224
                         i32.add
                         local.get $4
                         i32.const 3
                         i32.shl
                         i32.add
                         local.get $10
                         i64.const 4
                         i64.add
                         i64.store
                        end
                        local.get $0
                        i32.const 10
                        i32.shl
                        i32.const 4120
                        i32.add
                        local.get $10
                        local.get $11
                        i32.const 31
                        i32.shr_u
                        i32.const 20
                        i32.shl
                        local.get $11
                        i32.const 12
                        i32.shr_u
                        i32.const 255
                        i32.and
                        i32.const 12
                        i32.shl
                        i32.or
                        local.get $11
                        i32.const 20
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.const 11
                        i32.shl
                        i32.or
                        local.get $11
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
                        i64.extend_i32_s
                        i64.add
                        i64.store
                       else
                        local.get $12
                        i32.const 115
                        i32.eq
                        if
                         local.get $11
                         i32.const 115
                         i32.eq
                         if
                          local.get $0
                          call $build/teto-generated/teto/__bq_248d3b0e_kernelSyscall
                          return
                         end
                         local.get $11
                         i32.const 1048691
                         i32.eq
                         if
                          local.get $0
                          i32.const 10
                          i32.shl
                          i32.const 4096
                          i32.add
                          local.tee $0
                          i32.const 3
                          i32.store offset=12
                          br $folding-inner3
                         end
                         local.get $0
                         local.get $4
                         local.get $8
                         local.get $11
                         local.get $6
                         local.get $5
                         local.get $1
                         call $build/teto-generated/teto/__bq_248d3b0e_csr
                         i32.eqz
                         br_if $folding-inner2
                        else
                         br $folding-inner2
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
             end
            end
           end
          end
         end
        end
       end
       i32.const 0
       return
      end
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4096
      i32.add
      local.tee $0
      i32.const 1
      i32.store offset=12
      local.get $0
      i64.const 0
      i64.store32 offset=44
      br $folding-inner4
     end
     local.get $0
     i32.const 10
     i32.shl
     i32.const 4096
     i32.add
     local.tee $0
     i32.const 1
     i32.store offset=12
     br $folding-inner3
    end
    local.get $0
    i32.const 10
    i32.shl
    i32.const 4096
    i32.add
    local.tee $0
    i32.const 2
    i32.store offset=12
   end
   local.get $0
   local.get $11
   i64.extend_i32_u
   i64.store32 offset=44
  end
  local.get $0
  i32.const 4
  i32.store offset=4
  i32.const 4
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_setResUid (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i32.const 10
  i32.shl
  local.tee $0
  i32.const 4304
  i32.add
  i64.load
  local.set $2
  local.get $0
  i32.const 4312
  i32.add
  i64.load
  local.set $3
  local.get $0
  i32.const 4320
  i32.add
  i64.load
  local.set $4
  local.get $2
  i64.const -1
  i64.eq
  local.get $2
  i64.const 4294967295
  i64.eq
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $2
   i64.const 4294967295
   i64.lt_u
   local.get $2
   i64.const 0
   i64.ge_s
   i32.and
   if (result i32)
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if (result i32)
     i32.const 1
    else
     local.get $2
     local.get $1
     i64.load32_s offset=24
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $2
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $2
     local.get $1
     i64.load32_s offset=32
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
   else
    i32.const 0
   end
  end
  if (result i32)
   local.get $3
   i64.const -1
   i64.eq
   local.get $3
   i64.const 4294967295
   i64.eq
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $3
    i64.const 4294967295
    i64.lt_u
    local.get $3
    i64.const 0
    i64.ge_s
    i32.and
    if (result i32)
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
     i64.eqz
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $1
      i64.load32_s offset=24
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $1
      i64.load32_s offset=28
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $1
      i64.load32_s offset=32
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
    else
     i32.const 0
    end
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i64.const -1
   i64.eq
   local.get $4
   i64.const 4294967295
   i64.eq
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $4
    i64.const 4294967295
    i64.lt_u
    local.get $4
    i64.const 0
    i64.ge_s
    i32.and
    if (result i32)
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
     i64.eqz
     if (result i32)
      i32.const 1
     else
      local.get $4
      local.get $1
      i64.load32_s offset=24
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $4
      local.get $1
      i64.load32_s offset=28
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $4
      local.get $1
      i64.load32_s offset=32
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
    else
     i32.const 0
    end
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i64.const -1
   return
  end
  local.get $2
  i64.const -1
  i64.eq
  local.get $2
  i64.const 4294967295
  i64.eq
  i32.or
  if
   local.get $1
   i64.load32_s offset=24
   i32.wrap_i64
   i64.extend_i32_u
   local.set $2
  end
  local.get $3
  i64.const -1
  i64.eq
  local.get $3
  i64.const 4294967295
  i64.eq
  i32.or
  if
   local.get $1
   i64.load32_s offset=28
   i32.wrap_i64
   i64.extend_i32_u
   local.set $3
  end
  local.get $4
  i64.const -1
  i64.eq
  local.get $4
  i64.const 4294967295
  i64.eq
  i32.or
  if
   local.get $1
   i64.load32_s offset=32
   i32.wrap_i64
   i64.extend_i32_u
   local.set $4
  end
  local.get $1
  local.get $2
  i64.store32 offset=24
  local.get $1
  local.get $3
  i64.store32 offset=28
  local.get $1
  local.get $4
  i64.store32 offset=32
  local.get $1
  local.get $3
  i64.store32 offset=36
  i64.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_setResGid (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i32.const 10
  i32.shl
  local.tee $0
  i32.const 4304
  i32.add
  i64.load
  local.set $2
  local.get $0
  i32.const 4312
  i32.add
  i64.load
  local.set $3
  local.get $0
  i32.const 4320
  i32.add
  i64.load
  local.set $4
  local.get $2
  i64.const -1
  i64.eq
  local.get $2
  i64.const 4294967295
  i64.eq
  i32.or
  if (result i32)
   i32.const 1
  else
   local.get $2
   i64.const 4294967295
   i64.lt_u
   local.get $2
   i64.const 0
   i64.ge_s
   i32.and
   if (result i32)
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if (result i32)
     i32.const 1
    else
     local.get $2
     local.get $1
     i64.load32_s offset=40
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $2
     local.get $1
     i64.load32_s offset=44
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $2
     local.get $1
     i64.load32_s offset=48
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
   else
    i32.const 0
   end
  end
  if (result i32)
   local.get $3
   i64.const -1
   i64.eq
   local.get $3
   i64.const 4294967295
   i64.eq
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $3
    i64.const 4294967295
    i64.lt_u
    local.get $3
    i64.const 0
    i64.ge_s
    i32.and
    if (result i32)
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
     i64.eqz
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $1
      i64.load32_s offset=40
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $1
      i64.load32_s offset=44
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $3
      local.get $1
      i64.load32_s offset=48
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
    else
     i32.const 0
    end
   end
  else
   i32.const 0
  end
  if (result i32)
   local.get $4
   i64.const -1
   i64.eq
   local.get $4
   i64.const 4294967295
   i64.eq
   i32.or
   if (result i32)
    i32.const 1
   else
    local.get $4
    i64.const 4294967295
    i64.lt_u
    local.get $4
    i64.const 0
    i64.ge_s
    i32.and
    if (result i32)
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
     i64.eqz
     if (result i32)
      i32.const 1
     else
      local.get $4
      local.get $1
      i64.load32_s offset=40
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $4
      local.get $1
      i64.load32_s offset=44
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
     if (result i32)
      i32.const 1
     else
      local.get $4
      local.get $1
      i64.load32_s offset=48
      i32.wrap_i64
      i64.extend_i32_u
      i64.eq
     end
    else
     i32.const 0
    end
   end
  else
   i32.const 0
  end
  i32.eqz
  if
   i64.const -1
   return
  end
  local.get $2
  i64.const -1
  i64.eq
  local.get $2
  i64.const 4294967295
  i64.eq
  i32.or
  if
   local.get $1
   i64.load32_s offset=40
   i32.wrap_i64
   i64.extend_i32_u
   local.set $2
  end
  local.get $3
  i64.const -1
  i64.eq
  local.get $3
  i64.const 4294967295
  i64.eq
  i32.or
  if
   local.get $1
   i64.load32_s offset=44
   i32.wrap_i64
   i64.extend_i32_u
   local.set $3
  end
  local.get $4
  i64.const -1
  i64.eq
  local.get $4
  i64.const 4294967295
  i64.eq
  i32.or
  if
   local.get $1
   i64.load32_s offset=48
   i32.wrap_i64
   i64.extend_i32_u
   local.set $4
  end
  local.get $1
  local.get $2
  i64.store32 offset=40
  local.get $1
  local.get $3
  i64.store32 offset=44
  local.get $1
  local.get $4
  i64.store32 offset=48
  local.get $1
  local.get $3
  i64.store32 offset=52
  i64.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_remapAnonymous (param $0 i32) (param $1 i32) (param $2 i64) (param $3 i64) (param $4 i64) (param $5 i64) (param $6 i64) (result i64)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  (local $16 i64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  local.get $4
  i64.eqz
  local.get $3
  i64.eqz
  local.get $2
  i64.const 4095
  i64.and
  i64.const 0
  i64.ne
  i32.or
  i32.or
  local.get $1
  i64.load offset=208
  local.tee $11
  local.get $3
  i64.lt_u
  i32.or
  local.get $4
  local.get $11
  i64.gt_u
  i32.or
  local.get $5
  i64.const 1
  i64.gt_u
  i32.or
  local.get $6
  i64.const 0
  i64.ne
  i32.or
  if
   i64.const -22
   return
  end
  local.get $4
  i64.const 4095
  i64.add
  i64.const -4096
  i64.and
  local.tee $4
  i64.eqz
  local.get $3
  i64.const 4095
  i64.add
  i64.const -4096
  i64.and
  local.tee $6
  i64.eqz
  i32.or
  local.get $2
  local.get $11
  i64.gt_u
  i32.or
  local.get $6
  local.get $11
  local.get $2
  i64.sub
  i64.gt_u
  i32.or
  if
   i64.const -22
   return
  end
  local.get $1
  i32.load offset=276
  local.tee $9
  local.set $8
  loop $while-continue|0
   local.get $7
   local.get $9
   i32.lt_u
   if
    local.get $8
    local.get $7
    local.get $2
    local.get $1
    i32.load offset=272
    local.get $7
    i32.const 48
    i32.mul
    i32.add
    local.tee $8
    i64.load
    i64.eq
    if (result i32)
     local.get $8
     i64.load offset=8
     local.get $2
     local.get $6
     i64.add
     i64.eq
    else
     i32.const 0
    end
    if (result i32)
     local.get $8
     i32.load offset=40
    else
     i32.const 1
    end
    select
    local.set $8
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $while-continue|0
   end
  end
  local.get $8
  local.get $9
  i32.eq
  if
   i64.const -4096
   return
  end
  local.get $1
  i32.load offset=272
  local.get $8
  i32.const 48
  i32.mul
  i32.add
  local.set $12
  block $folding-inner0
   local.get $4
   local.get $6
   i64.eq
   br_if $folding-inner0
   local.get $4
   local.get $6
   i64.lt_u
   if
    local.get $1
    local.get $2
    local.get $4
    i64.add
    local.tee $3
    local.get $2
    local.get $6
    i64.add
    call $build/teto-generated/teto/__bq_248d3b0e_clearMappedRange
    local.get $12
    local.get $3
    i64.store offset=8
    br $folding-inner0
   end
   i32.const 1
   local.set $9
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflictExcept$654
    local.get $2
    local.get $1
    i64.load offset=296
    i64.const 1052671
    i64.add
    i64.const -4096
    i64.and
    i64.lt_u
    local.get $2
    local.get $4
    i64.add
    local.tee $3
    local.get $2
    i64.le_u
    i32.or
    local.get $1
    i64.load offset=208
    local.get $3
    i64.lt_u
    i32.or
    local.get $1
    i64.load offset=256
    local.tee $11
    i64.const 1048576
    i64.le_u
    i32.or
    local.get $3
    local.get $11
    i64.const -1048576
    i64.add
    i64.ge_u
    i32.or
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflictExcept$654
    local.get $1
    i32.load offset=276
    local.set $13
    i32.const 0
    local.set $7
    loop $while-continue|01
     local.get $7
     local.get $13
     i32.lt_u
     if
      local.get $7
      local.get $8
      i32.ne
      if
       local.get $2
       local.get $1
       i32.load offset=272
       local.get $7
       i32.const 48
       i32.mul
       i32.add
       local.tee $14
       i64.load offset=8
       i64.lt_u
       if (result i32)
        local.get $3
        local.get $14
        i64.load
        i64.gt_u
       else
        i32.const 0
       end
       br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingConflictExcept$654
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $while-continue|01
     end
    end
    i32.const 0
    local.set $9
   end
   local.get $9
   i32.eqz
   if
    local.get $1
    local.get $2
    local.get $6
    i64.add
    local.get $3
    call $build/teto-generated/teto/__bq_248d3b0e_clearMappedRange
    local.get $12
    local.get $3
    i64.store offset=8
    local.get $3
    local.get $1
    i64.load offset=304
    i64.gt_u
    if
     local.get $1
     local.get $3
     i64.store offset=304
    end
    br $folding-inner0
   end
   local.get $5
   i32.wrap_i64
   i32.const 1
   i32.and
   i32.eqz
   if
    i64.const -12
    return
   end
   local.get $1
   i64.const 0
   local.get $4
   local.get $12
   i64.load32_u offset=16
   local.get $12
   i32.load offset=20
   i32.const -1048593
   i32.and
   i64.extend_i32_u
   call $build/teto-generated/teto/__bq_248d3b0e_anonymousMap
   local.tee $5
   i64.const 0
   i64.lt_s
   if
    local.get $5
    return
   end
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_copyAllocatedRange$49 (result i32)
    local.get $1
    i32.load offset=192
    local.set $12
    local.get $1
    i32.load offset=196
    local.set $13
    local.get $2
    local.get $6
    i64.add
    local.set $11
    loop $while-continue|00
     local.get $10
     local.get $13
     i32.lt_u
     if
      local.get $12
      local.get $10
      i32.const 4
      i32.shl
      i32.add
      local.tee $7
      i64.load
      local.tee $3
      i64.const 0
      i64.ne
      if
       local.get $3
       i64.const 1
       i64.sub
       i64.const 16
       i64.shl
       local.tee $15
       i64.const 65536
       i64.add
       local.tee $3
       local.get $2
       i64.gt_u
       local.get $11
       local.get $15
       i64.gt_u
       i32.and
       if
        local.get $7
        i32.load offset=8
        local.set $14
        i32.const 0
        local.set $7
        local.get $11
        local.get $3
        local.get $3
        local.get $11
        i64.gt_u
        select
        local.get $2
        local.get $15
        local.get $2
        local.get $15
        i64.gt_u
        select
        local.tee $16
        i64.sub
        i32.wrap_i64
        local.set $17
        loop $while-continue|1
         local.get $7
         local.get $17
         i32.lt_u
         if
          i32.const 0
          local.get $0
          local.get $7
          i64.extend_i32_u
          local.get $5
          local.get $16
          i64.add
          local.get $2
          i64.sub
          i64.add
          local.tee $3
          i32.const 1
          call $build/teto-generated/teto/__bq_248d3b0e_guestPage
          local.tee $18
          i32.const -2
          i32.eq
          local.get $18
          i32.const -1
          i32.eq
          i32.or
          br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_copyAllocatedRange$49
          drop
          i32.const 65536
          local.get $3
          i64.const 65535
          i64.and
          i32.wrap_i64
          local.tee $8
          i32.sub
          local.tee $19
          local.get $17
          local.get $7
          i32.sub
          local.tee $9
          local.get $9
          local.get $19
          i32.gt_u
          select
          local.set $9
          local.get $8
          local.get $18
          i32.add
          local.get $14
          local.get $16
          local.get $15
          i64.sub
          i32.wrap_i64
          i32.add
          local.get $7
          i32.add
          local.get $9
          memory.copy
          local.get $7
          local.get $9
          i32.add
          local.set $7
          br $while-continue|1
         end
        end
       end
      end
      local.get $10
      i32.const 1
      i32.add
      local.set $10
      br $while-continue|00
     end
    end
    i32.const 1
   end
   i32.eqz
   if
    local.get $1
    local.get $5
    local.get $4
    call $build/teto-generated/teto/__bq_248d3b0e_anonymousUnmap
    drop
    i64.const -12
    return
   end
   local.get $1
   local.get $2
   local.get $6
   call $build/teto-generated/teto/__bq_248d3b0e_anonymousUnmap
   i64.const 0
   i64.ne
   if
    i64.const -12
    return
   end
   local.get $5
   return
  end
  local.get $2
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_protectMappings (param $0 i32) (param $1 i64) (param $2 i64) (param $3 i64) (result i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
  local.get $2
  i64.eqz
  local.get $3
  i64.const 7
  i64.gt_u
  i32.or
  local.get $1
  i64.const 4095
  i64.and
  i64.const 0
  i64.ne
  i32.or
  local.get $0
  i64.load offset=208
  local.tee $8
  local.get $1
  i64.le_u
  i32.or
  local.get $2
  local.get $8
  local.get $1
  i64.sub
  i64.gt_u
  i32.or
  if
   i64.const -22
   return
  end
  local.get $2
  i64.const 4095
  i64.add
  i64.const -4096
  i64.and
  local.tee $2
  i64.eqz
  local.get $2
  local.get $8
  local.get $1
  i64.sub
  i64.gt_u
  i32.or
  if
   i64.const -22
   return
  end
  local.get $1
  local.get $2
  i64.add
  local.set $10
  local.get $0
  i32.load offset=276
  local.set $5
  loop $while-continue|0
   local.get $5
   local.get $7
   i32.gt_u
   if
    local.get $10
    local.get $0
    i32.load offset=272
    local.get $7
    i32.const 48
    i32.mul
    i32.add
    local.tee $11
    i64.load
    local.tee $2
    i64.gt_u
    local.get $11
    i64.load offset=8
    local.tee $8
    local.get $1
    i64.gt_u
    i32.and
    if
     i32.const 1
     local.set $6
     local.get $4
     i32.const 1
     i32.add
     local.get $4
     local.get $1
     local.get $2
     local.get $1
     local.get $2
     i64.gt_u
     select
     local.get $2
     i64.gt_u
     select
     local.tee $4
     i32.const 1
     i32.add
     local.get $4
     local.get $8
     local.get $10
     local.get $8
     local.get $8
     local.get $10
     i64.gt_u
     select
     i64.gt_u
     select
     local.set $4
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $while-continue|0
   end
  end
  local.get $6
  i32.eqz
  if
   i64.const -4096
   return
  end
  block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingsCover$50 (result i32)
   local.get $1
   local.set $2
   local.get $0
   i32.load offset=276
   local.set $11
   loop $while-continue|00
    local.get $2
    local.get $10
    i64.lt_u
    if
     i32.const 0
     local.set $6
     i32.const 0
     local.set $7
     loop $while-continue|1
      local.get $7
      local.get $11
      i32.lt_u
      if
       block $while-break|1
        local.get $0
        i32.load offset=272
        local.get $7
        i32.const 48
        i32.mul
        i32.add
        local.tee $12
        i64.load offset=8
        local.tee $8
        local.get $2
        i64.gt_u
        local.get $12
        i64.load
        local.get $2
        i64.le_u
        i32.and
        if
         local.get $8
         local.get $10
         local.get $8
         local.get $10
         i64.lt_u
         select
         local.set $2
         i32.const 1
         local.set $6
         br $while-break|1
        end
        local.get $7
        i32.const 1
        i32.add
        local.set $7
        br $while-continue|1
       end
      end
     end
     i32.const 0
     local.get $6
     i32.eqz
     br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingsCover$50
     drop
     br $while-continue|00
    end
   end
   i32.const 1
  end
  i32.eqz
  if
   i64.const -12
   return
  end
  local.get $4
  local.get $0
  i32.load offset=280
  local.get $5
  i32.sub
  i32.gt_u
  if
   i64.const -12
   return
  end
  local.get $5
  local.set $4
  i32.const 0
  local.set $7
  loop $while-continue|11
   local.get $5
   local.get $7
   i32.gt_u
   if
    local.get $10
    local.get $0
    i32.load offset=272
    local.get $7
    i32.const 48
    i32.mul
    i32.add
    local.tee $6
    i64.load
    local.tee $13
    i64.le_u
    local.get $6
    i64.load offset=8
    local.tee $8
    local.get $1
    i64.le_u
    i32.or
    if
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $while-continue|11
    end
    local.get $6
    i64.load offset=32
    local.set $9
    local.get $10
    local.get $8
    local.get $8
    local.get $10
    i64.gt_u
    select
    local.tee $14
    local.get $8
    i64.eq
    local.get $1
    local.get $13
    local.get $1
    local.get $13
    i64.gt_u
    select
    local.tee $2
    local.get $13
    i64.eq
    i32.and
    if
     local.get $6
     local.get $3
     i32.wrap_i64
     i64.extend_i32_u
     i64.store32 offset=16
    else
     local.get $2
     local.get $13
     i64.eq
     if (result i32)
      local.get $0
      i32.load offset=272
      local.get $4
      i32.const 48
      i32.mul
      i32.add
      local.tee $11
      local.get $6
      i64.load
      i64.store
      local.get $11
      local.get $6
      i64.load offset=8
      i64.store offset=8
      local.get $11
      local.get $6
      i64.load32_u offset=16
      i64.store32 offset=16
      local.get $11
      local.get $6
      i64.load32_u offset=20
      i64.store32 offset=20
      local.get $11
      local.get $6
      i32.load offset=24
      i32.store offset=24
      local.get $11
      local.get $6
      i64.load offset=32
      i64.store offset=32
      local.get $11
      local.get $6
      i64.load32_u offset=40
      i64.store32 offset=40
      local.get $11
      i64.const 0
      i64.store32 offset=44
      local.get $11
      local.get $14
      i64.store
      local.get $11
      local.get $9
      local.get $14
      i64.add
      local.get $13
      i64.sub
      i64.store offset=32
      local.get $6
      local.get $14
      i64.store offset=8
      local.get $6
      local.get $3
      i32.wrap_i64
      i64.extend_i32_u
      i64.store32 offset=16
      local.get $4
      i32.const 1
      i32.add
     else
      local.get $8
      local.get $14
      i64.eq
      if (result i32)
       local.get $0
       i32.load offset=272
       local.get $4
       i32.const 48
       i32.mul
       i32.add
       local.tee $11
       local.get $6
       i64.load
       i64.store
       local.get $11
       local.get $6
       i64.load offset=8
       i64.store offset=8
       local.get $11
       local.get $6
       i64.load32_u offset=16
       i64.store32 offset=16
       local.get $11
       local.get $6
       i64.load32_u offset=20
       i64.store32 offset=20
       local.get $11
       local.get $6
       i32.load offset=24
       i32.store offset=24
       local.get $11
       local.get $6
       i64.load offset=32
       i64.store offset=32
       local.get $11
       local.get $6
       i64.load32_u offset=40
       i64.store32 offset=40
       local.get $11
       i64.const 0
       i64.store32 offset=44
       local.get $11
       local.get $2
       i64.store
       local.get $11
       local.get $2
       local.get $9
       i64.add
       local.get $13
       i64.sub
       i64.store offset=32
       local.get $11
       local.get $3
       i32.wrap_i64
       i64.extend_i32_u
       i64.store32 offset=16
       local.get $6
       local.get $2
       i64.store offset=8
       local.get $4
       i32.const 1
       i32.add
      else
       local.get $0
       i32.load offset=272
       local.tee $11
       local.get $4
       i32.const 1
       i32.add
       i32.const 48
       i32.mul
       i32.add
       local.set $12
       local.get $11
       local.get $4
       i32.const 48
       i32.mul
       i32.add
       local.tee $11
       local.get $6
       i64.load
       i64.store
       local.get $11
       local.get $6
       i64.load offset=8
       i64.store offset=8
       local.get $11
       local.get $6
       i64.load32_u offset=16
       i64.store32 offset=16
       local.get $11
       local.get $6
       i64.load32_u offset=20
       i64.store32 offset=20
       local.get $11
       local.get $6
       i32.load offset=24
       i32.store offset=24
       local.get $11
       local.get $6
       i64.load offset=32
       i64.store offset=32
       local.get $11
       local.get $6
       i64.load32_u offset=40
       i64.store32 offset=40
       local.get $11
       i64.const 0
       i64.store32 offset=44
       local.get $12
       local.get $6
       i64.load
       i64.store
       local.get $12
       local.get $6
       i64.load offset=8
       i64.store offset=8
       local.get $12
       local.get $6
       i64.load32_u offset=16
       i64.store32 offset=16
       local.get $12
       local.get $6
       i64.load32_u offset=20
       i64.store32 offset=20
       local.get $12
       local.get $6
       i32.load offset=24
       i32.store offset=24
       local.get $12
       local.get $6
       i64.load offset=32
       i64.store offset=32
       local.get $12
       local.get $6
       i64.load32_u offset=40
       i64.store32 offset=40
       local.get $12
       i64.const 0
       i64.store32 offset=44
       local.get $6
       local.get $2
       i64.store offset=8
       local.get $11
       local.get $2
       i64.store
       local.get $11
       local.get $14
       i64.store offset=8
       local.get $11
       local.get $2
       local.get $9
       i64.add
       local.get $13
       i64.sub
       i64.store offset=32
       local.get $11
       local.get $3
       i32.wrap_i64
       i64.extend_i32_u
       i64.store32 offset=16
       local.get $12
       local.get $14
       i64.store
       local.get $12
       local.get $9
       local.get $14
       i64.add
       local.get $13
       i64.sub
       i64.store offset=32
       local.get $4
       i32.const 2
       i32.add
      end
     end
     local.set $4
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $while-continue|11
   end
  end
  local.get $0
  local.get $4
  i32.store offset=276
  i64.const 0
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_kernelSyscall (param $0 i32) (result i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  i32.const 10
  i32.shl
  local.tee $2
  i32.const 4096
  i32.add
  local.set $8
  local.get $2
  i32.const 4964
  i32.add
  i32.load
  local.tee $2
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $2
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.set $10
  local.get $0
  i32.const 10
  i32.shl
  local.tee $2
  i32.const 4360
  i32.add
  i64.load
  local.set $1
  local.get $8
  local.get $8
  i64.load offset=704
  i64.const 1
  i64.add
  i64.store offset=704
  block $folding-inner6
   block $folding-inner5
    block $folding-inner4
     block $folding-inner3
      block $folding-inner2
       block $folding-inner1
        local.get $1
        i32.wrap_i64
        local.tee $9
        i32.const 93
        i32.eq
        i32.const 0
        local.get $0
        if (result i32)
         local.get $2
         i32.const 4964
         i32.add
         i32.load
         local.tee $2
         i32.const -1
         i32.ne
         if (result i32)
          local.get $2
          i32.const 4964
          i32.load
          i32.eq
         else
          i32.const 0
         end
        else
         i32.const 0
        end
        select
        br_if $folding-inner6
        local.get $9
        i32.const 94
        i32.eq
        local.get $9
        i32.const 93
        i32.eq
        i32.or
        if
         local.get $8
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4304
         i32.add
         i64.load
         i32.wrap_i64
         local.tee $2
         i32.store offset=660
         local.get $10
         i32.const -1
         i32.ne
         if
          local.get $10
          local.get $2
          i32.store offset=20
          local.get $10
          i32.const 3
          i32.store offset=4
         end
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4304
         i32.add
         local.get $2
         i64.extend_i32_s
         i64.store
         local.get $8
         local.get $8
         i64.load offset=712
         i64.const 1
         i64.add
         i64.store offset=712
         local.get $8
         i32.const 0
         i32.store offset=8
         local.get $8
         i32.const 3
         i32.store offset=4
         i32.const 3
         return
        end
        local.get $9
        i32.const 64
        i32.eq
        if
         local.get $0
         i32.const 10
         i32.shl
         local.tee $2
         i32.const 4304
         i32.add
         i64.load
         i32.wrap_i64
         local.set $4
         local.get $2
         i32.const 4312
         i32.add
         i64.load
         local.set $3
         local.get $2
         i32.const 4320
         i32.add
         i64.load
         local.set $1
         local.get $4
         i32.const 2
         i32.ne
         local.get $4
         i32.const 1
         i32.ne
         i32.and
         br_if $folding-inner6
         local.get $1
         i64.const 1048576
         i64.gt_u
         if
          local.get $2
          local.tee $0
          i32.const 4304
          i32.add
          i64.const -22
          i64.store
          br $folding-inner5
         end
         local.get $0
         local.get $3
         local.get $1
         i32.wrap_i64
         local.tee $2
         i32.const 1
         call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
         i32.eqz
         if
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          i64.const -14
          i64.store
          br $folding-inner5
         end
         local.get $2
         i32.eqz
         br_if $folding-inner4
         local.get $8
         i32.const 1
         i32.store offset=640
         local.get $8
         local.get $4
         i32.store offset=644
         local.get $8
         local.get $3
         i64.store offset=648
         local.get $8
         local.get $2
         i64.extend_i32_u
         i64.store32 offset=656
         local.get $8
         local.get $8
         i64.load offset=720
         i64.const 1
         i64.add
         i64.store offset=720
         local.get $8
         i32.const 2
         i32.store offset=8
         local.get $8
         i32.const 2
         i32.store offset=4
         local.get $10
         i32.const -1
         i32.ne
         if
          local.get $10
          i32.const 2
          i32.store offset=4
         end
         i32.const 2
         return
        end
        local.get $9
        i32.const 124
        i32.eq
        br_if $folding-inner4
        local.get $9
        i32.const 214
        i32.eq
        if
         local.get $10
         i32.const -1
         i32.eq
         br_if $folding-inner1
         block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_programBreak$103 (result i32)
          local.get $10
          i32.load
          local.tee $2
          i32.eqz
          if
           local.get $10
           i32.const 1
           i32.store
          end
          local.get $2
          if
           local.get $0
           i32.const 10
           i32.shl
           i32.const 4120
           i32.add
           local.tee $0
           local.get $0
           i64.load
           i64.const 4
           i64.sub
           i64.store
           i32.const 6
           br $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_programBreak$103
          end
          local.get $10
          i64.load offset=296
          local.set $7
          block $folding-inner00
           local.get $0
           i32.const 10
           i32.shl
           i32.const 4304
           i32.add
           i64.load
           local.tee $6
           i64.eqz
           br_if $folding-inner00
           local.get $10
           i64.load offset=288
           local.set $5
           local.get $10
           i64.load offset=256
           local.set $3
           local.get $10
           i32.load offset=276
           local.set $2
           loop $while-continue|0
            local.get $2
            local.get $13
            i32.gt_u
            if
             i32.const 1
             local.get $12
             local.get $6
             local.get $10
             i32.load offset=272
             local.get $13
             i32.const 48
             i32.mul
             i32.add
             i64.load
             local.tee $1
             i64.const -1048576
             i64.add
             i64.ge_u
             local.get $1
             i64.const 1048576
             i64.le_u
             i32.or
             select
             local.set $12
             local.get $13
             i32.const 1
             i32.add
             local.set $13
             br $while-continue|0
            end
           end
           local.get $12
           local.get $3
           i64.eqz
           local.get $5
           local.get $6
           i64.gt_u
           i32.or
           local.get $3
           local.get $6
           i64.le_u
           i32.or
           local.get $3
           local.get $6
           i64.sub
           i64.const 1048576
           i64.le_u
           i32.or
           i32.or
           br_if $folding-inner00
           local.get $6
           local.get $7
           i64.lt_u
           if
            local.get $10
            local.get $6
            local.get $7
            call $build/teto-generated/teto/__bq_248d3b0e_clearMappedRange
           end
           local.get $10
           local.get $6
           i64.store offset=296
           local.get $10
           i32.const 0
           i32.store
           local.get $0
           i32.const 10
           i32.shl
           local.tee $0
           i32.const 4304
           i32.add
           local.get $6
           i64.store
           local.get $0
           i32.const 4808
           i32.add
           local.tee $0
           local.get $0
           i64.load
           i64.const 1
           i64.add
           i64.store
           i32.const 0
           br $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_programBreak$103
          end
          local.get $10
          i32.const 0
          i32.store
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          local.get $7
          i64.store
          local.get $0
          i32.const 4808
          i32.add
          local.tee $0
          local.get $0
          i64.load
          i64.const 1
          i64.add
          i64.store
          i32.const 0
         end
         return
        end
        local.get $9
        i32.const 222
        i32.eq
        if (result i32)
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4328
         i32.add
         i64.load
         i64.const 32
         i64.and
         i64.const 0
         i64.ne
        else
         i32.const 0
        end
        if
         local.get $10
         i32.const -1
         i32.eq
         br_if $folding-inner1
         local.get $10
         i32.load
         local.tee $2
         i32.eqz
         if
          local.get $10
          i32.const 1
          i32.store
         end
         local.get $2
         br_if $folding-inner2
         local.get $10
         local.get $0
         i32.const 10
         i32.shl
         local.tee $2
         i32.const 4304
         i32.add
         i64.load
         local.get $2
         i32.const 4312
         i32.add
         i64.load
         local.get $2
         i32.const 4320
         i32.add
         i64.load
         local.get $2
         i32.const 4328
         i32.add
         i64.load
         call $build/teto-generated/teto/__bq_248d3b0e_anonymousMap
         local.set $3
         local.get $9
         local.get $2
         i32.const 4304
         i32.add
         i64.load
         local.get $2
         i32.const 4312
         i32.add
         i64.load
         local.get $2
         i32.const 4328
         i32.add
         i64.load
         i32.wrap_i64
         local.get $2
         i32.const 4320
         i32.add
         i64.load
         local.get $3
         call $build/teto-generated/teto/__bq_248d3b0e_traceMappingOperation
         local.get $10
         i32.const 0
         i32.store
         br $folding-inner3
        end
        local.get $9
        i32.const 215
        i32.eq
        if
         local.get $10
         i32.const -1
         i32.eq
         br_if $folding-inner1
         local.get $10
         i32.load
         local.tee $2
         i32.eqz
         if
          local.get $10
          i32.const 1
          i32.store
         end
         local.get $2
         br_if $folding-inner2
         local.get $10
         local.get $0
         i32.const 10
         i32.shl
         local.tee $2
         i32.const 4304
         i32.add
         i64.load
         local.get $2
         i32.const 4312
         i32.add
         i64.load
         call $build/teto-generated/teto/__bq_248d3b0e_anonymousUnmap
         local.set $3
         local.get $9
         local.get $2
         i32.const 4304
         i32.add
         i64.load
         local.get $2
         i32.const 4312
         i32.add
         i64.load
         i32.const 0
         i64.const 0
         local.get $3
         call $build/teto-generated/teto/__bq_248d3b0e_traceMappingOperation
         local.get $10
         i32.const 0
         i32.store
         local.get $3
         i64.const -4096
         i64.eq
         br_if $folding-inner6
         br $folding-inner3
        end
        local.get $9
        i32.const 226
        i32.eq
        local.get $9
        i32.const 216
        i32.eq
        i32.or
        local.get $9
        i32.const 227
        i32.eq
        i32.or
        if
         local.get $10
         i32.const -1
         i32.eq
         br_if $folding-inner1
         local.get $10
         i32.load
         local.tee $2
         i32.eqz
         if
          local.get $10
          i32.const 1
          i32.store
         end
         local.get $2
         br_if $folding-inner2
         local.get $9
         i32.const 216
         i32.eq
         if (result i64)
          local.get $0
          local.get $10
          local.get $0
          i32.const 10
          i32.shl
          local.tee $2
          i32.const 4304
          i32.add
          i64.load
          local.get $2
          i32.const 4312
          i32.add
          i64.load
          local.get $2
          i32.const 4320
          i32.add
          i64.load
          local.get $2
          i32.const 4328
          i32.add
          i64.load
          local.get $2
          i32.const 4336
          i32.add
          i64.load
          call $build/teto-generated/teto/__bq_248d3b0e_remapAnonymous
         else
          local.get $9
          i32.const 226
          i32.eq
          if (result i64)
           local.get $10
           local.get $0
           i32.const 10
           i32.shl
           local.tee $2
           i32.const 4304
           i32.add
           i64.load
           local.get $2
           i32.const 4312
           i32.add
           i64.load
           local.get $2
           i32.const 4320
           i32.add
           i64.load
           call $build/teto-generated/teto/__bq_248d3b0e_protectMappings
          else
           local.get $0
           i32.const 10
           i32.shl
           local.tee $2
           i32.const 4304
           i32.add
           i64.load
           local.set $1
           i64.const -22
           local.set $11
           block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_syncAnonymous$661
            i32.const 0
            local.get $2
            i32.const 4320
            i32.add
            i64.load
            local.tee $7
            i32.wrap_i64
            i32.const 5
            i32.and
            local.get $2
            i32.const 4312
            i32.add
            i64.load
            local.tee $6
            i64.eqz
            local.get $1
            i64.const 4095
            i64.and
            i64.const 0
            i64.ne
            i32.or
            local.get $10
            i64.load offset=208
            local.tee $3
            local.get $1
            i64.le_u
            i32.or
            local.get $6
            local.get $3
            local.get $1
            i64.sub
            local.tee $5
            i64.gt_u
            i32.or
            local.get $7
            i64.const 7
            i64.gt_u
            i32.or
            select
            i32.eqz
            br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_syncAnonymous$661
            local.get $6
            i64.const 4095
            i64.add
            i64.const -4096
            i64.and
            local.tee $3
            i64.eqz
            local.get $3
            local.get $5
            i64.gt_u
            i32.or
            br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_syncAnonymous$661
            local.get $1
            local.get $3
            i64.add
            local.set $6
            i64.const -4096
            local.set $11
            block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingsCover$74 (result i32)
             local.get $1
             local.set $3
             local.get $10
             i32.load offset=276
             local.set $2
             loop $while-continue|01
              local.get $3
              local.get $6
              i64.lt_u
              if
               i32.const 0
               local.set $12
               i32.const 0
               local.set $8
               loop $while-continue|1
                local.get $2
                local.get $8
                i32.gt_u
                if
                 block $while-break|1
                  local.get $10
                  i32.load offset=272
                  local.get $8
                  i32.const 48
                  i32.mul
                  i32.add
                  local.tee $4
                  i64.load offset=8
                  local.tee $5
                  local.get $3
                  i64.gt_u
                  local.get $4
                  i64.load
                  local.get $3
                  i64.le_u
                  i32.and
                  if
                   local.get $5
                   local.get $6
                   local.get $5
                   local.get $6
                   i64.lt_u
                   select
                   local.set $3
                   i32.const 1
                   local.set $12
                   br $while-break|1
                  end
                  local.get $8
                  i32.const 1
                  i32.add
                  local.set $8
                  br $while-continue|1
                 end
                end
               end
               i32.const 0
               local.get $12
               i32.eqz
               br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_mappingsCover$74
               drop
               br $while-continue|01
              end
             end
             i32.const 1
            end
            i32.eqz
            br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_syncAnonymous$661
            local.get $10
            i32.load offset=276
            local.set $4
            loop $while-continue|00
             local.get $4
             local.get $13
             i32.gt_u
             if
              local.get $1
              local.get $10
              i32.load offset=272
              local.get $13
              i32.const 48
              i32.mul
              i32.add
              local.tee $2
              i64.load offset=8
              i64.lt_u
              if (result i32)
               local.get $6
               local.get $2
               i64.load
               i64.gt_u
              else
               i32.const 0
              end
              if (result i32)
               local.get $2
               i32.load offset=40
              else
               i32.const 0
              end
              br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_syncAnonymous$661
              local.get $13
              i32.const 1
              i32.add
              local.set $13
              br $while-continue|00
             end
            end
            i64.const 0
            local.set $11
           end
           local.get $11
          end
         end
         local.set $3
         local.get $9
         local.get $0
         i32.const 10
         i32.shl
         local.tee $2
         i32.const 4304
         i32.add
         i64.load
         local.get $2
         i32.const 4312
         i32.add
         i64.load
         local.get $2
         i32.const 4320
         i32.add
         i64.load
         i32.wrap_i64
         local.get $2
         i32.const 4328
         i32.add
         i64.load
         local.get $3
         call $build/teto-generated/teto/__bq_248d3b0e_traceMappingOperation
         local.get $10
         i32.const 0
         i32.store
         local.get $3
         i64.const -4096
         i64.eq
         br_if $folding-inner6
         br $folding-inner3
        end
        local.get $9
        i32.const 152
        i32.le_u
        local.get $9
        i32.const 143
        i32.ge_u
        i32.and
        local.get $9
        i32.const 158
        i32.eq
        i32.or
        local.get $9
        i32.const 159
        i32.eq
        i32.or
        if
         local.get $10
         i32.const -1
         i32.eq
         br_if $folding-inner1
         i32.const 36
         i32.load
         local.tee $2
         i32.eqz
         if
          i32.const 36
          i32.const 1
          i32.store
         end
         local.get $2
         br_if $folding-inner2
         local.get $0
         local.get $10
         local.get $9
         call $build/teto-generated/teto/__bq_248d3b0e_credentialSyscall
         local.set $3
         i32.const 36
         i32.const 0
         i32.store
         br $folding-inner3
        end
        local.get $9
        i32.const 178
        i32.eq
        i32.const 0
        local.get $0
        if (result i32)
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4964
         i32.add
         i32.load
         local.tee $2
         i32.const -1
         i32.ne
         if (result i32)
          local.get $2
          i32.const 4964
          i32.load
          i32.eq
         else
          i32.const 0
         end
        else
         i32.const 0
        end
        select
        br_if $folding-inner6
        local.get $9
        i32.const 178
        i32.le_u
        local.get $9
        i32.const 172
        i32.ge_u
        i32.and
        if
         local.get $10
         i32.const -1
         i32.eq
         br_if $folding-inner1
         local.get $9
         i32.const 178
         i32.eq
         local.get $9
         i32.const 172
         i32.eq
         i32.or
         if
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          local.get $10
          i64.load32_s offset=8
          i64.store
          br $folding-inner5
         end
         local.get $9
         i32.const 173
         i32.eq
         if
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          local.get $10
          i64.load32_s offset=12
          i64.store
          br $folding-inner5
         end
         local.get $9
         i32.const 174
         i32.eq
         if
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          local.get $10
          i64.load32_s offset=24
          i64.store
          br $folding-inner5
         end
         local.get $9
         i32.const 175
         i32.eq
         if
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          local.get $10
          i64.load32_s offset=28
          i64.store
          br $folding-inner5
         end
         local.get $9
         i32.const 176
         i32.eq
         if
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          local.get $10
          i64.load32_s offset=40
          i64.store
          br $folding-inner5
         end
         local.get $9
         i32.const 177
         i32.eq
         if
          local.get $0
          i32.const 10
          i32.shl
          local.tee $0
          i32.const 4304
          i32.add
          local.get $10
          i64.load32_s offset=44
          i64.store
          br $folding-inner5
         end
        end
        br $folding-inner6
       end
       local.get $0
       i32.const 10
       i32.shl
       local.tee $0
       i32.const 4304
       i32.add
       i64.const -3
       i64.store
       br $folding-inner5
      end
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4120
      i32.add
      local.get $8
      i64.load offset=24
      i64.const 4
      i64.sub
      i64.store
      i32.const 6
      return
     end
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 4304
     i32.add
     local.get $3
     i64.store
     local.get $0
     i32.const 4808
     i32.add
     local.tee $0
     local.get $0
     i64.load
     i64.const 1
     i64.add
     i64.store
     i32.const 0
     return
    end
    local.get $0
    i32.const 10
    i32.shl
    local.tee $0
    i32.const 4304
    i32.add
    i64.const 0
    i64.store
   end
   local.get $0
   i32.const 4808
   i32.add
   local.tee $0
   local.get $0
   i64.load
   i64.const 1
   i64.add
   i64.store
   i32.const 0
   return
  end
  local.get $0
  i32.const 10
  i32.shl
  local.tee $0
  i32.const 4096
  i32.add
  local.set $2
  local.get $0
  i32.const 4964
  i32.add
  i32.load
  local.tee $0
  i32.const 64
  i32.load
  i32.lt_u
  if (result i32)
   i32.const 60
   i32.load
   local.get $0
   i32.const 352
   i32.mul
   i32.add
  else
   i32.const -1
  end
  local.set $0
  local.get $2
  local.get $2
  i64.load offset=728
  i64.const 1
  i64.add
  i64.store offset=728
  local.get $0
  i32.const -1
  i32.ne
  if
   local.get $0
   i32.const 2
   i32.store offset=4
  end
  local.get $2
  i32.const 1
  i32.store offset=8
  local.get $2
  i32.const 2
  i32.store offset=4
  i32.const 1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_floatingOperation (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (local $6 i64)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i64)
  (local $12 f64)
  (local $13 i64)
  (local $14 i64)
  (local $15 f64)
  i64.const 2143289344
  local.get $0
  i32.const 10
  i32.shl
  local.tee $10
  i32.const 4480
  i32.add
  local.get $4
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.tee $11
  i64.const 4294967295
  i64.and
  local.get $11
  i64.const 32
  i64.shr_u
  i64.const 4294967295
  i64.ne
  select
  local.get $11
  local.get $3
  i32.const 1
  i32.and
  i32.eqz
  local.tee $8
  select
  local.set $11
  local.get $10
  i32.const 5016
  i32.add
  local.set $10
  local.get $8
  if (result f64)
   local.get $10
   local.get $11
   i64.store32
   local.get $10
   f32.load
   f64.promote_f32
  else
   local.get $10
   local.get $11
   i64.store
   local.get $10
   f64.load
  end
  local.set $12
  i64.const 2143289344
  local.get $0
  i32.const 10
  i32.shl
  local.tee $10
  i32.const 4480
  i32.add
  local.get $5
  i32.const 3
  i32.shl
  i32.add
  i64.load
  local.tee $11
  i64.const 4294967295
  i64.and
  local.get $11
  i64.const 32
  i64.shr_u
  i64.const 4294967295
  i64.ne
  select
  local.get $11
  local.get $8
  select
  local.set $11
  local.get $10
  i32.const 5016
  i32.add
  local.set $10
  local.get $8
  if (result f64)
   local.get $10
   local.get $11
   i64.store32
   local.get $10
   f32.load
   f64.promote_f32
  else
   local.get $10
   local.get $11
   i64.store
   local.get $10
   f64.load
  end
  local.set $9
  block $folding-inner1
   block $folding-inner0
    local.get $3
    i32.eqz
    local.get $3
    i32.const 1
    i32.eq
    i32.or
    if
     local.get $2
     i32.const 7
     i32.eq
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      i32.load
      i32.const 5
      i32.shr_u
      i32.const 7
      i32.and
      local.set $2
     end
     i32.const -1
     local.get $2
     local.get $2
     i32.const 4
     i32.gt_u
     select
     i32.const 0
     i32.lt_s
     br_if $folding-inner0
     local.get $12
     local.get $9
     f64.add
     local.set $7
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.set $2
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     if (result i64)
      local.get $2
      local.get $7
      f32.demote_f64
      f64.promote_f32
      f32.demote_f64
      f32.store
      local.get $2
      i64.load32_u
     else
      local.get $2
      local.get $7
      f64.store
      local.get $2
      i64.load
     end
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 5
    i32.eq
    local.get $3
    i32.const 4
    i32.eq
    i32.or
    if
     local.get $2
     i32.const 7
     i32.eq
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      i32.load
      i32.const 5
      i32.shr_u
      i32.const 7
      i32.and
      local.set $2
     end
     i32.const -1
     local.get $2
     local.get $2
     i32.const 4
     i32.gt_u
     select
     i32.const 0
     i32.lt_s
     br_if $folding-inner0
     local.get $12
     local.get $9
     f64.sub
     local.set $7
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.set $2
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     if (result i64)
      local.get $2
      local.get $7
      f32.demote_f64
      f64.promote_f32
      f32.demote_f64
      f32.store
      local.get $2
      i64.load32_u
     else
      local.get $2
      local.get $7
      f64.store
      local.get $2
      i64.load
     end
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 9
    i32.eq
    local.get $3
    i32.const 8
    i32.eq
    i32.or
    if
     local.get $2
     i32.const 7
     i32.eq
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      i32.load
      i32.const 5
      i32.shr_u
      i32.const 7
      i32.and
      local.set $2
     end
     i32.const -1
     local.get $2
     local.get $2
     i32.const 4
     i32.gt_u
     select
     i32.const 0
     i32.lt_s
     br_if $folding-inner0
     local.get $12
     local.get $9
     f64.mul
     local.set $7
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.set $2
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     if (result i64)
      local.get $2
      local.get $7
      f32.demote_f64
      f64.promote_f32
      f32.demote_f64
      f32.store
      local.get $2
      i64.load32_u
     else
      local.get $2
      local.get $7
      f64.store
      local.get $2
      i64.load
     end
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 13
    i32.eq
    local.get $3
    i32.const 12
    i32.eq
    i32.or
    if
     local.get $2
     i32.const 7
     i32.eq
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      i32.load
      i32.const 5
      i32.shr_u
      i32.const 7
      i32.and
      local.set $2
     end
     i32.const -1
     local.get $2
     local.get $2
     i32.const 4
     i32.gt_u
     select
     i32.const 0
     i32.lt_s
     br_if $folding-inner0
     local.get $9
     f64.const 0
     f64.eq
     local.get $12
     f64.const 0
     f64.ne
     i32.and
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      local.tee $2
      local.get $2
      i32.load
      i32.const 8
      i32.or
      i64.extend_i32_u
      i64.store32
     else
      local.get $12
      f64.const 0
      f64.eq
      local.get $9
      f64.const 0
      f64.eq
      i32.and
      if
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4136
       i32.add
       local.tee $2
       local.get $2
       i32.load
       i32.const 16
       i32.or
       i64.extend_i32_u
       i64.store32
      end
     end
     local.get $12
     local.get $9
     f64.div
     local.set $7
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.set $2
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     if (result i64)
      local.get $2
      local.get $7
      f32.demote_f64
      f64.promote_f32
      f32.demote_f64
      f32.store
      local.get $2
      i64.load32_u
     else
      local.get $2
      local.get $7
      f64.store
      local.get $2
      i64.load
     end
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 17
    i32.eq
    local.get $3
    i32.const 16
    i32.eq
    i32.or
    if
     local.get $2
     i32.const 2
     i32.gt_u
     br_if $folding-inner0
     local.get $0
     i32.const 10
     i32.shl
     i32.const 4480
     i32.add
     local.tee $0
     local.get $4
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.tee $6
     i64.const 2143289344
     local.get $6
     i64.const 4294967295
     i64.and
     local.get $6
     i64.const 32
     i64.shr_u
     i64.const 4294967295
     i64.ne
     select
     local.get $8
     i32.eqz
     local.tee $3
     select
     local.tee $11
     i64.const 2147483648
     i64.const -9223372036854775808
     local.get $8
     select
     local.tee $6
     i64.const -1
     i64.xor
     i64.and
     local.set $13
     local.get $6
     local.get $11
     i64.and
     local.set $11
     local.get $6
     local.get $0
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.tee $14
     i64.const 2143289344
     local.get $14
     i64.const 4294967295
     i64.and
     local.get $14
     i64.const 32
     i64.shr_u
     i64.const 4294967295
     i64.ne
     select
     local.get $3
     select
     i64.and
     local.set $14
     local.get $0
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $2
     if (result i64)
      local.get $6
      local.get $14
      i64.xor
      local.get $11
      local.get $14
      i64.xor
      local.get $2
      i32.const 1
      i32.eq
      select
     else
      local.get $14
     end
     local.get $13
     i64.or
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 21
    i32.eq
    local.get $3
    i32.const 20
    i32.eq
    i32.or
    if
     local.get $2
     i32.const 1
     i32.gt_u
     br_if $folding-inner0
     local.get $9
     local.get $9
     f64.ne
     local.get $12
     local.get $12
     f64.ne
     i32.and
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4480
      i32.add
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      i64.const 2143289344
      i64.const 9221120237041090560
      local.get $8
      select
      local.tee $6
      i32.wrap_i64
      i64.extend_i32_u
      i64.const -4294967296
      i64.or
      local.get $6
      local.get $8
      select
      i64.store
     else
      local.get $12
      local.get $12
      f64.ne
      if
       i64.const 2143289344
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4480
       i32.add
       local.tee $0
       local.get $5
       i32.const 3
       i32.shl
       i32.add
       i64.load
       local.tee $6
       i64.const 4294967295
       i64.and
       local.get $6
       i64.const 32
       i64.shr_u
       i64.const 4294967295
       i64.ne
       select
       local.get $6
       local.get $8
       select
       local.set $6
       local.get $0
       local.get $1
       i32.const 3
       i32.shl
       i32.add
       local.get $6
       i32.wrap_i64
       i64.extend_i32_u
       i64.const -4294967296
       i64.or
       local.get $6
       local.get $8
       select
       i64.store
      else
       local.get $9
       local.get $9
       f64.ne
       if
        i64.const 2143289344
        local.get $0
        i32.const 10
        i32.shl
        i32.const 4480
        i32.add
        local.tee $0
        local.get $4
        i32.const 3
        i32.shl
        i32.add
        i64.load
        local.tee $6
        i64.const 4294967295
        i64.and
        local.get $6
        i64.const 32
        i64.shr_u
        i64.const 4294967295
        i64.ne
        select
        local.get $6
        local.get $8
        select
        local.set $6
        local.get $0
        local.get $1
        i32.const 3
        i32.shl
        i32.add
        local.get $6
        i32.wrap_i64
        i64.extend_i32_u
        i64.const -4294967296
        i64.or
        local.get $6
        local.get $8
        select
        i64.store
       else
        local.get $9
        local.get $12
        f64.max
        local.get $9
        local.get $12
        f64.min
        local.get $2
        i32.const 1
        i32.eq
        select
        local.set $7
        local.get $0
        i32.const 10
        i32.shl
        local.tee $0
        i32.const 5016
        i32.add
        local.set $2
        local.get $0
        i32.const 4480
        i32.add
        local.get $1
        i32.const 3
        i32.shl
        i32.add
        local.get $8
        if (result i64)
         local.get $2
         local.get $7
         f32.demote_f64
         f64.promote_f32
         f32.demote_f64
         f32.store
         local.get $2
         i64.load32_u
        else
         local.get $2
         local.get $7
         f64.store
         local.get $2
         i64.load
        end
        local.tee $6
        i32.wrap_i64
        i64.extend_i32_u
        i64.const -4294967296
        i64.or
        local.get $6
        local.get $8
        select
        i64.store
       end
      end
     end
     br $folding-inner1
    end
    local.get $3
    i32.const 32
    i32.eq
    if
     local.get $5
     i32.const 1
     i32.ne
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.const 7
      i32.eq
      if
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4136
       i32.add
       i32.load
       i32.const 5
       i32.shr_u
       i32.const 7
       i32.and
       local.set $2
      end
      i32.const -1
      local.get $2
      local.get $2
      i32.const 4
      i32.gt_u
      select
      i32.const 0
      i32.lt_s
     end
     br_if $folding-inner0
     local.get $0
     i32.const 10
     i32.shl
     local.tee $2
     i32.const 4480
     i32.add
     local.get $4
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.set $6
     local.get $2
     i32.const 5016
     i32.add
     local.tee $2
     local.get $6
     i64.store
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.tee $3
     local.get $2
     f64.load
     f32.demote_f64
     f64.promote_f32
     f32.demote_f64
     f32.store
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $3
     i64.load32_u
     i64.const -4294967296
     i64.or
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 33
    i32.eq
    if
     local.get $5
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.const 7
      i32.eq
      if
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4136
       i32.add
       i32.load
       i32.const 5
       i32.shr_u
       i32.const 7
       i32.and
       local.set $2
      end
      i32.const -1
      local.get $2
      local.get $2
      i32.const 4
      i32.gt_u
      select
      i32.const 0
      i32.lt_s
     end
     br_if $folding-inner0
     i64.const 2143289344
     local.get $0
     i32.const 10
     i32.shl
     local.tee $2
     i32.const 4480
     i32.add
     local.get $4
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.tee $6
     i64.const 4294967295
     i64.and
     local.get $6
     i64.const 32
     i64.shr_u
     i64.const 4294967295
     i64.ne
     select
     local.set $6
     local.get $2
     i32.const 5016
     i32.add
     local.tee $2
     local.get $6
     i64.store32
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.tee $3
     local.get $2
     f32.load
     f64.promote_f32
     f64.store
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $3
     i64.load
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 45
    i32.eq
    local.get $3
    i32.const 44
    i32.eq
    i32.or
    if
     local.get $5
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.const 7
      i32.eq
      if
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4136
       i32.add
       i32.load
       i32.const 5
       i32.shr_u
       i32.const 7
       i32.and
       local.set $2
      end
      i32.const -1
      local.get $2
      local.get $2
      i32.const 4
      i32.gt_u
      select
      i32.const 0
      i32.lt_s
     end
     br_if $folding-inner0
     local.get $12
     f64.sqrt
     local.set $7
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.set $2
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     if (result i64)
      local.get $2
      local.get $7
      f32.demote_f64
      f64.promote_f32
      f32.demote_f64
      f32.store
      local.get $2
      i64.load32_u
     else
      local.get $2
      local.get $7
      f64.store
      local.get $2
      i64.load
     end
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 81
    i32.eq
    local.get $3
    i32.const 80
    i32.eq
    i32.or
    if
     local.get $2
     i32.const 2
     i32.gt_u
     br_if $folding-inner0
     local.get $9
     local.get $9
     f64.ne
     local.get $12
     local.get $12
     f64.ne
     i32.or
     if
      local.get $2
      i32.const 2
      i32.ne
      if
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4136
       i32.add
       local.tee $2
       local.get $2
       i32.load
       i32.const 16
       i32.or
       i64.extend_i32_u
       i64.store32
      end
     else
      local.get $2
      if (result i32)
       local.get $9
       local.get $12
       f64.gt
       local.get $9
       local.get $12
       f64.eq
       local.get $2
       i32.const 1
       i32.eq
       select
      else
       local.get $9
       local.get $12
       f64.ge
      end
      i64.extend_i32_u
      local.set $6
     end
     local.get $1
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4224
      i32.add
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      local.get $6
      i64.store
     end
     br $folding-inner1
    end
    local.get $3
    i32.const 97
    i32.eq
    local.get $3
    i32.const 96
    i32.eq
    i32.or
    if
     local.get $5
     i32.const 3
     i32.gt_u
     br_if $folding-inner0
     local.get $2
     i32.const 7
     i32.eq
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      i32.load
      i32.const 5
      i32.shr_u
      i32.const 7
      i32.and
      local.set $2
     end
     i32.const -1
     local.get $2
     local.get $2
     i32.const 4
     i32.gt_u
     select
     local.tee $2
     i32.const 0
     i32.lt_s
     br_if $folding-inner0
     i32.const 32
     i32.const 64
     local.get $5
     i32.const 2
     i32.lt_u
     select
     local.set $3
     block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_floatingToInteger$43 (result i64)
      local.get $5
      i32.const 1
      i32.and
      local.set $4
      block $folding-inner00
       local.get $2
       i32.const 1
       i32.eq
       if (result f64)
        local.get $12
        f64.trunc
       else
        local.get $2
        i32.const 2
        i32.eq
        if (result f64)
         local.get $12
         f64.floor
        else
         local.get $2
         i32.const 3
         i32.eq
         if (result f64)
          local.get $12
          f64.ceil
         else
          local.get $12
          local.get $12
          f64.floor
          local.tee $15
          f64.sub
          local.tee $9
          f64.const 0.5
          f64.lt
          if (result f64)
           local.get $15
          else
           local.get $9
           f64.const 0.5
           f64.gt
           if (result f64)
            local.get $15
            f64.const 1
            f64.add
           else
            local.get $2
            i32.const 4
            i32.eq
            if (result f64)
             local.get $15
             local.get $15
             f64.const 1
             f64.add
             local.get $12
             f64.const 0
             f64.lt
             select
            else
             local.get $15
             local.get $15
             f64.const 1
             f64.add
             local.get $15
             f64.const 0.5
             f64.mul
             f64.trunc
             f64.const 2
             f64.mul
             local.get $15
             f64.eq
             select
            end
           end
          end
         end
        end
       end
       local.tee $12
       local.get $12
       f64.ne
       br_if $folding-inner00
       local.get $4
       if
        f64.const 18446744073709551615
        f64.const 4294967296
        local.get $3
        i32.const 64
        i32.eq
        select
        local.set $9
       else
        local.get $3
        i32.const 32
        i32.eq
        if (result f64)
         f64.const 2147483648
         local.set $9
         f64.const -2147483648
        else
         f64.const 9223372036854775808
         local.set $9
         f64.const -9223372036854775808
        end
        local.set $7
       end
       local.get $7
       local.get $12
       f64.gt
       if
        local.get $0
        i32.const 10
        i32.shl
        i32.const 4136
        i32.add
        local.tee $2
        local.get $2
        i32.load
        i32.const 16
        i32.or
        i64.extend_i32_u
        i64.store32
        local.get $4
        if (result i64)
         i64.const 0
        else
         i64.const -2147483648
         i64.const -9223372036854775808
         local.get $3
         i32.const 32
         i32.eq
         select
        end
        br $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_floatingToInteger$43
       end
       local.get $9
       local.get $12
       f64.le
       br_if $folding-inner00
       local.get $12
       i64.trunc_sat_f64_u
       local.get $12
       i64.trunc_sat_f64_s
       local.get $4
       select
       br $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_floatingToInteger$43
      end
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      local.tee $2
      local.get $2
      i32.load
      i32.const 16
      i32.or
      i64.extend_i32_u
      i64.store32
      local.get $4
      if (result i64)
       i64.const 4294967295
       i64.const -1
       local.get $3
       i32.const 32
       i32.eq
       select
      else
       i64.const 2147483647
       i64.const 9223372036854775807
       local.get $3
       i32.const 32
       i32.eq
       select
      end
     end
     local.tee $6
     i64.extend32_s
     local.get $6
     local.get $3
     i32.const 32
     i32.eq
     select
     local.set $6
     local.get $1
     if
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4224
      i32.add
      local.get $1
      i32.const 3
      i32.shl
      i32.add
      local.get $6
      i64.store
     end
     br $folding-inner1
    end
    local.get $3
    i32.const 105
    i32.eq
    local.get $3
    i32.const 104
    i32.eq
    i32.or
    if
     local.get $5
     i32.const 3
     i32.gt_u
     if (result i32)
      i32.const 1
     else
      local.get $2
      i32.const 7
      i32.eq
      if
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4136
       i32.add
       i32.load
       i32.const 5
       i32.shr_u
       i32.const 7
       i32.and
       local.set $2
      end
      i32.const -1
      local.get $2
      local.get $2
      i32.const 4
      i32.gt_u
      select
      i32.const 0
      i32.lt_s
     end
     br_if $folding-inner0
     local.get $4
     if (result i64)
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4224
      i32.add
      local.get $4
      i32.const 3
      i32.shl
      i32.add
      i64.load
     else
      i64.const 0
     end
     local.set $6
     local.get $5
     if (result f64)
      local.get $5
      i32.const 1
      i32.eq
      if (result f64)
       local.get $6
       i32.wrap_i64
       i64.extend_i32_u
       f64.convert_i64_u
      else
       local.get $6
       f64.convert_i64_s
       local.get $6
       f64.convert_i64_u
       local.get $5
       i32.const 2
       i32.eq
       select
      end
     else
      local.get $6
      i64.extend32_s
      f64.convert_i64_s
     end
     local.set $7
     local.get $0
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 5016
     i32.add
     local.set $2
     local.get $0
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     if (result i64)
      local.get $2
      local.get $7
      f32.demote_f64
      f64.promote_f32
      f32.demote_f64
      f32.store
      local.get $2
      i64.load32_u
     else
      local.get $2
      local.get $7
      f64.store
      local.get $2
      i64.load
     end
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    local.get $3
    i32.const 113
    i32.eq
    local.get $3
    i32.const 112
    i32.eq
    i32.or
    if
     local.get $5
     br_if $folding-inner0
     local.get $2
     if
      local.get $2
      i32.const 1
      i32.eq
      if
       i64.const 2143289344
       local.get $0
       i32.const 10
       i32.shl
       local.tee $0
       i32.const 4480
       i32.add
       local.get $4
       i32.const 3
       i32.shl
       i32.add
       i64.load
       local.tee $6
       i64.const 4294967295
       i64.and
       local.get $6
       i64.const 32
       i64.shr_u
       i64.const 4294967295
       i64.ne
       select
       local.get $6
       local.get $8
       select
       i32.const 32
       i32.const 64
       local.get $8
       select
       call $build/teto-generated/teto/rv64FloatClass
       local.set $6
       local.get $1
       if
        local.get $0
        i32.const 4224
        i32.add
        local.get $1
        i32.const 3
        i32.shl
        i32.add
        local.get $6
        i64.store
       end
      else
       br $folding-inner0
      end
     else
      local.get $8
      if (result i64)
       i64.const 2143289344
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4480
       i32.add
       local.get $4
       i32.const 3
       i32.shl
       i32.add
       i64.load
       local.tee $6
       i64.const 4294967295
       i64.and
       local.get $6
       i64.const 32
       i64.shr_u
       i64.const 4294967295
       i64.ne
       select
       i64.extend32_s
      else
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4480
       i32.add
       local.get $4
       i32.const 3
       i32.shl
       i32.add
       i64.load
      end
      local.set $6
      local.get $1
      if
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4224
       i32.add
       local.get $1
       i32.const 3
       i32.shl
       i32.add
       local.get $6
       i64.store
      end
     end
     br $folding-inner1
    end
    local.get $3
    i32.const 121
    i32.eq
    local.get $3
    i32.const 120
    i32.eq
    i32.or
    if
     i32.const 1
     local.get $2
     local.get $5
     select
     br_if $folding-inner0
     local.get $0
     i32.const 10
     i32.shl
     local.tee $2
     i32.const 4480
     i32.add
     local.get $1
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     if (result i64)
      local.get $4
      if (result i64)
       local.get $2
       i32.const 4224
       i32.add
       local.get $4
       i32.const 3
       i32.shl
       i32.add
       i64.load
      else
       i64.const 0
      end
      i32.wrap_i64
      i64.extend_i32_u
     else
      local.get $4
      if (result i64)
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4224
       i32.add
       local.get $4
       i32.const 3
       i32.shl
       i32.add
       i64.load
      else
       i64.const 0
      end
     end
     local.tee $6
     i32.wrap_i64
     i64.extend_i32_u
     i64.const -4294967296
     i64.or
     local.get $6
     local.get $8
     select
     i64.store
     br $folding-inner1
    end
    i32.const 0
    return
   end
   i32.const 0
   return
  end
  i32.const 1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_csr (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i32) (param $6 i64) (result i32)
  (local $7 i32)
  local.get $3
  i32.const 20
  i32.shr_u
  local.tee $3
  i32.const 3
  i32.le_u
  i32.const 0
  local.get $3
  select
  local.get $3
  i32.const 3074
  i32.eq
  local.get $3
  i32.const 3072
  i32.eq
  i32.or
  if (result i64)
   i64.const 0
  else
   local.get $3
   i32.const 3073
   i32.ne
   if (result i64)
    local.get $3
    i32.const 1
    i32.eq
    if (result i64)
     local.get $0
     i32.const 10
     i32.shl
     i32.const 4136
     i32.add
     i32.load
     i32.const 31
     i32.and
     i64.extend_i32_u
    else
     local.get $3
     i32.const 2
     i32.eq
     if (result i64)
      local.get $0
      i32.const 10
      i32.shl
      i32.const 4136
      i32.add
      i32.load
      i32.const 5
      i32.shr_u
      i32.const 7
      i32.and
      i64.extend_i32_u
     else
      local.get $3
      i32.const 3
      i32.eq
      if (result i64)
       local.get $0
       i32.const 10
       i32.shl
       i32.const 4136
       i32.add
       i32.load
       i32.const 255
       i32.and
       i64.extend_i32_u
      else
       i32.const 0
       return
      end
     end
    end
   else
    local.get $6
   end
  end
  local.set $6
  local.get $2
  i32.const 2
  i32.ne
  local.get $2
  i32.const 1
  i32.ne
  i32.and
  local.get $2
  i32.const 3
  i32.ne
  i32.and
  local.get $2
  i32.const 5
  i32.ne
  i32.and
  local.get $2
  i32.const 6
  i32.ne
  i32.and
  local.get $2
  i32.const 7
  i32.ne
  i32.and
  if
   i32.const 0
   return
  end
  i32.const 1
  local.get $2
  i32.const 5
  i32.eq
  local.get $2
  i32.const 1
  i32.eq
  i32.or
  local.get $5
  i64.extend_i32_u
  local.get $4
  local.get $2
  i32.const 5
  i32.ge_u
  select
  local.tee $4
  i64.const 0
  i64.ne
  i32.or
  local.tee $5
  select
  i32.eqz
  if
   i32.const 0
   return
  end
  local.get $5
  if
   local.get $2
   i32.const 5
   i32.eq
   local.get $2
   i32.const 1
   i32.eq
   i32.or
   i32.eqz
   if
    local.get $4
    local.get $6
    i64.or
    local.get $6
    local.get $4
    i64.const -1
    i64.xor
    i64.and
    local.get $2
    i32.const 6
    i32.eq
    local.get $2
    i32.const 2
    i32.eq
    i32.or
    select
    local.set $4
   end
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4136
   i32.add
   local.tee $2
   i32.load
   local.set $5
   local.get $3
   i32.const 1
   i32.eq
   if
    local.get $2
    local.get $4
    i64.const 31
    i64.and
    i32.wrap_i64
    local.get $5
    i32.const -32
    i32.and
    i32.or
    i64.extend_i32_u
    i64.store32
   else
    local.get $3
    i32.const 2
    i32.eq
    if
     local.get $0
     i32.const 10
     i32.shl
     i32.const 4136
     i32.add
     local.get $5
     i32.const 31
     i32.and
     local.get $4
     i64.const 7
     i64.and
     i32.wrap_i64
     i32.const 5
     i32.shl
     i32.or
     i64.extend_i32_u
     i64.store32
    else
     local.get $0
     i32.const 10
     i32.shl
     i32.const 4136
     i32.add
     local.get $4
     i64.const 255
     i64.and
     i64.store32
    end
   end
  end
  local.get $1
  if
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4224
   i32.add
   local.get $1
   i32.const 3
   i32.shl
   i32.add
   local.get $6
   i64.store
  end
  i32.const 1
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_credentialSyscall (param $0 i32) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i32)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  local.get $2
  i32.const 143
  i32.eq
  if
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setReGid$7 (result i64)
    local.get $0
    i32.const 10
    i32.shl
    local.tee $0
    i32.const 4304
    i32.add
    i64.load
    local.set $6
    local.get $0
    i32.const 4312
    i32.add
    i64.load
    local.set $4
    local.get $1
    i64.load32_s offset=40
    i32.wrap_i64
    i64.extend_i32_u
    local.set $7
    i64.const -1
    local.get $6
    i64.const -1
    i64.eq
    local.get $6
    i64.const 4294967295
    i64.eq
    i32.or
    if (result i32)
     i32.const 1
    else
     local.get $6
     i64.const 4294967295
     i64.lt_u
     local.get $6
     i64.const 0
     i64.ge_s
     i32.and
     if (result i32)
      local.get $1
      i64.load32_s offset=28
      i32.wrap_i64
      i64.extend_i32_u
      i64.eqz
      if (result i32)
       i32.const 1
      else
       local.get $6
       local.get $1
       i64.load32_s offset=40
       i32.wrap_i64
       i64.extend_i32_u
       i64.eq
      end
      if (result i32)
       i32.const 1
      else
       local.get $6
       local.get $1
       i64.load32_s offset=44
       i32.wrap_i64
       i64.extend_i32_u
       i64.eq
      end
      if (result i32)
       i32.const 1
      else
       local.get $6
       local.get $1
       i64.load32_s offset=48
       i32.wrap_i64
       i64.extend_i32_u
       i64.eq
      end
     else
      i32.const 0
     end
    end
    if (result i32)
     local.get $4
     i64.const -1
     i64.eq
     local.get $4
     i64.const 4294967295
     i64.eq
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $4
      i64.const 4294967295
      i64.lt_u
      local.get $4
      i64.const 0
      i64.ge_s
      i32.and
      if (result i32)
       local.get $1
       i64.load32_s offset=28
       i32.wrap_i64
       i64.extend_i32_u
       i64.eqz
       if (result i32)
        i32.const 1
       else
        local.get $4
        local.get $1
        i64.load32_s offset=40
        i32.wrap_i64
        i64.extend_i32_u
        i64.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        local.get $1
        i64.load32_s offset=44
        i32.wrap_i64
        i64.extend_i32_u
        i64.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        local.get $1
        i64.load32_s offset=48
        i32.wrap_i64
        i64.extend_i32_u
        i64.eq
       end
      else
       i32.const 0
      end
     end
    else
     i32.const 0
    end
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setReGid$7
    drop
    local.get $7
    local.get $6
    local.get $6
    i64.const -1
    i64.eq
    local.get $6
    i64.const 4294967295
    i64.eq
    i32.or
    select
    local.set $8
    local.get $4
    i64.const -1
    i64.eq
    local.get $4
    i64.const 4294967295
    i64.eq
    i32.or
    if (result i64)
     local.get $1
     i64.load32_s offset=44
     i32.wrap_i64
     i64.extend_i32_u
    else
     local.get $4
    end
    local.set $3
    local.get $6
    i64.const -1
    i64.eq
    local.get $6
    i64.const 4294967295
    i64.eq
    i32.or
    if (result i32)
     i32.const 0
     local.get $4
     local.get $7
     i64.ne
     local.get $4
     i64.const -1
     i64.eq
     local.get $4
     i64.const 4294967295
     i64.eq
     i32.or
     select
    else
     i32.const 1
    end
    if (result i64)
     local.get $3
    else
     local.get $1
     i64.load32_s offset=48
     i32.wrap_i64
     i64.extend_i32_u
    end
    local.set $4
    local.get $1
    local.get $8
    i64.store32 offset=40
    local.get $1
    local.get $3
    i64.store32 offset=44
    local.get $1
    local.get $4
    i64.store32 offset=48
    local.get $1
    local.get $3
    i64.store32 offset=52
    i64.const 0
   end
   return
  end
  local.get $2
  i32.const 144
  i32.eq
  if
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGid$101 (result i64)
    i64.const -22
    local.get $0
    i32.const 10
    i32.shl
    i32.const 4304
    i32.add
    i64.load
    local.tee $3
    i64.const 4294967295
    i64.lt_u
    local.get $3
    i64.const 0
    i64.ge_s
    i32.and
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGid$101
    drop
    i64.const -1
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $1
     i64.load32_s offset=40
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $1
     i64.load32_s offset=44
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $1
     i64.load32_s offset=48
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGid$101
    drop
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if
     local.get $1
     local.get $3
     i64.store32 offset=40
     local.get $1
     local.get $3
     i64.store32 offset=48
    end
    local.get $1
    local.get $3
    i64.store32 offset=44
    local.get $1
    local.get $3
    i64.store32 offset=52
    i64.const 0
   end
   return
  end
  local.get $2
  i32.const 145
  i32.eq
  if
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setReUid$8 (result i64)
    local.get $0
    i32.const 10
    i32.shl
    local.tee $0
    i32.const 4304
    i32.add
    i64.load
    local.set $6
    local.get $0
    i32.const 4312
    i32.add
    i64.load
    local.set $4
    local.get $1
    i64.load32_s offset=24
    i32.wrap_i64
    i64.extend_i32_u
    local.set $7
    i64.const -1
    local.get $6
    i64.const -1
    i64.eq
    local.get $6
    i64.const 4294967295
    i64.eq
    i32.or
    if (result i32)
     i32.const 1
    else
     local.get $6
     i64.const 4294967295
     i64.lt_u
     local.get $6
     i64.const 0
     i64.ge_s
     i32.and
     if (result i32)
      local.get $1
      i64.load32_s offset=28
      i32.wrap_i64
      i64.extend_i32_u
      i64.eqz
      if (result i32)
       i32.const 1
      else
       local.get $6
       local.get $1
       i64.load32_s offset=24
       i32.wrap_i64
       i64.extend_i32_u
       i64.eq
      end
      if (result i32)
       i32.const 1
      else
       local.get $6
       local.get $1
       i64.load32_s offset=28
       i32.wrap_i64
       i64.extend_i32_u
       i64.eq
      end
      if (result i32)
       i32.const 1
      else
       local.get $6
       local.get $1
       i64.load32_s offset=32
       i32.wrap_i64
       i64.extend_i32_u
       i64.eq
      end
     else
      i32.const 0
     end
    end
    if (result i32)
     local.get $4
     i64.const -1
     i64.eq
     local.get $4
     i64.const 4294967295
     i64.eq
     i32.or
     if (result i32)
      i32.const 1
     else
      local.get $4
      i64.const 4294967295
      i64.lt_u
      local.get $4
      i64.const 0
      i64.ge_s
      i32.and
      if (result i32)
       local.get $1
       i64.load32_s offset=28
       i32.wrap_i64
       i64.extend_i32_u
       i64.eqz
       if (result i32)
        i32.const 1
       else
        local.get $4
        local.get $1
        i64.load32_s offset=24
        i32.wrap_i64
        i64.extend_i32_u
        i64.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        local.get $1
        i64.load32_s offset=28
        i32.wrap_i64
        i64.extend_i32_u
        i64.eq
       end
       if (result i32)
        i32.const 1
       else
        local.get $4
        local.get $1
        i64.load32_s offset=32
        i32.wrap_i64
        i64.extend_i32_u
        i64.eq
       end
      else
       i32.const 0
      end
     end
    else
     i32.const 0
    end
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setReUid$8
    drop
    local.get $7
    local.get $6
    local.get $6
    i64.const -1
    i64.eq
    local.get $6
    i64.const 4294967295
    i64.eq
    i32.or
    select
    local.set $8
    local.get $4
    i64.const -1
    i64.eq
    local.get $4
    i64.const 4294967295
    i64.eq
    i32.or
    if (result i64)
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
    else
     local.get $4
    end
    local.set $3
    local.get $6
    i64.const -1
    i64.eq
    local.get $6
    i64.const 4294967295
    i64.eq
    i32.or
    if (result i32)
     i32.const 0
     local.get $4
     local.get $7
     i64.ne
     local.get $4
     i64.const -1
     i64.eq
     local.get $4
     i64.const 4294967295
     i64.eq
     i32.or
     select
    else
     i32.const 1
    end
    if (result i64)
     local.get $3
    else
     local.get $1
     i64.load32_s offset=32
     i32.wrap_i64
     i64.extend_i32_u
    end
    local.set $4
    local.get $1
    local.get $8
    i64.store32 offset=24
    local.get $1
    local.get $3
    i64.store32 offset=28
    local.get $1
    local.get $4
    i64.store32 offset=32
    local.get $1
    local.get $3
    i64.store32 offset=36
    i64.const 0
   end
   return
  end
  local.get $2
  i32.const 146
  i32.eq
  if
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setUid$102 (result i64)
    i64.const -22
    local.get $0
    i32.const 10
    i32.shl
    i32.const 4304
    i32.add
    i64.load
    local.tee $3
    i64.const 4294967295
    i64.lt_u
    local.get $3
    i64.const 0
    i64.ge_s
    i32.and
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setUid$102
    drop
    i64.const -1
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $1
     i64.load32_s offset=24
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $3
     local.get $1
     i64.load32_s offset=32
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setUid$102
    drop
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if
     local.get $1
     local.get $3
     i64.store32 offset=24
     local.get $1
     local.get $3
     i64.store32 offset=32
    end
    local.get $1
    local.get $3
    i64.store32 offset=28
    local.get $1
    local.get $3
    i64.store32 offset=36
    i64.const 0
   end
   return
  end
  local.get $2
  i32.const 147
  i32.eq
  if
   local.get $0
   local.get $1
   call $build/teto-generated/teto/__bq_248d3b0e_setResUid
   return
  end
  local.get $2
  i32.const 148
  i32.eq
  if
   local.get $0
   local.get $1
   i32.const 0
   call $build/teto-generated/teto/__bq_248d3b0e_getResId
   return
  end
  local.get $2
  i32.const 149
  i32.eq
  if
   local.get $0
   local.get $1
   call $build/teto-generated/teto/__bq_248d3b0e_setResGid
   return
  end
  local.get $2
  i32.const 150
  i32.eq
  if
   local.get $0
   local.get $1
   i32.const 1
   call $build/teto-generated/teto/__bq_248d3b0e_getResId
   return
  end
  local.get $2
  i32.const 151
  i32.eq
  local.tee $9
  local.get $2
  i32.const 152
  i32.eq
  i32.or
  if
   i32.const 36
   i32.const 52
   local.get $9
   select
   local.tee $5
   local.get $1
   i32.add
   i64.load32_s
   i32.wrap_i64
   i64.extend_i32_u
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4304
   i32.add
   i64.load
   local.tee $4
   i64.const 4294967295
   i64.lt_u
   local.get $4
   i64.const 0
   i64.ge_s
   i32.and
   i32.eqz
   if
    i64.const -22
    return
   end
   local.get $2
   i32.const 151
   i32.eq
   if (result i32)
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if (result i32)
     i32.const 1
    else
     local.get $4
     local.get $1
     i64.load32_s offset=24
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $4
     local.get $1
     i64.load32_s offset=28
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $4
     local.get $1
     i64.load32_s offset=32
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
   else
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.eqz
    if (result i32)
     i32.const 1
    else
     local.get $4
     local.get $1
     i64.load32_s offset=40
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $4
     local.get $1
     i64.load32_s offset=44
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
    if (result i32)
     i32.const 1
    else
     local.get $4
     local.get $1
     i64.load32_s offset=48
     i32.wrap_i64
     i64.extend_i32_u
     i64.eq
    end
   end
   if
    local.get $1
    local.get $5
    i32.add
    local.get $4
    i64.store32
   end
   return
  end
  local.get $2
  i32.const 158
  i32.eq
  if
   i64.const -22
   local.set $3
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_getGroups$655
    local.get $0
    i32.const 10
    i32.shl
    local.tee $2
    i32.const 4304
    i32.add
    i64.load
    local.tee $4
    i64.const 65536
    i64.gt_u
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_getGroups$655
    local.get $1
    i64.load32_s offset=56
    i32.wrap_i64
    local.tee $9
    i64.extend_i32_u
    local.tee $6
    local.set $3
    local.get $4
    i64.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_getGroups$655
    i64.const -22
    local.set $3
    local.get $4
    local.get $6
    i64.lt_u
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_getGroups$655
    i64.const -14
    local.set $3
    local.get $2
    i32.const 4312
    i32.add
    i64.load
    local.tee $4
    i64.eqz
    if (result i32)
     i32.const 0
    else
     local.get $0
     local.get $4
     local.get $9
     i32.const 2
     i32.shl
     i32.const 2
     call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
    end
    if (result i32)
     local.get $0
     local.get $4
     local.get $9
     i32.const 2
     i32.shl
     call $build/teto-generated/teto/__bq_248d3b0e_guestWritable
    else
     i32.const 0
    end
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_getGroups$655
    loop $while-continue|0
     local.get $5
     local.get $9
     i32.lt_u
     if
      i64.const -12
      local.set $3
      local.get $0
      local.get $4
      local.get $5
      i32.const 2
      i32.shl
      local.tee $2
      i64.extend_i32_u
      i64.add
      local.get $2
      i32.const -64
      i32.sub
      local.get $1
      i32.add
      i64.load32_s
      i32.wrap_i64
      i64.extend_i32_u
      i32.const 4
      call $build/teto-generated/teto/__bq_248d3b0e_guestStoreU64
      i32.eqz
      br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_getGroups$655
      local.get $5
      i32.const 1
      i32.add
      local.set $5
      br $while-continue|0
     end
    end
    local.get $9
    i64.extend_i32_u
    local.set $3
   end
   local.get $3
   return
  end
  local.get $2
  i32.const 159
  i32.eq
  if
   block $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGroups$69 (result i64)
    i32.const 0
    local.set $2
    i64.const -1
    local.get $1
    i64.load32_s offset=28
    i32.wrap_i64
    i64.extend_i32_u
    i64.const 0
    i64.ne
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGroups$69
    drop
    i64.const -22
    local.get $0
    i32.const 10
    i32.shl
    local.tee $5
    i32.const 4304
    i32.add
    i64.load
    local.tee $3
    i64.const 32
    i64.gt_u
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGroups$69
    drop
    local.get $5
    i32.const 4312
    i32.add
    i64.load
    local.set $4
    i64.const -14
    local.get $3
    i32.wrap_i64
    local.tee $5
    if (result i32)
     local.get $4
     i64.eqz
     if (result i32)
      i32.const 0
     else
      local.get $0
      local.get $4
      local.get $5
      i32.const 2
      i32.shl
      i32.const 1
      call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
     end
    else
     i32.const 1
    end
    i32.eqz
    br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGroups$69
    drop
    loop $while-continue|00
     local.get $2
     local.get $5
     i32.lt_u
     if
      i64.const -22
      local.get $0
      local.get $4
      local.get $2
      i32.const 2
      i32.shl
      i64.extend_i32_u
      i64.add
      i32.const 4
      call $build/teto-generated/teto/__bq_248d3b0e_guestLoadU64
      i64.const 4294967295
      i64.ge_u
      br_if $__inlined_func$build/teto-generated/teto/__bq_248d3b0e_setGroups$69
      drop
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|00
     end
    end
    i32.const 0
    local.set $2
    loop $while-continue|1
     local.get $2
     local.get $5
     i32.lt_u
     if
      local.get $2
      i32.const 2
      i32.shl
      local.tee $9
      i32.const -64
      i32.sub
      local.get $1
      i32.add
      local.get $0
      local.get $4
      local.get $9
      i64.extend_i32_u
      i64.add
      i32.const 4
      call $build/teto-generated/teto/__bq_248d3b0e_guestLoadU64
      i64.store32
      local.get $2
      i32.const 1
      i32.add
      local.set $2
      br $while-continue|1
     end
    end
    local.get $1
    local.get $5
    i32.store offset=56
    i64.const 0
   end
   return
  end
  i64.const -38
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_compressedStep (param $0 i32) (param $1 i32) (param $2 i64) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  (local $10 i32)
  local.get $1
  i32.const 13
  i32.shr_u
  local.set $6
  local.get $1
  i32.const 7
  i32.shr_u
  local.tee $7
  i32.const 31
  i32.and
  local.set $3
  local.get $1
  i32.const 2
  i32.shr_u
  local.tee $5
  i32.const 31
  i32.and
  local.set $4
  local.get $7
  i32.const 7
  i32.and
  i32.const 8
  i32.add
  local.set $8
  local.get $5
  i32.const 7
  i32.and
  i32.const 8
  i32.add
  local.set $5
  local.get $7
  i32.const 32
  i32.and
  local.get $4
  i32.or
  i64.extend_i32_u
  i64.const 58
  i64.shl
  i64.const 58
  i64.shr_s
  local.set $9
  block $folding-inner2
   block $folding-inner1
    block $folding-inner0
     local.get $1
     i32.const 3
     i32.and
     local.tee $10
     i32.eqz
     if
      local.get $6
      if
       local.get $6
       i32.const 1
       i32.eq
       if
        local.get $0
        local.get $5
        i32.const 3
        local.get $8
        if (result i64)
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4224
         i32.add
         local.get $8
         i32.const 3
         i32.shl
         i32.add
         i64.load
        else
         i64.const 0
        end
        local.get $1
        i32.const 1
        i32.shl
        i32.const 192
        i32.and
        local.get $7
        i32.const 56
        i32.and
        i32.or
        i64.extend_i32_u
        i64.add
        call $build/teto-generated/teto/__bq_248d3b0e_loadFloating
        i32.eqz
        br_if $folding-inner0
       else
        local.get $6
        i32.const 2
        i32.eq
        if
         local.get $0
         local.get $5
         i32.const 2
         local.get $8
         if (result i64)
          local.get $0
          i32.const 10
          i32.shl
          i32.const 4224
          i32.add
          local.get $8
          i32.const 3
          i32.shl
          i32.add
          i64.load
         else
          i64.const 0
         end
         local.get $1
         i32.const 4
         i32.shr_u
         i32.const 4
         i32.and
         local.get $1
         i32.const 1
         i32.shl
         i32.const 64
         i32.and
         local.get $1
         i32.const 7
         i32.shr_u
         i32.const 56
         i32.and
         i32.or
         i32.or
         i64.extend_i32_u
         i64.add
         call $build/teto-generated/teto/__bq_248d3b0e_loadInteger
         i32.eqz
         br_if $folding-inner0
        else
         local.get $6
         i32.const 3
         i32.eq
         if
          local.get $0
          local.get $5
          i32.const 3
          local.get $8
          if (result i64)
           local.get $0
           i32.const 10
           i32.shl
           i32.const 4224
           i32.add
           local.get $8
           i32.const 3
           i32.shl
           i32.add
           i64.load
          else
           i64.const 0
          end
          local.get $1
          i32.const 1
          i32.shl
          i32.const 192
          i32.and
          local.get $1
          i32.const 7
          i32.shr_u
          i32.const 56
          i32.and
          i32.or
          i64.extend_i32_u
          i64.add
          call $build/teto-generated/teto/__bq_248d3b0e_loadInteger
          i32.eqz
          br_if $folding-inner0
         else
          local.get $6
          i32.const 5
          i32.eq
          if
           local.get $0
           local.get $5
           i32.const 3
           local.get $8
           if (result i64)
            local.get $0
            i32.const 10
            i32.shl
            i32.const 4224
            i32.add
            local.get $8
            i32.const 3
            i32.shl
            i32.add
            i64.load
           else
            i64.const 0
           end
           local.get $1
           i32.const 1
           i32.shl
           i32.const 192
           i32.and
           local.get $1
           i32.const 7
           i32.shr_u
           i32.const 56
           i32.and
           i32.or
           i64.extend_i32_u
           i64.add
           call $build/teto-generated/teto/__bq_248d3b0e_storeFloating
           i32.eqz
           br_if $folding-inner0
          else
           local.get $6
           i32.const 6
           i32.eq
           if
            local.get $0
            i32.const 2
            local.get $8
            if (result i64)
             local.get $0
             i32.const 10
             i32.shl
             i32.const 4224
             i32.add
             local.get $8
             i32.const 3
             i32.shl
             i32.add
             i64.load
            else
             i64.const 0
            end
            local.get $1
            i32.const 4
            i32.shr_u
            i32.const 4
            i32.and
            local.get $1
            i32.const 1
            i32.shl
            i32.const 64
            i32.and
            local.get $1
            i32.const 7
            i32.shr_u
            i32.const 56
            i32.and
            i32.or
            i32.or
            i64.extend_i32_u
            i64.add
            local.get $5
            if (result i64)
             local.get $0
             i32.const 10
             i32.shl
             i32.const 4224
             i32.add
             local.get $5
             i32.const 3
             i32.shl
             i32.add
             i64.load
            else
             i64.const 0
            end
            call $build/teto-generated/teto/__bq_248d3b0e_storeInteger
            i32.eqz
            br_if $folding-inner0
           else
            local.get $6
            i32.const 7
            i32.eq
            if
             local.get $0
             i32.const 3
             local.get $8
             if (result i64)
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $8
              i32.const 3
              i32.shl
              i32.add
              i64.load
             else
              i64.const 0
             end
             local.get $1
             i32.const 1
             i32.shl
             i32.const 192
             i32.and
             local.get $1
             i32.const 7
             i32.shr_u
             i32.const 56
             i32.and
             i32.or
             i64.extend_i32_u
             i64.add
             local.get $5
             if (result i64)
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $5
              i32.const 3
              i32.shl
              i32.add
              i64.load
             else
              i64.const 0
             end
             call $build/teto-generated/teto/__bq_248d3b0e_storeInteger
             i32.eqz
             br_if $folding-inner0
            else
             br $folding-inner1
            end
           end
          end
         end
        end
       end
      else
       local.get $1
       i32.const 4
       i32.shr_u
       i32.const 4
       i32.and
       local.get $1
       i32.const 2
       i32.shr_u
       i32.const 8
       i32.and
       local.get $1
       i32.const 1
       i32.shr_u
       i32.const 960
       i32.and
       local.get $1
       i32.const 7
       i32.shr_u
       i32.const 48
       i32.and
       i32.or
       i32.or
       i32.or
       local.tee $3
       i32.eqz
       br_if $folding-inner1
       local.get $0
       i32.const 10
       i32.shl
       local.tee $0
       i32.const 4240
       i32.add
       i64.load
       local.get $3
       i64.extend_i32_u
       i64.add
       local.set $2
       local.get $5
       if
        local.get $0
        i32.const 4224
        i32.add
        local.get $5
        i32.const 3
        i32.shl
        i32.add
        local.get $2
        i64.store
       end
      end
      i32.const 0
      return
     end
     local.get $10
     i32.const 1
     i32.eq
     if
      local.get $6
      if
       local.get $6
       i32.const 1
       i32.eq
       if
        local.get $3
        i32.eqz
        br_if $folding-inner1
        local.get $3
        if (result i64)
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4224
         i32.add
         local.get $3
         i32.const 3
         i32.shl
         i32.add
         i64.load
        else
         i64.const 0
        end
        local.get $9
        i64.add
        i64.extend32_s
        local.set $2
        local.get $3
        if
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4224
         i32.add
         local.get $3
         i32.const 3
         i32.shl
         i32.add
         local.get $2
         i64.store
        end
       else
        local.get $6
        i32.const 2
        i32.eq
        if
         local.get $3
         if
          local.get $0
          i32.const 10
          i32.shl
          i32.const 4224
          i32.add
          local.get $3
          i32.const 3
          i32.shl
          i32.add
          local.get $9
          i64.store
         end
        else
         local.get $6
         i32.const 3
         i32.eq
         if
          local.get $3
          i32.const 2
          i32.eq
          if
           local.get $1
           i32.const 3
           i32.shl
           i32.const 32
           i32.and
           local.get $1
           i32.const 4
           i32.shl
           i32.const 384
           i32.and
           local.get $1
           i32.const 1
           i32.shl
           i32.const 64
           i32.and
           local.get $1
           i32.const 3
           i32.shr_u
           i32.const 512
           i32.and
           local.get $1
           i32.const 2
           i32.shr_u
           i32.const 16
           i32.and
           i32.or
           i32.or
           i32.or
           i32.or
           i64.extend_i32_u
           i64.const 54
           i64.shl
           i64.const 54
           i64.shr_s
           local.tee $2
           i64.eqz
           br_if $folding-inner1
           local.get $0
           i32.const 10
           i32.shl
           i32.const 4240
           i32.add
           local.tee $0
           i64.load
           local.set $9
           local.get $0
           local.get $2
           local.get $9
           i64.add
           i64.store
          else
           local.get $3
           i32.eqz
           local.get $1
           i32.const 5
           i32.shl
           i32.const 131072
           i32.and
           local.get $1
           i32.const 10
           i32.shl
           i32.const 126976
           i32.and
           i32.or
           i64.extend_i32_u
           i64.const 46
           i64.shl
           i64.const 46
           i64.shr_s
           local.tee $2
           i64.eqz
           i32.or
           br_if $folding-inner1
           local.get $3
           if
            local.get $0
            i32.const 10
            i32.shl
            i32.const 4224
            i32.add
            local.get $3
            i32.const 3
            i32.shl
            i32.add
            local.get $2
            i64.store
           end
          end
         else
          local.get $6
          i32.const 4
          i32.eq
          if
           local.get $1
           i32.const 7
           i32.shr_u
           i32.const 32
           i32.and
           local.get $1
           i32.const 2
           i32.shr_u
           i32.const 31
           i32.and
           i32.or
           i64.extend_i32_u
           local.set $2
           local.get $1
           i32.const 10
           i32.shr_u
           i32.const 3
           i32.and
           local.tee $3
           if
            local.get $3
            i32.const 1
            i32.eq
            if
             local.get $8
             if (result i64)
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $8
              i32.const 3
              i32.shl
              i32.add
              i64.load
             else
              i64.const 0
             end
             local.get $2
             i64.shr_s
             local.set $2
             local.get $8
             if
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $8
              i32.const 3
              i32.shl
              i32.add
              local.get $2
              i64.store
             end
            else
             local.get $3
             i32.const 2
             i32.eq
             if
              local.get $8
              if (result i64)
               local.get $0
               i32.const 10
               i32.shl
               i32.const 4224
               i32.add
               local.get $8
               i32.const 3
               i32.shl
               i32.add
               i64.load
              else
               i64.const 0
              end
              local.get $9
              i64.and
              local.set $2
              local.get $8
              if
               local.get $0
               i32.const 10
               i32.shl
               i32.const 4224
               i32.add
               local.get $8
               i32.const 3
               i32.shl
               i32.add
               local.get $2
               i64.store
              end
             else
              local.get $1
              i32.const 12
              i32.shr_u
              i32.const 1
              i32.and
              local.set $3
              local.get $1
              i32.const 5
              i32.shr_u
              i32.const 3
              i32.and
              local.set $4
              local.get $8
              if (result i64)
               local.get $0
               i32.const 10
               i32.shl
               i32.const 4224
               i32.add
               local.get $8
               i32.const 3
               i32.shl
               i32.add
               i64.load
              else
               i64.const 0
              end
              local.set $2
              local.get $5
              if (result i64)
               local.get $0
               i32.const 10
               i32.shl
               i32.const 4224
               i32.add
               local.get $5
               i32.const 3
               i32.shl
               i32.add
               i64.load
              else
               i64.const 0
              end
              local.set $9
              local.get $3
              local.get $4
              i32.or
              if
               local.get $3
               i32.eqz
               local.get $4
               i32.const 1
               i32.eq
               i32.and
               if
                local.get $8
                if
                 local.get $0
                 i32.const 10
                 i32.shl
                 i32.const 4224
                 i32.add
                 local.get $8
                 i32.const 3
                 i32.shl
                 i32.add
                 local.get $2
                 local.get $9
                 i64.xor
                 i64.store
                end
               else
                local.get $3
                i32.eqz
                local.get $4
                i32.const 2
                i32.eq
                i32.and
                if
                 local.get $8
                 if
                  local.get $0
                  i32.const 10
                  i32.shl
                  i32.const 4224
                  i32.add
                  local.get $8
                  i32.const 3
                  i32.shl
                  i32.add
                  local.get $2
                  local.get $9
                  i64.or
                  i64.store
                 end
                else
                 local.get $3
                 i32.eqz
                 local.get $4
                 i32.const 3
                 i32.eq
                 i32.and
                 if
                  local.get $8
                  if
                   local.get $0
                   i32.const 10
                   i32.shl
                   i32.const 4224
                   i32.add
                   local.get $8
                   i32.const 3
                   i32.shl
                   i32.add
                   local.get $2
                   local.get $9
                   i64.and
                   i64.store
                  end
                 else
                  local.get $4
                  i32.eqz
                  local.get $3
                  i32.and
                  if
                   local.get $8
                   if
                    local.get $0
                    i32.const 10
                    i32.shl
                    i32.const 4224
                    i32.add
                    local.get $8
                    i32.const 3
                    i32.shl
                    i32.add
                    local.get $2
                    local.get $9
                    i64.sub
                    i64.extend32_s
                    i64.store
                   end
                  else
                   local.get $4
                   i32.const 1
                   i32.eq
                   local.get $3
                   i32.and
                   if
                    local.get $8
                    if
                     local.get $0
                     i32.const 10
                     i32.shl
                     i32.const 4224
                     i32.add
                     local.get $8
                     i32.const 3
                     i32.shl
                     i32.add
                     local.get $2
                     local.get $9
                     i64.add
                     i64.extend32_s
                     i64.store
                    end
                   else
                    br $folding-inner1
                   end
                  end
                 end
                end
               end
              else
               local.get $8
               if
                local.get $0
                i32.const 10
                i32.shl
                i32.const 4224
                i32.add
                local.get $8
                i32.const 3
                i32.shl
                i32.add
                local.get $2
                local.get $9
                i64.sub
                i64.store
               end
              end
             end
            end
           else
            local.get $8
            if (result i64)
             local.get $0
             i32.const 10
             i32.shl
             i32.const 4224
             i32.add
             local.get $8
             i32.const 3
             i32.shl
             i32.add
             i64.load
            else
             i64.const 0
            end
            local.get $2
            i64.shr_u
            local.set $2
            local.get $8
            if
             local.get $0
             i32.const 10
             i32.shl
             i32.const 4224
             i32.add
             local.get $8
             i32.const 3
             i32.shl
             i32.add
             local.get $2
             i64.store
            end
           end
          else
           local.get $6
           i32.const 5
           i32.eq
           if
            local.get $0
            i32.const 10
            i32.shl
            i32.const 4120
            i32.add
            local.get $2
            local.get $1
            i32.const 2
            i32.shr_u
            i32.const 14
            i32.and
            local.get $1
            i32.const 7
            i32.shr_u
            i32.const 16
            i32.and
            local.get $1
            i32.const 3
            i32.shl
            i32.const 32
            i32.and
            local.get $1
            i32.const 1
            i32.shr_u
            local.tee $0
            i32.const 64
            i32.and
            local.get $1
            i32.const 1
            i32.shl
            i32.const 128
            i32.and
            local.get $0
            i32.const 768
            i32.and
            local.get $0
            i32.const 2048
            i32.and
            local.get $1
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
            i64.extend_i32_s
            i64.add
            i64.store
           else
            local.get $6
            i32.const 6
            i32.eq
            local.tee $3
            local.get $6
            i32.const 7
            i32.eq
            i32.or
            i32.eqz
            br_if $folding-inner1
            local.get $3
            if (result i32)
             local.get $8
             if (result i64)
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $8
              i32.const 3
              i32.shl
              i32.add
              i64.load
             else
              i64.const 0
             end
             i64.eqz
            else
             local.get $8
             if (result i64)
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $8
              i32.const 3
              i32.shl
              i32.add
              i64.load
             else
              i64.const 0
             end
             i64.const 0
             i64.ne
            end
            if
             local.get $0
             i32.const 10
             i32.shl
             i32.const 4120
             i32.add
             local.get $2
             local.get $1
             i32.const 2
             i32.shr_u
             i32.const 6
             i32.and
             local.get $1
             i32.const 7
             i32.shr_u
             i32.const 24
             i32.and
             local.get $1
             i32.const 3
             i32.shl
             i32.const 32
             i32.and
             local.get $1
             i32.const 4
             i32.shr_u
             i32.const 256
             i32.and
             local.get $1
             i32.const 1
             i32.shl
             i32.const 192
             i32.and
             i32.or
             i32.or
             i32.or
             i32.or
             i64.extend_i32_u
             i64.const 55
             i64.shl
             i64.const 55
             i64.shr_s
             i64.add
             i64.store
            end
           end
          end
         end
        end
       end
      else
       local.get $3
       if (result i64)
        local.get $0
        i32.const 10
        i32.shl
        i32.const 4224
        i32.add
        local.get $3
        i32.const 3
        i32.shl
        i32.add
        i64.load
       else
        i64.const 0
       end
       local.get $9
       i64.add
       local.set $2
       local.get $3
       if
        local.get $0
        i32.const 10
        i32.shl
        i32.const 4224
        i32.add
        local.get $3
        i32.const 3
        i32.shl
        i32.add
        local.get $2
        i64.store
       end
      end
      i32.const 0
      return
     end
     local.get $10
     i32.const 2
     i32.eq
     if
      local.get $6
      if
       local.get $6
       i32.const 1
       i32.eq
       if
        local.get $1
        i32.const 2
        i32.shr_u
        i32.const 24
        i32.and
        local.get $1
        i32.const 4
        i32.shl
        i32.const 448
        i32.and
        local.get $1
        i32.const 7
        i32.shr_u
        i32.const 32
        i32.and
        i32.or
        i32.or
        local.set $4
        local.get $3
        if (result i32)
         local.get $0
         local.get $3
         i32.const 3
         local.get $0
         i32.const 10
         i32.shl
         i32.const 4240
         i32.add
         i64.load
         local.get $4
         i64.extend_i32_u
         i64.add
         call $build/teto-generated/teto/__bq_248d3b0e_loadFloating
        else
         i32.const 0
        end
        i32.eqz
        br_if $folding-inner0
       else
        local.get $6
        i32.const 2
        i32.eq
        if
         local.get $1
         i32.const 2
         i32.shr_u
         i32.const 28
         i32.and
         local.get $1
         i32.const 4
         i32.shl
         i32.const 192
         i32.and
         local.get $1
         i32.const 7
         i32.shr_u
         i32.const 32
         i32.and
         i32.or
         i32.or
         local.set $4
         local.get $3
         if (result i32)
          local.get $0
          local.get $3
          i32.const 2
          local.get $0
          i32.const 10
          i32.shl
          i32.const 4240
          i32.add
          i64.load
          local.get $4
          i64.extend_i32_u
          i64.add
          call $build/teto-generated/teto/__bq_248d3b0e_loadInteger
         else
          i32.const 0
         end
         i32.eqz
         br_if $folding-inner0
        else
         local.get $6
         i32.const 3
         i32.eq
         if
          local.get $1
          i32.const 2
          i32.shr_u
          i32.const 24
          i32.and
          local.get $1
          i32.const 4
          i32.shl
          i32.const 448
          i32.and
          local.get $1
          i32.const 7
          i32.shr_u
          i32.const 32
          i32.and
          i32.or
          i32.or
          local.set $4
          local.get $3
          if (result i32)
           local.get $0
           local.get $3
           i32.const 3
           local.get $0
           i32.const 10
           i32.shl
           i32.const 4240
           i32.add
           i64.load
           local.get $4
           i64.extend_i32_u
           i64.add
           call $build/teto-generated/teto/__bq_248d3b0e_loadInteger
          else
           i32.const 0
          end
          i32.eqz
          br_if $folding-inner0
         else
          local.get $6
          i32.const 4
          i32.eq
          if
           local.get $4
           local.get $1
           i32.const 12
           i32.shr_u
           i32.const 1
           i32.and
           local.tee $5
           i32.or
           if
            local.get $5
            if
             local.get $3
             local.get $4
             i32.or
             if
              local.get $4
              if
               local.get $3
               i32.eqz
               br_if $folding-inner1
               local.get $3
               if (result i64)
                local.get $0
                i32.const 10
                i32.shl
                i32.const 4224
                i32.add
                local.get $3
                i32.const 3
                i32.shl
                i32.add
                i64.load
               else
                i64.const 0
               end
               local.set $2
               local.get $4
               if (result i64)
                local.get $0
                i32.const 10
                i32.shl
                i32.const 4224
                i32.add
                local.get $4
                i32.const 3
                i32.shl
                i32.add
                i64.load
               else
                i64.const 0
               end
               local.get $2
               i64.add
               local.set $2
               local.get $3
               if
                local.get $0
                i32.const 10
                i32.shl
                i32.const 4224
                i32.add
                local.get $3
                i32.const 3
                i32.shl
                i32.add
                local.get $2
                i64.store
               end
              else
               local.get $3
               if (result i64)
                local.get $0
                i32.const 10
                i32.shl
                i32.const 4224
                i32.add
                local.get $3
                i32.const 3
                i32.shl
                i32.add
                i64.load
               else
                i64.const 0
               end
               local.set $9
               local.get $0
               i32.const 10
               i32.shl
               local.tee $0
               i32.const 4232
               i32.add
               local.get $2
               i64.const 2
               i64.add
               i64.store
               local.get $0
               i32.const 4120
               i32.add
               local.get $9
               i64.store
              end
             else
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4096
              i32.add
              local.tee $0
              i32.const 3
              i32.store offset=12
              br $folding-inner2
             end
            else
             local.get $3
             i32.eqz
             br_if $folding-inner1
             local.get $4
             if (result i64)
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $4
              i32.const 3
              i32.shl
              i32.add
              i64.load
             else
              i64.const 0
             end
             local.set $2
             local.get $3
             if
              local.get $0
              i32.const 10
              i32.shl
              i32.const 4224
              i32.add
              local.get $3
              i32.const 3
              i32.shl
              i32.add
              local.get $2
              i64.store
             end
            end
           else
            local.get $3
            i32.eqz
            br_if $folding-inner1
            local.get $0
            i32.const 10
            i32.shl
            local.tee $0
            i32.const 4120
            i32.add
            local.get $3
            if (result i64)
             local.get $0
             i32.const 4224
             i32.add
             local.get $3
             i32.const 3
             i32.shl
             i32.add
             i64.load
            else
             i64.const 0
            end
            i64.store
           end
          else
           local.get $6
           i32.const 5
           i32.eq
           if
            local.get $0
            local.get $4
            i32.const 3
            local.get $0
            i32.const 10
            i32.shl
            i32.const 4240
            i32.add
            i64.load
            local.get $1
            i32.const 1
            i32.shr_u
            i32.const 448
            i32.and
            local.get $1
            i32.const 7
            i32.shr_u
            i32.const 56
            i32.and
            i32.or
            i64.extend_i32_u
            i64.add
            call $build/teto-generated/teto/__bq_248d3b0e_storeFloating
            i32.eqz
            br_if $folding-inner0
           else
            local.get $6
            i32.const 6
            i32.eq
            if
             local.get $0
             i32.const 2
             local.get $0
             i32.const 10
             i32.shl
             local.tee $3
             i32.const 4240
             i32.add
             i64.load
             local.get $1
             i32.const 1
             i32.shr_u
             i32.const 192
             i32.and
             local.get $1
             i32.const 7
             i32.shr_u
             i32.const 60
             i32.and
             i32.or
             i64.extend_i32_u
             i64.add
             local.get $4
             if (result i64)
              local.get $3
              i32.const 4224
              i32.add
              local.get $4
              i32.const 3
              i32.shl
              i32.add
              i64.load
             else
              i64.const 0
             end
             call $build/teto-generated/teto/__bq_248d3b0e_storeInteger
             i32.eqz
             br_if $folding-inner0
            else
             local.get $6
             i32.const 7
             i32.eq
             if
              local.get $0
              i32.const 3
              local.get $0
              i32.const 10
              i32.shl
              local.tee $3
              i32.const 4240
              i32.add
              i64.load
              local.get $1
              i32.const 1
              i32.shr_u
              i32.const 448
              i32.and
              local.get $1
              i32.const 7
              i32.shr_u
              i32.const 56
              i32.and
              i32.or
              i64.extend_i32_u
              i64.add
              local.get $4
              if (result i64)
               local.get $3
               i32.const 4224
               i32.add
               local.get $4
               i32.const 3
               i32.shl
               i32.add
               i64.load
              else
               i64.const 0
              end
              call $build/teto-generated/teto/__bq_248d3b0e_storeInteger
              i32.eqz
              br_if $folding-inner0
             else
              br $folding-inner1
             end
            end
           end
          end
         end
        end
       end
      else
       local.get $3
       i32.eqz
       br_if $folding-inner1
       local.get $1
       i32.const 7
       i32.shr_u
       i32.const 32
       i32.and
       local.get $1
       i32.const 2
       i32.shr_u
       i32.const 31
       i32.and
       i32.or
       i64.extend_i32_u
       local.set $2
       local.get $3
       if (result i64)
        local.get $0
        i32.const 10
        i32.shl
        i32.const 4224
        i32.add
        local.get $3
        i32.const 3
        i32.shl
        i32.add
        i64.load
       else
        i64.const 0
       end
       local.get $2
       i64.shl
       local.set $2
       local.get $3
       if
        local.get $0
        i32.const 10
        i32.shl
        i32.const 4224
        i32.add
        local.get $3
        i32.const 3
        i32.shl
        i32.add
        local.get $2
        i64.store
       end
      end
      i32.const 0
      return
     end
     local.get $0
     i32.const 10
     i32.shl
     i32.const 4096
     i32.add
     local.tee $0
     i32.const 2
     i32.store offset=12
     local.get $0
     local.get $1
     i64.extend_i32_u
     i64.store32 offset=44
     local.get $0
     i32.const 4
     i32.store offset=4
     i32.const 4
     return
    end
    local.get $0
    i32.const 10
    i32.shl
    i32.const 4096
    i32.add
    local.tee $0
    i32.const 1
    i32.store offset=12
    br $folding-inner2
   end
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4096
   i32.add
   local.tee $0
   i32.const 2
   i32.store offset=12
  end
  local.get $0
  local.get $1
  i64.extend_i32_u
  i64.store32 offset=44
  local.get $0
  i32.const 4
  i32.store offset=4
  i32.const 4
 )
 (func $build/teto-generated/teto/__bq_248d3b0e_atomicInstruction (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i64) (param $5 i64) (result i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i64)
  (local $9 i32)
  (local $10 i32)
  (local $11 i64)
  local.get $2
  i32.const 3
  i32.ne
  local.get $2
  i32.const 2
  i32.ne
  i32.and
  if
   i32.const 4
   return
  end
  local.get $0
  local.get $4
  i32.const 4
  i32.const 8
  local.get $2
  i32.const 2
  i32.eq
  select
  local.tee $9
  i32.const 1
  i32.const 3
  local.get $3
  i32.const 27
  i32.shr_u
  local.tee $6
  i32.const 2
  i32.eq
  select
  call $build/teto-generated/teto/__bq_248d3b0e_guestAllowed
  i32.eqz
  if
   i32.const 4
   return
  end
  local.get $0
  local.get $4
  local.get $9
  i32.const 1
  call $build/teto-generated/teto/__bq_248d3b0e_guestPointer
  local.tee $9
  i32.const -2
  i32.eq
  local.get $9
  i32.const -1
  i32.eq
  i32.or
  if
   i32.const 4
   return
  end
  i32.const 20
  i32.load
  local.tee $10
  i32.eqz
  if
   i32.const 20
   i32.const 1
   i32.store
  end
  local.get $10
  if
   i32.const 6
   return
  end
  local.get $0
  i32.const 10
  i32.shl
  i32.const 4096
  i32.add
  local.set $10
  local.get $2
  i32.const 2
  i32.eq
  if (result i64)
   local.get $9
   i64.load32_s
  else
   local.get $9
   i64.load
  end
  local.set $7
  local.get $6
  i32.const 2
  i32.eq
  if
   local.get $3
   i32.const 20
   i32.shr_u
   i32.const 31
   i32.and
   if
    i32.const 20
    i32.const 0
    i32.store
    i32.const 4
    return
   end
   local.get $10
   local.get $4
   i64.store offset=32
   local.get $1
   if
    local.get $0
    i32.const 10
    i32.shl
    i32.const 4224
    i32.add
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $7
    i64.store
   end
   i32.const 20
   i32.const 0
   i32.store
   i32.const 0
   return
  end
  local.get $6
  i32.const 3
  i32.eq
  if
   local.get $4
   local.get $10
   i64.load offset=32
   i64.eq
   local.set $3
   local.get $10
   i64.const -1
   i64.store offset=32
   local.get $3
   if
    local.get $2
    i32.const 2
    i32.eq
    if
     local.get $9
     local.get $5
     i64.store32
    else
     local.get $9
     local.get $5
     i64.store
    end
   end
   local.get $1
   if
    local.get $0
    i32.const 10
    i32.shl
    i32.const 4224
    i32.add
    local.get $1
    i32.const 3
    i32.shl
    i32.add
    local.get $3
    i32.eqz
    i64.extend_i32_u
    i64.store
   end
   i32.const 20
   i32.const 0
   i32.store
   i32.const 0
   return
  end
  local.get $7
  i64.extend32_s
  local.get $7
  local.get $2
  i32.const 2
  i32.eq
  local.tee $3
  select
  local.set $4
  local.get $5
  i64.extend32_s
  local.get $5
  local.get $3
  select
  local.set $11
  local.get $6
  if (result i64)
   local.get $7
   i32.wrap_i64
   i64.extend_i32_u
   local.get $7
   local.get $3
   select
   local.set $8
   local.get $5
   i32.wrap_i64
   i64.extend_i32_u
   local.get $5
   local.get $3
   select
   local.set $5
   local.get $6
   i32.const 1
   i32.ne
   if (result i64)
    local.get $6
    i32.const 4
    i32.eq
    if (result i64)
     local.get $4
     local.get $11
     i64.xor
    else
     local.get $6
     i32.const 8
     i32.eq
     if (result i64)
      local.get $4
      local.get $11
      i64.or
     else
      local.get $6
      i32.const 12
      i32.eq
      if (result i64)
       local.get $4
       local.get $11
       i64.and
      else
       local.get $6
       i32.const 16
       i32.eq
       if (result i64)
        local.get $4
        local.get $11
        local.get $4
        local.get $11
        i64.lt_s
        select
       else
        local.get $6
        i32.const 20
        i32.eq
        if (result i64)
         local.get $4
         local.get $11
         local.get $4
         local.get $11
         i64.gt_s
         select
        else
         local.get $6
         i32.const 24
         i32.eq
         if (result i64)
          local.get $8
          local.get $5
          local.get $5
          local.get $8
          i64.gt_u
          select
         else
          local.get $6
          i32.const 28
          i32.eq
          if (result i64)
           local.get $8
           local.get $5
           local.get $5
           local.get $8
           i64.lt_u
           select
          else
           i32.const 20
           i32.const 0
           i32.store
           i32.const 4
           return
          end
         end
        end
       end
      end
     end
    end
   else
    local.get $11
   end
  else
   local.get $4
   local.get $11
   i64.add
  end
  local.set $4
  local.get $2
  i32.const 2
  i32.eq
  if
   local.get $9
   local.get $4
   i64.store32
  else
   local.get $9
   local.get $4
   i64.store
  end
  local.get $10
  i64.const -1
  i64.store offset=32
  local.get $1
  if
   local.get $0
   i32.const 10
   i32.shl
   i32.const 4224
   i32.add
   local.get $1
   i32.const 3
   i32.shl
   i32.add
   local.get $7
   i64.store
  end
  i32.const 20
  i32.const 0
  i32.store
  i32.const 0
 )
