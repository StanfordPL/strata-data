  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9  #  1     0     5      OPC=callq_label            
  vzeroall                        #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r8_r9_xmm1  #  3     0x8   5      OPC=callq_label            
  vmovsldup %ymm1, %ymm11         #  4     0xd   4      OPC=vmovsldup_ymm_ymm      
  vunpcklpd %xmm1, %xmm11, %xmm1  #  5     0x11  4      OPC=vunpcklpd_xmm_xmm_xmm  
  retq                            #  6     0x15  1      OPC=retq                   
                                                                                   
.size target, .-target
