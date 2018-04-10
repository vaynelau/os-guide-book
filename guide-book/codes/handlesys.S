NESTED(handle_sys,TF_SIZE, sp)
    SAVE_ALL                            /* 用于保存所有寄存器的汇编宏 */
    CLI                                 /* 用于屏蔽中断位的设置的汇编宏 */
    nop
    .set at                             /* 恢复$at寄存器的使用 */

    /* TODO: 将Trapframe的EPC寄存器取出，计算一个合理的值存回Trapframe中 */

    /* TODO: 将系统调用号“复制”入寄存器$a0 */
    
    addiu   a0, a0, -__SYSCALL_BASE     /* a0 <- “相对”系统调用号 */
    sll     t0, a0, 2                   /* t0 <- 相对系统调用号 * 4 */
    la      t1, sys_call_table          /* t1 <- 系统调用函数的入口表基地址 */
    addu    t1, t1, t0                  /* t1 <- 特定系统调用函数入口表项地址 */
    lw      t2, 0(t1)                   /* t2 <- 特定系统调用函数入口函数地址 */

    lw      t0, TF_REG29(sp)            /* t0 <- 用户态的栈指针 */
    lw      t3, 16(t0)                  /* t3 <- msyscall的第5个参数 */
    lw      t4, 20(t0)                  /* t4 <- msyscall的第6个参数 */

    /* TODO: 在当前栈指针分配6个参数的存储空间，并将6个参数安置到期望的位置 */
    
    
    jalr    t2                          /* 调用sys_*函数 */
    nop
    
    /* TODO: 恢复栈指针到分配前的状态 */
    
    sw      v0, TF_REG2(sp)             /* 将$v0中的sys_*函数返回值存入Trapframe */

    j       ret_from_exception          /* 从异常中返回（恢复现场） */
    nop
END(handle_sys)

sys_call_table:                         /* 系统调用函数的入口表 */
.align 2
    .word sys_putchar
    .word sys_getenvid
    .word sys_yield
    .word sys_env_destroy
    .word sys_set_pgfault_handler
    .word sys_mem_alloc
    .word sys_mem_map
    .word sys_mem_unmap
    .word sys_env_alloc
    .word sys_set_env_status
    .word sys_set_trapframe
    .word sys_panic
    .word sys_ipc_can_send
    .word sys_ipc_recv
    .word sys_cgetc
    /* 每一个整字都将初值设定为对应sys_*函数的地址 */
    /* 在此处增加内核系统调用的入口地址 */