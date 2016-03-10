  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                       #  Line  RIP  Bytes  Opcode                
.target:                     #        0    0      OPC=<label>           
  vpor %xmm1, %xmm1, %xmm12  #  1     0    4      OPC=vpor_xmm_xmm_xmm  
  movaps %xmm12, %xmm3       #  2     0x4  4      OPC=movaps_xmm_xmm    
  pandn %xmm3, %xmm1         #  3     0x8  4      OPC=pandn_xmm_xmm     
  retq                       #  4     0xc  1      OPC=retq              
                                                                        
.size target, .-target
