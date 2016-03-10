  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  movhlps %xmm3, %xmm3                            #  1     0     3      OPC=movhlps_xmm_xmm          
  callq .move_128_032_xmm3_xmm8_xmm9_xmm10_xmm11  #  2     0x3   5      OPC=callq_label              
  vfmadd132sd %xmm11, %xmm3, %xmm11               #  3     0x8   5      OPC=vfmadd132sd_xmm_xmm_xmm  
  vunpckhpd %ymm11, %ymm2, %ymm4                  #  4     0xd   5      OPC=vunpckhpd_ymm_ymm_ymm    
  vunpcklpd %ymm3, %ymm4, %ymm1                   #  5     0x12  4      OPC=vunpcklpd_ymm_ymm_ymm    
  retq                                            #  6     0x16  1      OPC=retq                     
                                                                                                     
.size target, .-target
