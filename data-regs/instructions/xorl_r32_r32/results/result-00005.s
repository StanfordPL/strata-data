  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    3 bytes

# Text                               #  Line  RIP   Bytes  Opcode               
.target:                             #        0     0      OPC=<label>          
  xchgl %ebx, %ecx                   #  1     0     2      OPC=xchgl_r32_r32    
  xorq %rcx, %rbx                    #  2     0x2   3      OPC=xorq_r64_r64     
  callq .move_032_016_ebx_r12w_r13w  #  3     0x5   5      OPC=callq_label      
  popcntw %r13w, %bp                 #  4     0xa   6      OPC=popcntw_r16_r16  
  callq .set_szp_for_ebx             #  5     0x10  5      OPC=callq_label      
  retq                               #  6     0x15  1      OPC=retq             
                                                                                
.size target, .-target
