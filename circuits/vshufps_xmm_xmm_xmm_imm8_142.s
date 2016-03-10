  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm2_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  movsldup %xmm3, %xmm3                #  2     0x5   4      OPC=movsldup_xmm_xmm        
  vpunpckldq %xmm3, %xmm2, %xmm10      #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  unpckhps %xmm3, %xmm10               #  4     0xd   4      OPC=unpckhps_xmm_xmm        
  vmovsd %xmm11, %xmm10, %xmm1         #  5     0x11  5      OPC=vmovsd_xmm_xmm_xmm      
  retq                                 #  6     0x16  1      OPC=retq                    
                                                                                         
.size target, .-target
