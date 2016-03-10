  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                      
.target:                               #        0     0      OPC=<label>                 
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label             
  vmovd %ebx, %xmm2                    #  2     0x5   4      OPC=vmovd_xmm_r32           
  vpunpckldq %xmm2, %xmm11, %xmm10     #  3     0x9   4      OPC=vpunpckldq_xmm_xmm_xmm  
  punpcklqdq %xmm10, %xmm1             #  4     0xd   5      OPC=punpcklqdq_xmm_xmm      
  retq                                 #  5     0x12  1      OPC=retq                    
                                                                                         
.size target, .-target
