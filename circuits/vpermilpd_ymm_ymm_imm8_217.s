  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                  
.target:                             #        0     0      OPC=<label>             
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label         
  vmovapd %ymm2, %ymm1               #  2     0x5   4      OPC=vmovapd_ymm_ymm     
  punpckhqdq %xmm9, %xmm1            #  3     0x9   5      OPC=punpckhqdq_xmm_xmm  
  unpcklpd %xmm8, %xmm1              #  4     0xe   5      OPC=unpcklpd_xmm_xmm    
  retq                               #  5     0x13  1      OPC=retq                
                                                                                   
.size target, .-target
