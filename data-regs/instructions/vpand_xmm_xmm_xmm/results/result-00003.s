  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  pandn %xmm2, %xmm3    #  1     0    4      OPC=pandn_xmm_xmm    
  xorpd %xmm2, %xmm3    #  2     0x4  4      OPC=xorpd_xmm_xmm    
  vmovdqa %xmm3, %xmm1  #  3     0x8  4      OPC=vmovdqa_xmm_xmm  
  retq                  #  4     0xc  1      OPC=retq             
                                                                  
.size target, .-target
