  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                            #  Line  RIP   Bytes  Opcode                     
.target:                          #        0     0      OPC=<label>                
  vpbroadcastq %xmm3, %ymm13      #  1     0     5      OPC=vpbroadcastq_ymm_xmm   
  unpckhpd %xmm2, %xmm3           #  2     0x5   4      OPC=unpckhpd_xmm_xmm       
  vbroadcastsd %xmm3, %ymm3       #  3     0x9   5      OPC=vbroadcastsd_ymm_xmm   
  vunpckhpd %ymm3, %ymm13, %ymm1  #  4     0xe   4      OPC=vunpckhpd_ymm_ymm_ymm  
  movdqa %xmm2, %xmm1             #  5     0x12  4      OPC=movdqa_xmm_xmm         
  retq                            #  6     0x16  1      OPC=retq                   
                                                                                   
.size target, .-target
