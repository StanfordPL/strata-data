  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                  
.target:                       #        0     0      OPC=<label>             
  movddup %xmm1, %xmm4         #  1     0     4      OPC=movddup_xmm_xmm     
  vpandn %xmm1, %xmm4, %xmm0   #  2     0x4   4      OPC=vpandn_xmm_xmm_xmm  
  pmovzxbd %xmm0, %xmm4        #  3     0x8   5      OPC=pmovzxbd_xmm_xmm    
  vmaxsd %xmm0, %xmm4, %xmm11  #  4     0xd   4      OPC=vmaxsd_xmm_xmm_xmm  
  pmovzxbd %xmm11, %xmm1       #  5     0x11  6      OPC=pmovzxbd_xmm_xmm    
  retq                         #  6     0x17  1      OPC=retq                
                                                                             
.size target, .-target
