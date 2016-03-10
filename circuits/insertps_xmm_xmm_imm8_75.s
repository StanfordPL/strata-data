  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                   
.target:                                          #        0     0      OPC=<label>              
  vsqrtss %xmm2, %xmm1, %xmm3                     #  1     0     4      OPC=vsqrtss_xmm_xmm_xmm  
  pxor %xmm1, %xmm1                               #  2     0x4   4      OPC=pxor_xmm_xmm         
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  3     0x8   5      OPC=callq_label          
  unpcklpd %xmm10, %xmm1                          #  4     0xd   5      OPC=unpcklpd_xmm_xmm     
  retq                                            #  5     0x12  1      OPC=retq                 
                                                                                                 
.size target, .-target
