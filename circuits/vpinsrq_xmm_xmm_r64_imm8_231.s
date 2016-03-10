  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vmovq %rbx, %xmm3                 #  1     0    5      OPC=vmovq_xmm_r64            
  movddup %xmm2, %xmm14             #  2     0x5  5      OPC=movddup_xmm_xmm          
  vpunpcklqdq %xmm3, %xmm14, %xmm1  #  3     0xa  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  retq                              #  4     0xe  1      OPC=retq                     
                                                                                      
.size target, .-target
