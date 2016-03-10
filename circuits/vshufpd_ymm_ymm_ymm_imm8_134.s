  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                       
.target:                             #        0     0      OPC=<label>                  
  vmovddup %ymm3, %ymm1              #  1     0     4      OPC=vmovddup_ymm_ymm         
  vpunpckhqdq %ymm1, %ymm2, %ymm1    #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vunpckhpd %xmm2, %xmm3, %xmm9      #  3     0x8   4      OPC=vunpckhpd_xmm_xmm_xmm    
  vmovapd %ymm2, %ymm8               #  4     0xc   4      OPC=vmovapd_ymm_ymm          
  callq .move_64_128_xmm8_xmm9_xmm1  #  5     0x10  5      OPC=callq_label              
  retq                               #  6     0x15  1      OPC=retq                     
                                                                                        
.size target, .-target
