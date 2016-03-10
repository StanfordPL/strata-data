  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                   #  Line  RIP  Bytes  Opcode                
.target:                 #        0    0      OPC=<label>           
  movddup %xmm1, %xmm7   #  1     0    4      OPC=movddup_xmm_xmm   
  unpckhps %xmm1, %xmm7  #  2     0x4  3      OPC=unpckhps_xmm_xmm  
  movsldup %xmm2, %xmm1  #  3     0x7  4      OPC=movsldup_xmm_xmm  
  movsd %xmm7, %xmm1     #  4     0xb  4      OPC=movsd_xmm_xmm     
  retq                   #  5     0xf  1      OPC=retq              
                                                                    
.size target, .-target
