  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  xorpd %xmm11, %xmm11         #  1     0     5      OPC=xorpd_xmm_xmm         
  vpbroadcastb %xmm11, %ymm6   #  2     0x5   5      OPC=vpbroadcastb_ymm_xmm  
  vhsubpd %xmm6, %xmm6, %xmm3  #  3     0xa   4      OPC=vhsubpd_xmm_xmm_xmm   
  movupd %xmm3, %xmm1          #  4     0xe   4      OPC=movupd_xmm_xmm        
  retq                         #  5     0x12  1      OPC=retq                  
                                                                               
.size target, .-target
