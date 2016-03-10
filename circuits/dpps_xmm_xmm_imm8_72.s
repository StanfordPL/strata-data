  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                            #  Line  RIP   Bytes  Opcode                       
.target:                                          #        0     0      OPC=<label>                  
  callq .move_128_032_xmm1_xmm8_xmm9_xmm10_xmm11  #  1     0     5      OPC=callq_label              
  vmulps %xmm2, %xmm1, %xmm0                      #  2     0x5   4      OPC=vmulps_xmm_xmm_xmm       
  vfmadd231ps %xmm9, %xmm10, %xmm0                #  3     0x9   5      OPC=vfmadd231ps_xmm_xmm_xmm  
  cvttpd2dq %xmm11, %xmm1                         #  4     0xe   5      OPC=cvttpd2dq_xmm_xmm        
  vminpd %xmm10, %xmm11, %xmm7                    #  5     0x13  5      OPC=vminpd_xmm_xmm_xmm       
  vunpckhps %ymm0, %ymm7, %ymm14                  #  6     0x18  4      OPC=vunpckhps_ymm_ymm_ymm    
  unpcklpd %xmm14, %xmm1                          #  7     0x1c  5      OPC=unpcklpd_xmm_xmm         
  retq                                            #  8     0x21  1      OPC=retq                     
                                                                                                     
.size target, .-target
