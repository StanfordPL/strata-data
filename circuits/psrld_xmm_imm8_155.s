  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                            #  Line  RIP  Bytes  Opcode                   
.target:                          #        0    0      OPC=<label>              
  cvtps2dq %xmm1, %xmm11          #  1     0    5      OPC=cvtps2dq_xmm_xmm     
  vandnpd %xmm11, %xmm11, %xmm15  #  2     0x5  5      OPC=vandnpd_xmm_xmm_xmm  
  movq %xmm15, %xmm1              #  3     0xa  5      OPC=movq_xmm_xmm         
  retq                            #  4     0xf  1      OPC=retq                 
                                                                                
.size target, .-target
