  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                 
.target:                                        #        0     0      OPC=<label>            
  callq .move_128_064_xmm2_r8_r9                #  1     0     5      OPC=callq_label        
  vzeroall                                      #  2     0x5   3      OPC=vzeroall           
  callq .move_064_128_r8_r9_xmm2                #  3     0x8   5      OPC=callq_label        
  vmovsldup %ymm2, %ymm1                        #  4     0xd   4      OPC=vmovsldup_ymm_ymm  
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  5     0x11  5      OPC=callq_label        
  movss %xmm5, %xmm1                            #  6     0x16  4      OPC=movss_xmm_xmm      
  retq                                          #  7     0x1a  1      OPC=retq               
                                                                                             
.size target, .-target
