  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vunpcklps %xmm1, %xmm1, %xmm2         #  1     0     4      OPC=vunpcklps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm12_xmm13   #  2     0x4   5      OPC=callq_label            
  vpbroadcastb %xmm12, %xmm3            #  3     0x9   5      OPC=vpbroadcastb_xmm_xmm   
  callq .move_256_128_ymm3_xmm10_xmm11  #  4     0xe   5      OPC=callq_label            
  movddup %xmm11, %xmm1                 #  5     0x13  5      OPC=movddup_xmm_xmm        
  retq                                  #  6     0x18  1      OPC=retq                   
                                                                                         
.size target, .-target
