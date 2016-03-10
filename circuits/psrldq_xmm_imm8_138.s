  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                     #  Line  RIP  Bytes  Opcode                  
.target:                   #        0    0      OPC=<label>             
  xorps %xmm1, %xmm1       #  1     0    3      OPC=xorps_xmm_xmm       
  vcvttpd2dq %xmm1, %xmm6  #  2     0x3  4      OPC=vcvttpd2dq_xmm_xmm  
  pmovzxbd %xmm6, %xmm1    #  3     0x7  5      OPC=pmovzxbd_xmm_xmm    
  retq                     #  4     0xc  1      OPC=retq                
                                                                        
.size target, .-target
