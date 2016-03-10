  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    4 bytes

# Text                             #  Line  RIP   Bytes  Opcode               
.target:                           #        0     0      OPC=<label>          
  callq .read_cf_into_rcx          #  1     0     5      OPC=callq_label      
  xorq %rax, %rax                  #  2     0x5   3      OPC=xorq_r64_r64     
  movswq %cx, %rdi                 #  3     0x8   4      OPC=movswq_r64_r16   
  callq .move_064_032_rcx_r8d_r9d  #  4     0xc   5      OPC=callq_label      
  popcntq %rdi, %r9                #  5     0x11  5      OPC=popcntq_r64_r64  
  callq .move_008_016_r8b_r9b_bx   #  6     0x16  5      OPC=callq_label      
  xchgw %ax, %bx                   #  7     0x1b  2      OPC=xchgw_r16_ax     
  retq                             #  8     0x1d  1      OPC=retq             
                                                                              
.size target, .-target
