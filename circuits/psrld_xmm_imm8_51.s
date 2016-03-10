  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vxorps %xmm15, %xmm15, %xmm2         #  1     0     5      OPC=vxorps_xmm_xmm_xmm  
  callq .move_128_64_xmm2_xmm10_xmm11  #  2     0x5   5      OPC=callq_label         
  vmovaps %xmm2, %xmm11                #  3     0xa   4      OPC=vmovaps_xmm_xmm     
  callq .move_64_128_xmm10_xmm11_xmm1  #  4     0xe   5      OPC=callq_label         
  retq                                 #  5     0x13  1      OPC=retq                
                                                                                     
.size target, .-target
