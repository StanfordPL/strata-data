  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                 #  Line  RIP  Bytes  Opcode              
.target:               #        0    0      OPC=<label>         
  sqrtss %xmm1, %xmm1  #  1     0    4      OPC=sqrtss_xmm_xmm  
  pandn %xmm1, %xmm1   #  2     0x4  4      OPC=pandn_xmm_xmm   
  mulsd %xmm1, %xmm1   #  3     0x8  4      OPC=mulsd_xmm_xmm   
  retq                 #  4     0xc  1      OPC=retq            
                                                                
.size target, .-target
