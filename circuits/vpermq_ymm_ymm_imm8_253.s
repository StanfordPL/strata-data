  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vunpckhpd %ymm2, %ymm2, %ymm7         #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm  
  vmovups %ymm7, %ymm1                  #  2     0x4   4      OPC=vmovups_ymm_ymm        
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0x8   5      OPC=callq_label            
  callq .move_64_128_xmm10_xmm11_xmm1   #  4     0xd   5      OPC=callq_label            
  retq                                  #  5     0x12  1      OPC=retq                   
                                                                                         
.size target, .-target
