  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vpbroadcastq %xmm8, %ymm0          #  2     0x5   5      OPC=vpbroadcastq_ymm_xmm   
  maxpd %xmm9, %xmm0                 #  3     0xa   5      OPC=maxpd_xmm_xmm          
  vbroadcastsd %xmm9, %ymm4          #  4     0xf   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm4, %ymm0, %ymm1      #  5     0x14  4      OPC=vunpckhpd_ymm_ymm_ymm  
  movups %xmm2, %xmm1                #  6     0x18  3      OPC=movups_xmm_xmm         
  retq                               #  7     0x1b  1      OPC=retq                   
                                                                                      
.size target, .-target
