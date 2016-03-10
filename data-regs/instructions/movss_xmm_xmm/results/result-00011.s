  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                        
.target:                                          #        0     0      OPC=<label>                   
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label               
  vmovapd %xmm2, %xmm8                            #  2     0x5   4      OPC=vmovapd_xmm_xmm           
  vunpcklpd %xmm10, %xmm9, %xmm13                 #  3     0x9   5      OPC=vunpcklpd_xmm_xmm_xmm     
  vfnmsub132pd %ymm13, %ymm8, %ymm8               #  4     0xe   5      OPC=vfnmsub132pd_ymm_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label               
  retq                                            #  6     0x18  1      OPC=retq                      
                                                                                                      
.size target, .-target
