  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  unpcklps %xmm2, %xmm1                #  1     0     3      OPC=unpcklps_xmm_xmm        
  callq .move_128_64_xmm1_xmm12_xmm13  #  2     0x3   5      OPC=callq_label             
  vpunpckldq %xmm12, %xmm13, %xmm6     #  3     0x8   5      OPC=vpunpckldq_xmm_xmm_xmm  
  movapd %xmm6, %xmm1                  #  4     0xd   4      OPC=movapd_xmm_xmm          
  retq                                 #  5     0x11  1      OPC=retq                    
                                                                                         
.size target, .-target
