  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                     
.target:                                        #        0     0      OPC=<label>                
  vminps %ymm2, %ymm2, %ymm5                    #  1     0     4      OPC=vminps_ymm_ymm_ymm     
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  2     0x4   5      OPC=callq_label            
  punpcklqdq %xmm2, %xmm5                       #  3     0x9   4      OPC=punpcklqdq_xmm_xmm     
  vunpckhpd %ymm5, %ymm2, %ymm1                 #  4     0xd   4      OPC=vunpckhpd_ymm_ymm_ymm  
  retq                                          #  5     0x11  1      OPC=retq                   
                                                                                                 
.size target, .-target
