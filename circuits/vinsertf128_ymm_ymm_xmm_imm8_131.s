  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxsd %xmm3, %xmm3, %xmm0            #  1     0     4      OPC=vmaxsd_xmm_xmm_xmm  
  callq .move_256_128_ymm2_xmm10_xmm11  #  2     0x4   5      OPC=callq_label         
  vmovapd %ymm0, %ymm11                 #  3     0x9   4      OPC=vmovapd_ymm_ymm     
  callq .move_128_256_xmm10_xmm11_ymm1  #  4     0xd   5      OPC=callq_label         
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
