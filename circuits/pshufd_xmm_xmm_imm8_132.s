  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                     
.target:                             #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9  #  1     0     5      OPC=callq_label            
  vmovdqu %xmm2, %xmm7               #  2     0x5   4      OPC=vmovdqu_xmm_xmm        
  vmovsldup %xmm7, %xmm9             #  3     0x9   4      OPC=vmovsldup_xmm_xmm      
  vbroadcastsd %xmm9, %ymm3          #  4     0xd   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhps %ymm9, %ymm3, %ymm9      #  5     0x12  5      OPC=vunpckhps_ymm_ymm_ymm  
  callq .move_64_128_xmm8_xmm9_xmm1  #  6     0x17  5      OPC=callq_label            
  retq                               #  7     0x1c  1      OPC=retq                   
                                                                                      
.size target, .-target
