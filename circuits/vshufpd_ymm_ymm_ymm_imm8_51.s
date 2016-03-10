  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  vunpcklpd %ymm3, %ymm2, %ymm1        #  1     0     4      OPC=vunpcklpd_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label            
  callq .move_64_128_xmm12_xmm13_xmm1  #  3     0x9   5      OPC=callq_label            
  unpckhpd %xmm3, %xmm1                #  4     0xe   4      OPC=unpckhpd_xmm_xmm       
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
