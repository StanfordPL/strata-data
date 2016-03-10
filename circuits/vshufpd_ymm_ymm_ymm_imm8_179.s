  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm12_xmm13  #  1     0     5      OPC=callq_label            
  unpckhpd %xmm2, %xmm3                #  2     0x5   4      OPC=unpckhpd_xmm_xmm       
  movupd %xmm13, %xmm2                 #  3     0x9   5      OPC=movupd_xmm_xmm         
  vunpcklpd %ymm3, %ymm2, %ymm1        #  4     0xe   4      OPC=vunpcklpd_ymm_ymm_ymm  
  retq                                 #  5     0x12  1      OPC=retq                   
                                                                                        
.size target, .-target
