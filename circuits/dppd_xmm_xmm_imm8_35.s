  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vmulpd %xmm2, %xmm1, %xmm15                   #  1     0     4      OPC=vmulpd_xmm_xmm_xmm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  pmovzxdq %xmm6, %xmm6                         #  3     0x9   5      OPC=pmovzxdq_xmm_xmm       
  addsubpd %xmm6, %xmm15                        #  4     0xe   5      OPC=addsubpd_xmm_xmm       
  vunpckhpd %ymm15, %ymm15, %ymm10              #  5     0x13  5      OPC=vunpckhpd_ymm_ymm_ymm  
  movupd %xmm10, %xmm1                          #  6     0x18  5      OPC=movupd_xmm_xmm         
  retq                                          #  7     0x1d  1      OPC=retq                   
                                                                                                 
.size target, .-target
