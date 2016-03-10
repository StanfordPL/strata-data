  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    2 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  movslq %ebx, %r13        #  1     0     3      OPC=movslq_r64_r32   
  xchgl %r13d, %eax        #  2     0x3   3      OPC=xchgl_r32_r32    
  shlb $0x1, %bh           #  3     0x6   2      OPC=shlb_rh_one      
  popcntw %bx, %r9w        #  4     0x8   6      OPC=popcntw_r16_r16  
  callq .read_cf_into_rbx  #  5     0xe   5      OPC=callq_label      
  xorl %r13d, %ebx         #  6     0x13  3      OPC=xorl_r32_r32     
  retq                     #  7     0x16  1      OPC=retq             
                                                                      
.size target, .-target
