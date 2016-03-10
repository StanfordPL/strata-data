  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vunpcklps %xmm10, %xmm2, %xmm1                  #  2     0x5   5      OPC=vunpcklps_xmm_xmm_xmm  
  vunpcklps %xmm1, %xmm9, %xmm4                   #  3     0xa   4      OPC=vunpcklps_xmm_xmm_xmm  
  vpbroadcastq %xmm4, %xmm8                       #  4     0xe   5      OPC=vpbroadcastq_xmm_xmm   
  vmovsd %xmm1, %xmm8, %xmm1                      #  5     0x13  4      OPC=vmovsd_xmm_xmm_xmm     
  retq                                            #  6     0x17  1      OPC=retq                   
                                                                                                   
.size target, .-target
