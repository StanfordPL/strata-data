  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmovsldup %xmm9, %xmm1                          #  2     0x5   5      OPC=vmovsldup_xmm_xmm        
  vpor %xmm9, %xmm1, %xmm10                       #  3     0xa   5      OPC=vpor_xmm_xmm_xmm         
  vcvtdq2pd %xmm2, %xmm8                          #  4     0xf   4      OPC=vcvtdq2pd_xmm_xmm        
  vmovss %xmm10, %xmm8, %xmm2                     #  5     0x13  5      OPC=vmovss_xmm_xmm_xmm       
  vunpcklps %xmm2, %xmm11, %xmm8                  #  6     0x18  4      OPC=vunpcklps_xmm_xmm_xmm    
  vpunpcklqdq %xmm2, %xmm2, %xmm9                 #  7     0x1c  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  8     0x20  5      OPC=callq_label              
  retq                                            #  9     0x25  1      OPC=retq                     
                                                                                                     
.size target, .-target
