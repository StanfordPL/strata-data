  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm2_xmm8_xmm9    #  1     0     5      OPC=callq_label           
  unpcklps %xmm3, %xmm2                #  2     0x5   3      OPC=unpcklps_xmm_xmm      
  callq .move_128_64_xmm2_xmm10_xmm11  #  3     0x8   5      OPC=callq_label           
  vpxor %xmm5, %xmm5, %xmm7            #  4     0xd   4      OPC=vpxor_xmm_xmm_xmm     
  vpbroadcastq %xmm10, %xmm10          #  5     0x11  5      OPC=vpbroadcastq_xmm_xmm  
  vmovlhps %xmm9, %xmm7, %xmm1         #  6     0x16  5      OPC=vmovlhps_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  7     0x1b  5      OPC=callq_label           
  retq                                 #  8     0x20  1      OPC=retq                  
                                                                                       
.size target, .-target
