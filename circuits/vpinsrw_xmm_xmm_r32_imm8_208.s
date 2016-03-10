  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    6 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  movq %xmm2, %rdx                 #  1     0     5      OPC=movq_r64_xmm             
  xaddw %dx, %bx                   #  2     0x5   4      OPC=xaddw_r16_r16            
  movhlps %xmm2, %xmm2             #  3     0x9   3      OPC=movhlps_xmm_xmm          
  vmovq %rdx, %xmm1                #  4     0xc   5      OPC=vmovq_xmm_r64            
  vmovapd %xmm2, %xmm2             #  5     0x11  4      OPC=vmovapd_xmm_xmm          
  vpunpcklqdq %ymm2, %ymm1, %ymm1  #  6     0x15  4      OPC=vpunpcklqdq_ymm_ymm_ymm  
  retq                             #  7     0x19  1      OPC=retq                     
                                                                                      
.size target, .-target
