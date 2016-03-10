  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                #  Line  RIP   Bytes  Opcode                     
.target:                              #        0     0      OPC=<label>                
  callq .move_128_064_xmm2_r8_r9      #  1     0     5      OPC=callq_label            
  vzeroall                            #  2     0x5   3      OPC=vzeroall               
  callq .move_064_128_r8_r9_xmm2      #  3     0x8   5      OPC=callq_label            
  callq .move_256_128_ymm2_xmm8_xmm9  #  4     0xd   5      OPC=callq_label            
  vunpckhpd %xmm2, %xmm2, %xmm4       #  5     0x12  4      OPC=vunpckhpd_xmm_xmm_xmm  
  vunpcklpd %ymm2, %ymm4, %ymm13      #  6     0x16  4      OPC=vunpcklpd_ymm_ymm_ymm  
  vmovss %xmm8, %xmm13, %xmm1         #  7     0x1a  5      OPC=vmovss_xmm_xmm_xmm     
  retq                                #  8     0x1f  1      OPC=retq                   
                                                                                       
.size target, .-target
