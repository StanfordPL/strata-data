  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovlhps %xmm2, %xmm10, %xmm7                   #  2     0x5   4      OPC=vmovlhps_xmm_xmm_xmm   
  unpckhpd %xmm1, %xmm1                           #  3     0x9   4      OPC=unpckhpd_xmm_xmm       
  vunpckhps %xmm7, %xmm2, %xmm2                   #  4     0xd   4      OPC=vunpckhps_xmm_xmm_xmm  
  unpcklps %xmm8, %xmm1                           #  5     0x11  4      OPC=unpcklps_xmm_xmm       
  movlhps %xmm2, %xmm1                            #  6     0x15  3      OPC=movlhps_xmm_xmm        
  retq                                            #  7     0x18  1      OPC=retq                   
                                                                                                   
.size target, .-target
