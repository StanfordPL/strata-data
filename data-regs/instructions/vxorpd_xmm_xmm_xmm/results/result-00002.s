  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP  Bytes  Opcode               
.target:                #        0    0      OPC=<label>          
  xorpd %xmm2, %xmm3    #  1     0    4      OPC=xorpd_xmm_xmm    
  vmovaps %xmm3, %xmm1  #  2     0x4  4      OPC=vmovaps_xmm_xmm  
  retq                  #  3     0x8  1      OPC=retq             
                                                                  
.size target, .-target
