  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vunpckhps %ymm2, %ymm2, %ymm1        #  1     0     4      OPC=vunpckhps_ymm_ymm_ymm    
  vpunpckhqdq %ymm1, %ymm2, %ymm9      #  2     0x4   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x8   5      OPC=callq_label              
  unpcklpd %xmm12, %xmm9               #  4     0xd   5      OPC=unpcklpd_xmm_xmm         
  vmovq %xmm12, %xmm1                  #  5     0x12  5      OPC=vmovq_xmm_xmm            
  vbroadcastsd %xmm1, %ymm8            #  6     0x17  5      OPC=vbroadcastsd_ymm_xmm     
  callq .move_128_256_xmm8_xmm9_ymm1   #  7     0x1c  5      OPC=callq_label              
  retq                                 #  8     0x21  1      OPC=retq                     
                                                                                          
.size target, .-target
