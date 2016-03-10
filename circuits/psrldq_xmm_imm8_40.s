  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                          #  Line  RIP   Bytes  Opcode                   
.target:                        #        0     0      OPC=<label>              
  vmovsd %xmm1, %xmm1, %xmm11   #  1     0     4      OPC=vmovsd_xmm_xmm_xmm   
  vandnps %xmm1, %xmm1, %xmm7   #  2     0x4   4      OPC=vandnps_xmm_xmm_xmm  
  vsqrtsd %xmm7, %xmm11, %xmm8  #  3     0x8   4      OPC=vsqrtsd_xmm_xmm_xmm  
  movddup %xmm8, %xmm1          #  4     0xc   5      OPC=movddup_xmm_xmm      
  retq                          #  5     0x11  1      OPC=retq                 
                                                                               
.size target, .-target
