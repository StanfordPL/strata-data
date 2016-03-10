  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm1_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label            
  vaddsubps %xmm8, %xmm8, %xmm5        #  3     0xa   5      OPC=vaddsubps_xmm_xmm_xmm  
  vpbroadcastq %xmm11, %ymm6           #  4     0xf   5      OPC=vpbroadcastq_ymm_xmm   
  vmovhlps %xmm5, %xmm6, %xmm1         #  5     0x14  4      OPC=vmovhlps_xmm_xmm_xmm   
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
