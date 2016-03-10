  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                     
.target:                                          #        0     0      OPC=<label>                
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label            
  vmovapd %ymm2, %ymm4                            #  2     0x5   4      OPC=vmovapd_ymm_ymm        
  vunpckhpd %ymm4, %ymm4, %ymm0                   #  3     0x9   4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovddup %ymm0, %ymm1                           #  4     0xd   4      OPC=vmovddup_ymm_ymm       
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  5     0x11  5      OPC=callq_label            
  retq                                            #  6     0x16  1      OPC=retq                   
                                                                                                   
.size target, .-target
