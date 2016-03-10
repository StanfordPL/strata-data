  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovshdup %xmm2, %xmm1               #  1     0     4      OPC=vmovshdup_xmm_xmm       
  callq .move_128_64_xmm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label             
  movsldup %xmm3, %xmm6                #  3     0x9   4      OPC=movsldup_xmm_xmm        
  vpunpckldq %xmm1, %xmm13, %xmm8      #  4     0xd   4      OPC=vpunpckldq_xmm_xmm_xmm  
  vmovhlps %xmm8, %xmm6, %xmm1         #  5     0x11  5      OPC=vmovhlps_xmm_xmm_xmm    
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
