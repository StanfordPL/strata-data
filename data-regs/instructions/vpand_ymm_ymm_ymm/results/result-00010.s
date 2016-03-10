  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                                  #  Line  RIP  Bytes  Opcode                  
.target:                                #        0    0      OPC=<label>             
  callq .move_256_128_ymm3_xmm10_xmm11  #  1     0    5      OPC=callq_label         
  andps %xmm10, %xmm2                   #  2     0x5  4      OPC=andps_xmm_xmm       
  vandps %ymm2, %ymm3, %ymm1            #  3     0x9  4      OPC=vandps_ymm_ymm_ymm  
  retq                                  #  4     0xd  1      OPC=retq                
                                                                                     
.size target, .-target
