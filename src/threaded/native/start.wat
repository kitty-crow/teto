
 (func $build/teto-generated/teto-threads/tetoBuildInitialStack (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i64)
  (local $7 i32)
  (local $8 i64)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  i32.const 128
  i32.atomic.load
  i32.const 1
  i32.ne
  if (result i32)
   i32.const 0
  else
   local.get $2
   i32.const 124
   i32.load
   local.tee $5
   i32.sub
   local.tee $9
   i32.const 132
   i32.load
   local.tee $11
   i32.le_u
   local.get $2
   local.get $5
   i32.ge_u
   i32.and
   local.get $3
   local.get $11
   local.get $9
   i32.sub
   i32.le_u
   i32.and
  end
  i32.eqz
  if
   i32.const 1
   return
  end
  block $folding-inner1
   block $folding-inner0
    local.get $3
    i32.const 32
    i32.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $2
     i32.load
     i32.const 827609940
     i32.ne
    end
    br_if $folding-inner0
    local.get $2
    i32.load offset=4
    local.tee $12
    i32.eqz
    local.get $12
    i32.const 4096
    i32.gt_u
    i32.or
    local.get $2
    i32.load offset=8
    local.tee $16
    i32.const 8192
    i32.gt_u
    i32.or
    local.get $12
    i32.const -1
    local.get $16
    i32.sub
    i32.gt_u
    i32.or
    br_if $folding-inner0
    local.get $12
    local.get $16
    i32.add
    local.set $11
    local.get $2
    local.get $3
    i32.add
    local.set $17
    local.get $2
    i32.const 32
    i32.add
    local.set $3
    loop $while-continue|0
     local.get $7
     local.get $11
     i32.lt_u
     if
      block $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$135 (result i32)
       i32.const -1
       local.get $17
       local.get $3
       i32.sub
       i32.const 4
       i32.lt_u
       br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$135
       drop
       i32.const -1
       local.get $3
       i32.load
       local.tee $9
       local.get $17
       local.get $3
       i32.sub
       i32.const 4
       i32.sub
       i32.gt_u
       br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$135
       drop
       i32.const 0
       local.set $5
       loop $while-continue|00
        local.get $5
        local.get $9
        i32.lt_u
        if
         i32.const -1
         local.get $3
         i32.const 4
         i32.add
         local.get $5
         i32.add
         i32.load8_u
         i32.eqz
         br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$135
         drop
         local.get $5
         i32.const 1
         i32.add
         local.set $5
         br $while-continue|00
        end
       end
       i32.const 3344
       local.get $9
       i64.extend_i32_u
       i64.store32
       local.get $3
       i32.const 4
       i32.add
       local.get $9
       i32.add
      end
      local.tee $3
      i32.const -1
      i32.eq
      br_if $folding-inner0
      local.get $6
      i32.const 3344
      i64.load32_u
      i64.const 1
      i64.add
      i64.add
      local.tee $6
      i64.const 2147483647
      i64.gt_u
      if
       i32.const 1
       return
      end
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $while-continue|0
     end
    end
    local.get $3
    local.get $17
    i32.ne
    br_if $folding-inner0
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
    local.tee $13
    local.get $6
    i64.const 32
    i64.add
    i64.lt_u
    local.get $13
    i32.const 1048576
    local.get $4
    local.get $4
    i32.const 1048576
    i32.lt_u
    select
    local.tee $3
    i64.extend_i32_u
    i64.le_u
    i32.or
    if
     i32.const 3
     return
    end
    local.get $13
    i64.const 16
    i64.sub
    local.get $6
    i64.sub
    local.tee $6
    i64.const 16
    i64.lt_u
    if
     i32.const 3
     return
    end
    local.get $6
    i64.const 16
    i64.sub
    local.tee $10
    i64.const -16
    i64.and
    local.set $6
    local.get $12
    local.get $16
    i32.add
    i32.const 33
    i32.add
    local.tee $4
    i32.const 268435455
    i32.gt_u
    if
     i32.const 1
     return
    end
    local.get $4
    i32.const 3
    i32.shl
    i64.extend_i32_u
    local.tee $14
    local.get $6
    i64.gt_u
    if
     i32.const 3
     return
    end
    local.get $13
    local.get $3
    i64.extend_i32_u
    i64.sub
    local.set $15
    local.get $6
    local.get $14
    i64.sub
    i64.const -16
    i64.and
    local.set $14
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
    local.set $6
    local.get $14
    local.get $15
    i64.lt_u
    if (result i32)
     i32.const 1
    else
     local.get $14
     local.get $6
     i64.const 4095
     i64.add
     i64.const -4096
     i64.and
     i64.const -1048576
     i64.sub
     i64.lt_u
    end
    if
     i32.const 3
     return
    end
    local.get $0
    local.get $1
    local.get $15
    local.get $14
    call $build/teto-generated/teto-threads/tetoStackPrepare
    local.tee $3
    br_if $folding-inner1
    local.get $14
    i64.const 8
    i64.add
    local.tee $15
    local.get $12
    i64.extend_i32_u
    local.tee $6
    i64.const 3
    i64.shl
    i64.add
    i64.const 8
    i64.add
    local.tee $18
    local.get $16
    i64.extend_i32_u
    i64.const 3
    i64.shl
    i64.add
    local.tee $19
    i64.const 8
    i64.add
    local.set $20
    i32.const 0
    i32.const 3
    local.get $1
    local.get $14
    local.get $6
    i32.const 8
    call $build/teto-generated/teto-threads/__bq_248d3b0e_guestStoreU64
    select
    local.tee $3
    br_if $folding-inner1
    i32.const 0
    i32.const 3
    local.get $1
    local.get $15
    local.get $6
    i64.const 3
    i64.shl
    i64.add
    i64.const 0
    i32.const 8
    call $build/teto-generated/teto-threads/__bq_248d3b0e_guestStoreU64
    select
    local.tee $3
    br_if $folding-inner1
    i32.const 0
    i32.const 3
    local.get $1
    local.get $19
    i64.const 0
    i32.const 8
    call $build/teto-generated/teto-threads/__bq_248d3b0e_guestStoreU64
    select
    local.tee $3
    br_if $folding-inner1
    local.get $2
    i32.const 32
    i32.add
    local.set $3
    local.get $13
    i64.const 16
    i64.sub
    local.set $6
    i32.const 0
    local.set $7
    loop $while-continue|1
     local.get $7
     local.get $16
     i32.lt_u
     if
      block $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$136 (result i32)
       i32.const -1
       local.get $17
       local.get $3
       i32.sub
       i32.const 4
       i32.lt_u
       br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$136
       drop
       i32.const -1
       local.get $3
       i32.load
       local.tee $5
       local.get $17
       local.get $3
       i32.sub
       i32.const 4
       i32.sub
       i32.gt_u
       br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$136
       drop
       i32.const 0
       local.set $4
       loop $while-continue|01
        local.get $4
        local.get $5
        i32.lt_u
        if
         i32.const -1
         local.get $3
         i32.const 4
         i32.add
         local.get $4
         i32.add
         i32.load8_u
         i32.eqz
         br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$136
         drop
         local.get $4
         i32.const 1
         i32.add
         local.set $4
         br $while-continue|01
        end
       end
       i32.const 3344
       local.get $5
       i64.extend_i32_u
       i64.store32
       local.get $3
       i32.const 4
       i32.add
       local.get $5
       i32.add
      end
      local.tee $4
      i32.const -1
      i32.eq
      br_if $folding-inner0
      local.get $0
      local.get $1
      local.get $6
      i32.const 3344
      i32.load
      local.tee $5
      i64.extend_i32_u
      i64.const 1
      i64.add
      i64.sub
      local.tee $6
      local.get $3
      i32.const 4
      i32.add
      local.get $5
      call $build/teto-generated/teto-threads/tetoStackCopy
      local.tee $3
      br_if $folding-inner1
      i32.const 0
      i32.const 3
      local.get $1
      local.get $18
      local.get $7
      i64.extend_i32_u
      i64.const 3
      i64.shl
      i64.add
      local.get $6
      i32.const 8
      call $build/teto-generated/teto-threads/__bq_248d3b0e_guestStoreU64
      select
      local.tee $3
      br_if $folding-inner1
      local.get $4
      local.set $3
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $while-continue|1
     end
    end
    i32.const 0
    local.set $7
    loop $while-continue|2
     local.get $7
     local.get $12
     i32.lt_u
     if
      block $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$137 (result i32)
       i32.const -1
       local.get $17
       local.get $3
       i32.sub
       i32.const 4
       i32.lt_u
       br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$137
       drop
       i32.const -1
       local.get $3
       i32.load
       local.tee $5
       local.get $17
       local.get $3
       i32.sub
       i32.const 4
       i32.sub
       i32.gt_u
       br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$137
       drop
       i32.const 0
       local.set $4
       loop $while-continue|02
        local.get $4
        local.get $5
        i32.lt_u
        if
         i32.const -1
         local.get $3
         i32.const 4
         i32.add
         local.get $4
         i32.add
         i32.load8_u
         i32.eqz
         br_if $__inlined_func$build/teto-generated/teto-threads/__bq_4e884e49_startupEntry$137
         drop
         local.get $4
         i32.const 1
         i32.add
         local.set $4
         br $while-continue|02
        end
       end
       i32.const 3344
       local.get $5
       i64.extend_i32_u
       i64.store32
       local.get $3
       i32.const 4
       i32.add
       local.get $5
       i32.add
      end
      local.tee $4
      i32.const -1
      i32.eq
      br_if $folding-inner0
      local.get $0
      local.get $1
      local.get $6
      i32.const 3344
      i32.load
      local.tee $5
      i64.extend_i32_u
      i64.const 1
      i64.add
      i64.sub
      local.tee $6
      local.get $3
      i32.const 4
      i32.add
      local.get $5
      call $build/teto-generated/teto-threads/tetoStackCopy
      local.tee $3
      br_if $folding-inner1
      i32.const 0
      i32.const 3
      local.get $1
      local.get $15
      local.get $7
      i64.extend_i32_u
      i64.const 3
      i64.shl
      i64.add
      local.get $6
      i32.const 8
      call $build/teto-generated/teto-threads/__bq_248d3b0e_guestStoreU64
      select
      local.tee $3
      br_if $folding-inner1
      local.get $8
      local.get $6
      local.get $7
      select
      local.set $8
      local.get $4
      local.set $3
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $while-continue|2
     end
    end
    local.get $8
    i64.eqz
    local.get $6
    local.get $10
    i64.const 16
    i64.add
    i64.ne
    i32.or
    br_if $folding-inner0
    local.get $0
    local.get $1
    local.get $10
    local.get $2
    i32.const 16
    i32.add
    i32.const 16
    call $build/teto-generated/teto-threads/tetoStackCopy
    local.tee $3
    br_if $folding-inner1
    local.get $0
    local.get $1
    local.get $20
    local.get $10
    local.get $8
    call $build/teto-generated/teto-threads/tetoStackAux
    local.tee $3
    br_if $folding-inner1
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
     local.get $14
     local.get $0
     i64.atomic.load offset=264
     i64.ne
    end
    if (result i32)
     i32.const 3
    else
     local.get $1
     i32.const 10
     i32.shl
     local.tee $0
     i32.const 4240
     i32.add
     local.get $14
     i64.store
     local.get $0
     i32.const 5008
     i32.add
     i64.const 1
     i64.atomic.rmw.add
     drop
     i32.const 0
    end
    return
   end
   i32.const 2
   return
  end
  local.get $3
 )
