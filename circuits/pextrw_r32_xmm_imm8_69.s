  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode               
.target:                                        #        0     0      OPC=<label>          
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label      
  vmovaps %xmm6, %xmm2                          #  2     0x5   4      OPC=vmovaps_xmm_xmm  
  callq .move_128_064_xmm2_r8_r9                #  3     0x9   5      OPC=callq_label      
  callq .move_032_064_r8d_r9d_rdx               #  4     0xe   5      OPC=callq_label      
  callq .move_032_016_edx_r8w_r9w               #  5     0x13  5      OPC=callq_label      
  movzwq %r9w, %rbx                             #  6     0x18  4      OPC=movzwq_r64_r16   
  retq                                          #  7     0x1c  1      OPC=retq             
                                                                                           
.size target, .-target
