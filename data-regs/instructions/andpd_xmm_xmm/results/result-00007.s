  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vmaxps %xmm2, %xmm2, %xmm14          #  1     0     4      OPC=vmaxps_xmm_xmm_xmm  
  vmovdqu %xmm1, %xmm2                 #  2     0x4   4      OPC=vmovdqu_xmm_xmm     
  pand %xmm14, %xmm2                   #  3     0x8   5      OPC=pand_xmm_xmm        
  callq .move_128_64_xmm2_xmm10_xmm11  #  4     0xd   5      OPC=callq_label         
  callq .move_64_128_xmm10_xmm11_xmm3  #  5     0x12  5      OPC=callq_label         
  movdqu %xmm3, %xmm1                  #  6     0x17  4      OPC=movdqu_xmm_xmm      
  retq                                 #  7     0x1b  1      OPC=retq                
                                                                                     
.size target, .-target
