  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmulps %xmm2, %xmm1, %xmm6            #  1     0     4      OPC=vmulps_xmm_xmm_xmm  
  vcvttpd2dq %xmm1, %xmm3               #  2     0x4   4      OPC=vcvttpd2dq_xmm_xmm  
  callq .move_256_128_ymm3_xmm10_xmm11  #  3     0x8   5      OPC=callq_label         
  vaddps %xmm11, %xmm6, %xmm8           #  4     0xd   5      OPC=vaddps_xmm_xmm_xmm  
  vmovshdup %xmm8, %xmm15               #  5     0x12  5      OPC=vmovshdup_xmm_xmm   
  movq %xmm15, %xmm1                    #  6     0x17  5      OPC=movq_xmm_xmm        
  retq                                  #  7     0x1c  1      OPC=retq                
                                                                                      
.size target, .-target
