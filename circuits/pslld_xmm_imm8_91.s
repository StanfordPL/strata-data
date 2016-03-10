  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  pmovzxwd %xmm1, %xmm0  #  1     0    5      OPC=pmovzxwd_xmm_xmm  
  pmovzxbd %xmm0, %xmm1  #  2     0x5  5      OPC=pmovzxbd_xmm_xmm  
  addsubpd %xmm1, %xmm1  #  3     0xa  4      OPC=addsubpd_xmm_xmm  
  retq                   #  4     0xe  1      OPC=retq              
                                                                    
.size target, .-target
