  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovapd %ymm2, %ymm11                           #  2     0x5   4      OPC=vmovapd_ymm_ymm    
  unpckhps %xmm9, %xmm9                           #  3     0x9   4      OPC=unpckhps_xmm_xmm   
  vcvtdq2ps %xmm9, %xmm10                         #  4     0xd   5      OPC=vcvtdq2ps_xmm_xmm  
  callq .move_128_256_xmm10_xmm11_ymm1            #  5     0x12  5      OPC=callq_label        
  retq                                            #  6     0x17  1      OPC=retq               
                                                                                               
.size target, .-target
