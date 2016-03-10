  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vunpckhps %ymm3, %ymm2, %ymm7        #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhdq %ymm7, %ymm3, %ymm6       #  2     0x4   4      OPC=vpunpckhdq_ymm_ymm_ymm   
  callq .move_128_64_xmm3_xmm10_xmm11  #  3     0x8   5      OPC=callq_label              
  vpunpckhqdq %xmm10, %xmm10, %xmm13   #  4     0xd   5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpor %ymm13, %ymm3, %ymm1            #  5     0x12  5      OPC=vpor_ymm_ymm_ymm         
  unpcklpd %xmm6, %xmm1                #  6     0x17  4      OPC=unpcklpd_xmm_xmm         
  retq                                 #  7     0x1b  1      OPC=retq                     
                                                                                          
.size target, .-target
