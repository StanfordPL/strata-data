  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vminpd %xmm1, %xmm2, %xmm5                    #  1     0     4      OPC=vminpd_xmm_xmm_xmm     
  callq .move_128_032_xmm1_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  vmulss %xmm2, %xmm4, %xmm11                   #  3     0x9   4      OPC=vmulss_xmm_xmm_xmm     
  vcvtpd2dq %ymm11, %xmm9                       #  4     0xd   5      OPC=vcvtpd2dq_xmm_ymm      
  vhaddpd %ymm11, %ymm9, %ymm2                  #  5     0x12  5      OPC=vhaddpd_ymm_ymm_ymm    
  vunpckhps %ymm2, %ymm5, %ymm5                 #  6     0x17  4      OPC=vunpckhps_ymm_ymm_ymm  
  haddps %xmm5, %xmm2                           #  7     0x1b  4      OPC=haddps_xmm_xmm         
  movaps %xmm2, %xmm1                           #  8     0x1f  3      OPC=movaps_xmm_xmm         
  retq                                          #  9     0x22  1      OPC=retq                   
                                                                                                 
.size target, .-target
