  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovshdup %xmm2, %xmm1            #  1     0     4      OPC=vmovshdup_xmm_xmm        
  vmovddup %xmm2, %xmm3             #  2     0x4   4      OPC=vmovddup_xmm_xmm         
  vpunpckhdq %xmm2, %xmm3, %xmm11   #  3     0x8   4      OPC=vpunpckhdq_xmm_xmm_xmm   
  vpunpcklqdq %xmm11, %xmm1, %xmm1  #  4     0xc   5      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
