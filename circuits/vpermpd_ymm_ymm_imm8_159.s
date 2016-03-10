  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vpunpckhqdq %ymm2, %ymm2, %ymm3       #  1     0     4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  movss %xmm2, %xmm2                    #  2     0x4   4      OPC=movss_xmm_xmm            
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vpbroadcastq %xmm3, %ymm1             #  4     0xd   5      OPC=vpbroadcastq_ymm_xmm     
  vunpcklpd %ymm2, %ymm1, %ymm1         #  5     0x12  4      OPC=vunpcklpd_ymm_ymm_ymm    
  movupd %xmm11, %xmm1                  #  6     0x16  5      OPC=movupd_xmm_xmm           
  retq                                  #  7     0x1b  1      OPC=retq                     
                                                                                           
.size target, .-target
