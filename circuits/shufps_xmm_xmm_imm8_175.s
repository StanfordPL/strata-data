  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovsldup %xmm2, %xmm7            #  1     0    4      OPC=vmovsldup_xmm_xmm        
  vpunpckhqdq %xmm7, %xmm1, %xmm13  #  2     0x4  4      OPC=vpunpckhqdq_xmm_xmm_xmm  
  movshdup %xmm13, %xmm1            #  3     0x8  5      OPC=movshdup_xmm_xmm         
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
