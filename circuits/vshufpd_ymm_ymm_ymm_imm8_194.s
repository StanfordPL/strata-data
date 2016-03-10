  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                 #  Line  RIP   Bytes  Opcode                       
.target:                               #        0     0      OPC=<label>                  
  vpunpcklqdq %ymm3, %ymm2, %ymm1      #  1     0     4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vpor %ymm2, %ymm2, %ymm12            #  2     0x4   4      OPC=vpor_ymm_ymm_ymm         
  vfmadd132sd %xmm1, %xmm2, %xmm3      #  3     0x8   5      OPC=vfmadd132sd_xmm_xmm_xmm  
  vunpckhpd %ymm3, %ymm3, %ymm13       #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm    
  callq .move_64_128_xmm12_xmm13_xmm1  #  5     0x11  5      OPC=callq_label              
  retq                                 #  6     0x16  1      OPC=retq                     
                                                                                          
.size target, .-target
