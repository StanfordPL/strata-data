  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                  
.target:                          #        0     0      OPC=<label>             
  vmulss %xmm1, %xmm1, %xmm2      #  1     0     4      OPC=vmulss_xmm_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9  #  2     0x4   5      OPC=callq_label         
  popcntl %r9d, %edx              #  3     0x9   5      OPC=popcntl_r32_r32     
  callq .read_of_into_rbx         #  4     0xe   5      OPC=callq_label         
  addl %r9d, %ebx                 #  5     0x13  3      OPC=addl_r32_r32        
  retq                            #  6     0x16  1      OPC=retq                
                                                                                
.size target, .-target
