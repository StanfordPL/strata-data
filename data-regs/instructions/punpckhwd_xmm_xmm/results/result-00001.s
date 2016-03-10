  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                  
.target:                               #        0     0      OPC=<label>             
  vaddsd %xmm2, %xmm1, %xmm9           #  1     0     4      OPC=vaddsd_xmm_xmm_xmm  
  movhlps %xmm9, %xmm1                 #  2     0x4   4      OPC=movhlps_xmm_xmm     
  callq .move_128_64_xmm2_xmm12_xmm13  #  3     0x8   5      OPC=callq_label         
  punpcklwd %xmm13, %xmm1              #  4     0xd   5      OPC=punpcklwd_xmm_xmm   
  retq                                 #  5     0x12  1      OPC=retq                
                                                                                     
.size target, .-target
