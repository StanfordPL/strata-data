  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                      
.target:                                          #        0     0      OPC=<label>                 
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vpunpckhdq %xmm2, %xmm10, %xmm8                 #  2     0x5   4      OPC=vpunpckhdq_xmm_xmm_xmm  
  vcvtdq2pd %ymm8, %ymm11                         #  3     0x9   5      OPC=vcvtdq2pd_ymm_ymm       
  unpcklpd %xmm8, %xmm1                           #  4     0xe   5      OPC=unpcklpd_xmm_xmm        
  movss %xmm11, %xmm1                             #  5     0x13  5      OPC=movss_xmm_xmm           
  retq                                            #  6     0x18  1      OPC=retq                    
                                                                                                    
.size target, .-target
