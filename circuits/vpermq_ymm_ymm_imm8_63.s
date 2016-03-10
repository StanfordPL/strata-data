  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                     
.target:                                #        0     0      OPC=<label>                
  vbroadcastsd %xmm2, %ymm8             #  1     0     5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm8, %ymm2, %ymm1         #  2     0x5   5      OPC=vunpckhpd_ymm_ymm_ymm  
  callq .move_256_128_ymm1_xmm10_xmm11  #  3     0xa   5      OPC=callq_label            
  movq %xmm11, %xmm10                   #  4     0xf   5      OPC=movq_xmm_xmm           
  callq .move_64_128_xmm10_xmm11_xmm1   #  5     0x14  5      OPC=callq_label            
  retq                                  #  6     0x19  1      OPC=retq                   
                                                                                         
.size target, .-target
