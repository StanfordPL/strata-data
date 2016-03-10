  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vpsubd %xmm1, %xmm1, %xmm13           #  1     0     4      OPC=vpsubd_xmm_xmm_xmm  
  vminpd %xmm13, %xmm1, %xmm0           #  2     0x4   5      OPC=vminpd_xmm_xmm_xmm  
  vmaxpd %xmm0, %xmm0, %xmm3            #  3     0x9   4      OPC=vmaxpd_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  4     0xd   5      OPC=callq_label         
  vpmovsxdq %xmm11, %xmm3               #  5     0x12  5      OPC=vpmovsxdq_xmm_xmm   
  pmovzxbq %xmm3, %xmm1                 #  6     0x17  5      OPC=pmovzxbq_xmm_xmm    
  retq                                  #  7     0x1c  1      OPC=retq                
                                                                                      
.size target, .-target
