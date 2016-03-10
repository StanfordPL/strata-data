  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                           #  Line  RIP   Bytes  Opcode                    
.target:                         #        0     0      OPC=<label>               
  vbroadcastsd %xmm1, %ymm10     #  1     0     5      OPC=vbroadcastsd_ymm_xmm  
  vpandn %xmm10, %xmm10, %xmm11  #  2     0x5   5      OPC=vpandn_xmm_xmm_xmm    
  pmovzxbd %xmm11, %xmm1         #  3     0xa   6      OPC=pmovzxbd_xmm_xmm      
  retq                           #  4     0x10  1      OPC=retq                  
                                                                                 
.size target, .-target
