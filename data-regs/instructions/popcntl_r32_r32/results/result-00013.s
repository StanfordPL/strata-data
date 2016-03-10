  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                     #  Line  RIP   Bytes  Opcode               
.target:                   #        0     0      OPC=<label>          
  xorb %dil, %dil          #  1     0     2      OPC=xorb_r8_r8       
  callq .read_zf_into_rbx  #  2     0x2   5      OPC=callq_label      
  movl %ecx, %r8d          #  3     0x7   3      OPC=movl_r32_r32     
  popcntq %r8, %rbp        #  4     0xa   5      OPC=popcntq_r64_r64  
  callq .clear_cf          #  5     0xf   5      OPC=callq_label      
  callq .clear_sf          #  6     0x14  5      OPC=callq_label      
  xchgw %bx, %bp           #  7     0x19  3      OPC=xchgw_r16_r16    
  retq                     #  8     0x1c  1      OPC=retq             
                                                                      
.size target, .-target
