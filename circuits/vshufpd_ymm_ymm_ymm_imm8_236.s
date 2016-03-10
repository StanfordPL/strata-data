  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  vunpckhpd %ymm3, %ymm2, %ymm1                   #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x4   5      OPC=callq_label            
  movq %xmm2, %xmm8                               #  3     0x9   5      OPC=movq_xmm_xmm           
  callq .move_64_128_xmm8_xmm9_xmm1               #  4     0xe   5      OPC=callq_label            
  unpcklpd %xmm3, %xmm1                           #  5     0x13  4      OPC=unpcklpd_xmm_xmm       
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
