  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  movddup %xmm2, %xmm13             #  1     0    5      OPC=movddup_xmm_xmm          
  vpunpckhqdq %xmm13, %xmm2, %xmm1  #  2     0x5  5      OPC=vpunpckhqdq_xmm_xmm_xmm  
  retq                              #  3     0xa  1      OPC=retq                     
                                                                                      
.size target, .-target
