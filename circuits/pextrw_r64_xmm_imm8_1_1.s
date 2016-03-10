  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vpmovzxwq %xmm1, %xmm6            #  1     0     5      OPC=vpmovzxwq_xmm_xmm        
  vpunpckhqdq %ymm6, %ymm6, %ymm14  #  2     0x5   4      OPC=vpunpckhqdq_ymm_ymm_ymm  
  vminpd %ymm14, %ymm14, %ymm6      #  3     0x9   5      OPC=vminpd_ymm_ymm_ymm       
  vmovq %xmm6, %rbx                 #  4     0xe   5      OPC=vmovq_r64_xmm            
  retq                              #  5     0x13  1      OPC=retq                     
                                                                                       
.size target, .-target
