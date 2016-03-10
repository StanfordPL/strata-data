  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  vmovd %ebx, %xmm5                    #  1     0     4      OPC=vmovd_xmm_r32           
  callq .move_128_64_xmm1_xmm10_xmm11  #  2     0x4   5      OPC=callq_label             
  vpunpckldq %xmm5, %xmm10, %xmm10     #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xd   5      OPC=callq_label             
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target
