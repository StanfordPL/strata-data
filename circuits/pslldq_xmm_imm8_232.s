  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  vpxor %xmm1, %xmm1, %xmm11  #  1     0    4      OPC=vpxor_xmm_xmm_xmm  
  pmovzxbd %xmm11, %xmm1      #  2     0x4  6      OPC=pmovzxbd_xmm_xmm   
  retq                        #  3     0xa  1      OPC=retq               
                                                                          
.size target, .-target
