  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                    
.target:                               #        0     0      OPC=<label>               
  callq .move_128_64_xmm1_xmm10_xmm11  #  1     0     5      OPC=callq_label           
  vbroadcastsd %xmm2, %ymm12           #  2     0x5   5      OPC=vbroadcastsd_ymm_xmm  
  vmovaps %xmm12, %xmm6                #  3     0xa   5      OPC=vmovaps_xmm_xmm       
  vsqrtpd %ymm6, %ymm10                #  4     0xf   4      OPC=vsqrtpd_ymm_ymm       
  callq .move_64_128_xmm10_xmm11_xmm1  #  5     0x13  5      OPC=callq_label           
  retq                                 #  6     0x18  1      OPC=retq                  
                                                                                       
.size target, .-target
