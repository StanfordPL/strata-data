  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                        #  Line  RIP   Bytes  Opcode                 
.target:                      #        0     0      OPC=<label>            
  movdqu %xmm1, %xmm11        #  1     0     5      OPC=movdqu_xmm_xmm     
  vpxor %xmm11, %xmm1, %xmm9  #  2     0x5   5      OPC=vpxor_xmm_xmm_xmm  
  pmovzxwd %xmm9, %xmm1       #  3     0xa   6      OPC=pmovzxwd_xmm_xmm   
  retq                        #  4     0x10  1      OPC=retq               
                                                                           
.size target, .-target
