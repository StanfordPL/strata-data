  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                       
.target:                                #        0     0      OPC=<label>                  
  vmovupd %ymm2, %ymm12                 #  1     0     4      OPC=vmovupd_ymm_ymm          
  vpunpckhqdq %ymm12, %ymm12, %ymm1     #  2     0x4   5      OPC=vpunpckhqdq_ymm_ymm_ymm  
  maxss %xmm1, %xmm1                    #  3     0x9   4      OPC=maxss_xmm_xmm            
  callq .move_256_128_ymm2_xmm10_xmm11  #  4     0xd   5      OPC=callq_label              
  movsd %xmm11, %xmm1                   #  5     0x12  5      OPC=movsd_xmm_xmm            
  retq                                  #  6     0x17  1      OPC=retq                     
                                                                                           
.size target, .-target
