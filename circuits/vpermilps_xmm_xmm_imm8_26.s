  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  movsldup %xmm2, %xmm14            #  1     0    5      OPC=movsldup_xmm_xmm         
  vpunpckldq %xmm14, %xmm2, %xmm1   #  2     0x5  5      OPC=vpunpckldq_xmm_xmm_xmm   
  vpunpckhqdq %xmm1, %xmm14, %xmm1  #  3     0xa  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
