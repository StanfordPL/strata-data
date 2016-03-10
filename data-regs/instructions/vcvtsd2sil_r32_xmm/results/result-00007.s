  .text
  .globl target
  .type target, @function

#! file-offset 0
#! rip-offset  0
#! capacity    5 bytes

# Text                             #  Line  RIP   Bytes  Opcode                       
.target:                           #        0     0      OPC=<label>                  
  vmovq %xmm1, %xmm0               #  1     0     4      OPC=vmovq_xmm_xmm            
  vcvtpd2dq %ymm0, %xmm8           #  2     0x4   4      OPC=vcvtpd2dq_xmm_ymm        
  vpunpcklqdq %xmm1, %xmm8, %xmm3  #  3     0x8   4      OPC=vpunpcklqdq_xmm_xmm_xmm  
  movq %xmm3, %rbx                 #  4     0xc   5      OPC=movq_r64_xmm             
  retq                             #  5     0x11  1      OPC=retq                     
                                                                                      
.size target, .-target
