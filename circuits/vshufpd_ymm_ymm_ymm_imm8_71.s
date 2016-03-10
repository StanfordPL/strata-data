  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                              #  Line  RIP   Bytes  Opcode                       
.target:                            #        0     0      OPC=<label>                  
  vunpckhpd %ymm2, %ymm2, %ymm11    #  1     0     4      OPC=vunpckhpd_ymm_ymm_ymm    
  vhaddps %xmm2, %xmm11, %xmm14     #  2     0x4   4      OPC=vhaddps_xmm_xmm_xmm      
  punpckhqdq %xmm14, %xmm3          #  3     0x8   5      OPC=punpckhqdq_xmm_xmm       
  vpunpcklqdq %ymm3, %ymm11, %ymm1  #  4     0xd   4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                              #  5     0x11  1      OPC=retq                     
                                                                                       
.size target, .-target
