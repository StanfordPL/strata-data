  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm2, %ymm8            #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  vbroadcastsd %xmm11, %ymm3           #  3     0xa   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm3, %ymm8, %ymm1        #  4     0xf   4      OPC=vunpckhpd_ymm_ymm_ymm  
  psubd %xmm1, %xmm1                   #  5     0x13  4      OPC=psubd_xmm_xmm          
  retq                                 #  6     0x17  1      OPC=retq                   
                                                                                        
.size target, .-target
