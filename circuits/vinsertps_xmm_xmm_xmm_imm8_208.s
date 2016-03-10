  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  movups %xmm3, %xmm0               #  1     0    3      OPC=movups_xmm_xmm           
  vpunpckhqdq %xmm2, %xmm0, %xmm13  #  2     0x3  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  vmovss %xmm2, %xmm13, %xmm1       #  3     0x7  4      OPC=vmovss_xmm_xmm_xmm       
  retq                              #  4     0xb  1      OPC=retq                     
                                                                                      
.size target, .-target
