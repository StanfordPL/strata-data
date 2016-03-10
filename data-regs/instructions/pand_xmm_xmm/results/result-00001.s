  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                  #  Line  RIP   Bytes  Opcode               
.target:                #        0     0      OPC=<label>          
  vmovupd %xmm2, %xmm7  #  1     0     4      OPC=vmovupd_xmm_xmm  
  xorpd %xmm1, %xmm7    #  2     0x4   4      OPC=xorpd_xmm_xmm    
  pandn %xmm1, %xmm7    #  3     0x8   4      OPC=pandn_xmm_xmm    
  movdqa %xmm7, %xmm1   #  4     0xc   4      OPC=movdqa_xmm_xmm   
  retq                  #  5     0x10  1      OPC=retq             
                                                                   
.size target, .-target
