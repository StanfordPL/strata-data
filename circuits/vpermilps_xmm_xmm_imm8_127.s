  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  movshdup %xmm2, %xmm3             #  1     0     4      OPC=movshdup_xmm_xmm         
  vpunpckhqdq %xmm3, %xmm3, %xmm11  #  2     0x4   4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vpunpckldq %xmm3, %xmm11, %xmm1   #  3     0x8   4      OPC=vpunpckldq_xmm_xmm_xmm   
  movhlps %xmm11, %xmm1             #  4     0xc   4      OPC=movhlps_xmm_xmm          
  retq                              #  5     0x10  1      OPC=retq                     
                                                                                       
.size target, .-target
