  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP  Bytes  Opcode                 
.target:                        #        0    0      OPC=<label>            
  vpxor %xmm10, %xmm10, %xmm10  #  1     0    5      OPC=vpxor_xmm_xmm_xmm  
  vmovdqa %xmm10, %xmm6         #  2     0x5  5      OPC=vmovdqa_xmm_xmm    
  pmovzxbd %xmm6, %xmm1         #  3     0xa  5      OPC=pmovzxbd_xmm_xmm   
  retq                          #  4     0xf  1      OPC=retq               
                                                                            
.size target, .-target
