  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP  Bytes  Opcode                 
.target:                       #        0    0      OPC=<label>            
  vpxor %xmm14, %xmm14, %xmm5  #  1     0    5      OPC=vpxor_xmm_xmm_xmm  
  pmovzxbd %xmm5, %xmm1        #  2     0x5  5      OPC=pmovzxbd_xmm_xmm   
  retq                         #  3     0xa  1      OPC=retq               
                                                                           
.size target, .-target
