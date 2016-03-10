  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                 
.target:                                          #        0     0      OPC=<label>            
  callq .move_128_032_xmm2_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label        
  vmovapd %ymm3, %ymm1                            #  2     0x5   4      OPC=vmovapd_ymm_ymm    
  vmovshdup %ymm3, %ymm9                          #  3     0x9   4      OPC=vmovshdup_ymm_ymm  
  callq .move_032_128_xmm8_xmm9_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label        
  retq                                            #  5     0x12  1      OPC=retq               
                                                                                               
.size target, .-target
