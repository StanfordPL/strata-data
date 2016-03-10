  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                               #  Line  RIP   Bytes  Opcode                      
.target:                             #        0     0      OPC=<label>                 
  callq .move_128_64_xmm3_xmm8_xmm9  #  1     0     5      OPC=callq_label             
  vbroadcastss %xmm8, %xmm14         #  2     0x5   5      OPC=vbroadcastss_xmm_xmm    
  vpunpckhdq %xmm14, %xmm3, %xmm6    #  3     0xa   5      OPC=vpunpckhdq_xmm_xmm_xmm  
  vbroadcastss %xmm2, %xmm0          #  4     0xf   5      OPC=vbroadcastss_xmm_xmm    
  vmovhlps %xmm0, %xmm6, %xmm1       #  5     0x14  4      OPC=vmovhlps_xmm_xmm_xmm    
  retq                               #  6     0x18  1      OPC=retq                    
                                                                                       
.size target, .-target
