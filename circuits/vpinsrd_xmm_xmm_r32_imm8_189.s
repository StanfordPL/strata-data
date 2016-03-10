  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    7 bytes

# Text                         #  Line  RIP   Bytes  Opcode                    
.target:                       #        0     0      OPC=<label>               
  movd %ebx, %xmm1             #  1     0     4      OPC=movd_xmm_r32          
  vbroadcastss %xmm1, %xmm5    #  2     0x4   5      OPC=vbroadcastss_xmm_xmm  
  punpcklqdq %xmm2, %xmm5      #  3     0x9   4      OPC=punpcklqdq_xmm_xmm    
  vmovss %xmm2, %xmm5, %xmm11  #  4     0xd   4      OPC=vmovss_xmm_xmm_xmm    
  vmovsd %xmm11, %xmm2, %xmm1  #  5     0x11  5      OPC=vmovsd_xmm_xmm_xmm    
  retq                         #  6     0x16  1      OPC=retq                  
                                                                               
.size target, .-target
