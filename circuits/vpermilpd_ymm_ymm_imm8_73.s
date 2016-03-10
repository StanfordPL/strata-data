  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                  #  Line  RIP   Bytes  Opcode                  
.target:                                #        0     0      OPC=<label>             
  vmaxpd %ymm2, %ymm2, %ymm1            #  1     0     4      OPC=vmaxpd_ymm_ymm_ymm  
  callq .move_256_128_ymm2_xmm12_xmm13  #  2     0x4   5      OPC=callq_label         
  movddup %xmm12, %xmm7                 #  3     0x9   5      OPC=movddup_xmm_xmm     
  unpckhpd %xmm7, %xmm1                 #  4     0xe   4      OPC=unpckhpd_xmm_xmm    
  retq                                  #  5     0x12  1      OPC=retq                
                                                                                      
.size target, .-target
