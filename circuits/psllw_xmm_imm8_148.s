  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                  
.target:                      #        0    0      OPC=<label>             
  vsubpd %xmm1, %xmm1, %xmm9  #  1     0    4      OPC=vsubpd_xmm_xmm_xmm  
  movdqa %xmm9, %xmm1         #  2     0x4  5      OPC=movdqa_xmm_xmm      
  andnps %xmm1, %xmm1         #  3     0x9  3      OPC=andnps_xmm_xmm      
  retq                        #  4     0xc  1      OPC=retq                
                                                                           
.size target, .-target
