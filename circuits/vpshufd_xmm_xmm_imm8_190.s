  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                     
.target:                               #        0     0      OPC=<label>                
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label            
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x5   5      OPC=callq_label            
  vpbroadcastd %xmm9, %xmm4            #  3     0xa   5      OPC=vpbroadcastd_xmm_xmm   
  vunpcklps %xmm4, %xmm9, %xmm0        #  4     0xf   4      OPC=vunpcklps_xmm_xmm_xmm  
  vmovsd %xmm13, %xmm0, %xmm1          #  5     0x13  5      OPC=vmovsd_xmm_xmm_xmm     
  retq                                 #  6     0x18  1      OPC=retq                   
                                                                                        
.size target, .-target
