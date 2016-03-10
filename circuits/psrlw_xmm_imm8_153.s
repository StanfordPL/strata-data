  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP  Bytes  Opcode                       
.target:                            #        0    0      OPC=<label>                  
  vandnps %xmm1, %xmm1, %xmm10      #  1     0    4      OPC=vandnps_xmm_xmm_xmm      
  vpunpcklqdq %xmm1, %xmm10, %xmm0  #  2     0x4  4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  pmovzxwq %xmm0, %xmm1             #  3     0x8  5      OPC=pmovzxwq_xmm_xmm         
  retq                              #  4     0xd  1      OPC=retq                     
                                                                                      
.size target, .-target
