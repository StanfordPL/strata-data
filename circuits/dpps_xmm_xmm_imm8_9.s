  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                  #  Line  RIP  Bytes  Opcode              
.target:                #        0    0      OPC=<label>         
  pxor %xmm11, %xmm11   #  1     0    5      OPC=pxor_xmm_xmm    
  movupd %xmm11, %xmm1  #  2     0x5  5      OPC=movupd_xmm_xmm  
  retq                  #  3     0xa  1      OPC=retq            
                                                                 
.size target, .-target
