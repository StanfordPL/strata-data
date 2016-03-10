  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vpbroadcastd %xmm2, %ymm6        #  1     0     5      OPC=vpbroadcastd_ymm_xmm     
  pmovzxbq %xmm6, %xmm1            #  2     0x5   5      OPC=pmovzxbq_xmm_xmm         
  vfmadd132sd %xmm2, %xmm6, %xmm1  #  3     0xa   5      OPC=vfmadd132sd_xmm_xmm_xmm  
  punpcklqdq %xmm6, %xmm2          #  4     0xf   4      OPC=punpcklqdq_xmm_xmm       
  movshdup %xmm2, %xmm1            #  5     0x13  4      OPC=movshdup_xmm_xmm         
  retq                             #  6     0x17  1      OPC=retq                     
                                                                                      
.size target, .-target
