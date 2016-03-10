  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vmovups %xmm1, %xmm10             #  1     0     4      OPC=vmovups_xmm_xmm          
  callq .move_128_064_xmm3_r12_r13  #  2     0x4   5      OPC=callq_label              
  vorps %xmm2, %xmm2, %xmm3         #  3     0x9   4      OPC=vorps_xmm_xmm_xmm        
  callq .move_064_128_r12_r13_xmm2  #  4     0xd   5      OPC=callq_label              
  vfmadd231pd %xmm2, %xmm10, %xmm3  #  5     0x12  5      OPC=vfmadd231pd_xmm_xmm_xmm  
  vpunpcklqdq %ymm3, %ymm10, %ymm2  #  6     0x17  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  vunpckhpd %xmm10, %xmm2, %xmm1    #  7     0x1b  5      OPC=vunpckhpd_xmm_xmm_xmm    
  retq                              #  8     0x20  1      OPC=retq                     
                                                                                       
.size target, .-target
