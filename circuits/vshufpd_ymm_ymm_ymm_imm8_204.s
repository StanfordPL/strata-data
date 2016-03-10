  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                                          #  Line  RIP   Bytes  Opcode                        
.target:                                        #        0     0      OPC=<label>                   
  callq .move_128_032_xmm2_xmm4_xmm5_xmm6_xmm7  #  1     0     5      OPC=callq_label               
  vdivpd %xmm7, %xmm3, %xmm10                   #  2     0x5   4      OPC=vdivpd_xmm_xmm_xmm        
  vunpckhpd %ymm3, %ymm2, %ymm1                 #  3     0x9   4      OPC=vunpckhpd_ymm_ymm_ymm     
  vfnmsub213ss %xmm10, %xmm3, %xmm7             #  4     0xd   5      OPC=vfnmsub213ss_xmm_xmm_xmm  
  callq .move_032_128_xmm4_xmm5_xmm6_xmm7_xmm1  #  5     0x12  5      OPC=callq_label               
  punpcklqdq %xmm3, %xmm1                       #  6     0x17  4      OPC=punpcklqdq_xmm_xmm        
  retq                                          #  7     0x1b  1      OPC=retq                      
                                                                                                    
.size target, .-target
