  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxss %xmm1, %xmm1, %xmm3            #  1     0     4      OPC=vmaxss_xmm_xmm_xmm  
  vmulsd %xmm1, %xmm3, %xmm11           #  2     0x4   4      OPC=vmulsd_xmm_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  vcvtdq2pd %ymm11, %ymm6               #  4     0xd   5      OPC=vcvtdq2pd_ymm_ymm   
  pmovzxbd %xmm6, %xmm1                 #  5     0x12  5      OPC=pmovzxbd_xmm_xmm    
  retq                                  #  6     0x17  1      OPC=retq                
                                                                                      
.size target, .-target
