  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                        #  Line  RIP  Bytes  Opcode                 
.target:                      #        0    0      OPC=<label>            
  movddup %xmm2, %xmm1        #  1     0    4      OPC=movddup_xmm_xmm    
  vpxor %xmm2, %xmm1, %xmm11  #  2     0x4  4      OPC=vpxor_xmm_xmm_xmm  
  pxor %xmm11, %xmm1          #  3     0x8  5      OPC=pxor_xmm_xmm       
  retq                        #  4     0xd  1      OPC=retq               
                                                                          
.size target, .-target
