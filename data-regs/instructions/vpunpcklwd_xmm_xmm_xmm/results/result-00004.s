  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP   Bytes  Opcode                 
.target:                            #        0     0      OPC=<label>            
  punpcklwd %xmm3, %xmm2            #  1     0     4      OPC=punpcklwd_xmm_xmm  
  callq .move_128_064_xmm2_r12_r13  #  2     0x4   5      OPC=callq_label        
  vzeroall                          #  3     0x9   3      OPC=vzeroall           
  vmovshdup %ymm4, %ymm14           #  4     0xc   4      OPC=vmovshdup_ymm_ymm  
  callq .move_064_128_r12_r13_xmm2  #  5     0x10  5      OPC=callq_label        
  vpor %xmm14, %xmm2, %xmm1         #  6     0x15  5      OPC=vpor_xmm_xmm_xmm   
  retq                              #  7     0x1a  1      OPC=retq               
                                                                                 
.size target, .-target
