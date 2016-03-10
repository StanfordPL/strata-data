  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                      
.target:                            #        0     0      OPC=<label>                 
  callq .move_128_064_xmm2_r12_r13  #  1     0     5      OPC=callq_label             
  vzeroall                          #  2     0x5   3      OPC=vzeroall                
  callq .move_064_128_r12_r13_xmm2  #  3     0x8   5      OPC=callq_label             
  vmovsldup %xmm2, %xmm15           #  4     0xd   4      OPC=vmovsldup_xmm_xmm       
  vpunpckldq %xmm2, %xmm5, %xmm13   #  5     0x11  4      OPC=vpunpckldq_xmm_xmm_xmm  
  vunpckhps %ymm13, %ymm15, %ymm6   #  6     0x15  5      OPC=vunpckhps_ymm_ymm_ymm   
  vmovsd %xmm15, %xmm6, %xmm1       #  7     0x1a  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                              #  8     0x1f  1      OPC=retq                    
                                                                                      
.size target, .-target
